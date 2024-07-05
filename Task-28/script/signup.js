$(document).ready(function(){
    $("#submitClick").on("click", function () {
        var username=$("#username").val().trim();
        var roleSet=$("#role").val().trim();
        var password=$("#password").val().trim();
        if(signValidate()){
            $.ajax({
                type: "POST",
                url: "./Component/signup.cfc?method=signupUpload",
                datatype: "text",
                data: {username:username,
                    roleSet: roleSet,
                    password: password
                },
                success: function(response) {
                    if (response === true) {
                        alert("Form submitted successfully!");
                        window.location.href = "./loginPage.cfm";
                    } else if (response === false) { 
                        alert("Username already exists!");
                    }
                },
                error: function(xhr, status, error) { 
                    console.error(error);
                    alert("An error occurred while submitting the form. Please try again.");
                }
            });
        }
        return false;
    });

    $("#loginBtn").on("click", function () {
        var username=$("#username").val().trim();
        var password=$("#password").val().trim();
        if(username==""|| password==""){
            alert("Invalid username or Password!");
        }
        else{
            $.ajax({
                type: "POST",
                url: "./Component/signup.cfc?method=checkLogin",
                datatype: "text",
                data: {username:username,
                    password: password
                },
                success: function(response) {
                    if (response === "true") {
                        alert("Login Successfully!!!")
                        window.location.href = "./homePage.cfm";
                    } else  { 
                        alert("User Not Found!!!");
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    alert("An error occurred while submitting the form. Please try again.");
                }
            });
        }
    });
    $("#adding").on("click", function (){
        var pageName=$("#page").val().trim();
        var pageDesc=$("#desc").val().trim();
        if(pageName==""|| pageDesc==""){
            alert("Plz enter any values in the fields!!");
        }
        else{
            $.ajax({
                type:"POST",
                url:"./Component/signup.cfc?method=addDetails",
                datatype: "text",
                data: {pageName:pageName,
                    pageDesc: pageDesc
                },
                success: function(response) {
                    if (response === "true") {
                        alert("Datas added!!");
                        window.location.reload();
                    } else if (response === "false" ) { 
                        alert("Datas already entered");
                        window.location.reload();
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    alert("An error occurred while submitting the form. Please try again.");
                }

            });
        }

    });

    $(".editBtn").click(function () {
        var pageId = $(this).attr("data-id");
        var pageName = $("#page").val().trim();
        var pageDesc = $("#desc").val().trim();
        if(pageName==""|| pageDesc==""){
            alert("Plz enter any values in the fields!!");
        }
        else{
            $.ajax({
                type: "POST",
                url: "./Component/signup.cfc?method=updateData",
                dataType: "text",
                data: {
                    pageId: pageId,
                    pageName: pageName,
                    pageDesc: pageDesc
                },
                success: function(response) {
                    if (response === result) {
                        var editedRow = $("#" + pageId);//select the row elements with id(pageId) attribute
                        editedRow.find(".titleValues").text(pageName);
                        editedRow.find(".descValues").text(pageDesc);
                        alert("Data edited!!");
                    } else {
                        alert("Failed to edit data. Please try again.");
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    alert("An error occurred while submitting the form. Please try again.");
                }
            });
        }
    });
    
    
    $(".deleting").click( function () {
        var pageId = $(this).attr("data-id");
        var deleting=$(this);
        $.ajax({
            type: "POST",
            url: './Component/signup.cfc?method=deleteDatas',
            dataType: "text",
            data: { pageId: pageId },
            success: function(response) {
                alert("Data is deleted successfully!!");
                $(deleting).parents("tr").remove();//remove previous row element datas
    
            },
            error: function(xhr, status, error) {
                console.error(error);
                alert("Error deleting record.");
            }
        });
    });
});
function signValidate(){
    var username=$("#username").val().trim();
    var roleSet=$("#role").val().trim();
    var password=$("#password").val().trim();
    var confirmPassword=$("#confirmPassword").val().trim();
    $(".error").hide();
    var isValid = true;
    if(username=="" && roleSet=="" && password=="" && confirmPassword==""){
        $("#usernameError").html("This field is required. Please enter a value.").css("color","red");
        $("#usernameError").show();
        $("#roleError").html("This field is required. Please enter a value.").css("color","red");
        $("#roleError").show();
        $("#passwordError").html("This field is required. Please enter a value.").css("color","red");
        $("#passwordError").show();
        $("#confirmError").html("This field is required. Please enter a value.").css("color","red");
        $("#confirmError").show();
        isValid = false;
    } else {
        if(username == "" || !(/\S+@\S+\.\S+/.test(username))){
            $("#usernameError").html("Please enter a valid Username.").css("color","red");
            $("#usernameError").show();
            isValid = false;
        }
        if(roleSet===""){
            $("#roleError").html("This field is required. Please enter a value.").css("color","red");
            $("#roleError").show();
            isValid = false;
        }
        if(password===""){
            $("#passwordError").html("This field is required. Please enter a value.").css("color","red");
            $("#passwordError").show();
            isValid = false;
        } else if (!isValidPassword(password)) {
            $("#passwordError").html("Password must contain all kind of formats!").css("color","red");
            $("#passwordError").show();
            isValid = false;
        }
        if(confirmPassword===""){
            $("#confirmError").html("This field is required. Please enter a value.").css("color","red");
            $("#confirmError").show();
            isValid = false;
        } else if (password != confirmPassword){
            $("#confirmError").html("Please enter correct password").css("color","red");
            $("#confirmError").show();
            isValid = false;
        }
    }
    if(isValid){
        return true;
    }
    return false;
}
function isValidPassword(password) {
    var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
    return passwordRegex.test(password);
}
