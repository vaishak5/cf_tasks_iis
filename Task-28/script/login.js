$(document).ready(function(){
    $("#submitClick").on("click", function () {
        var username=$("#username").val().trim();
        var password=$("#password").val().trim();
        if(signValidate()){
            $.ajax({
                type: "POST",
                url: "./Component/signup.cfc?method=signupUpload",
                datatype: "text",
                data: {username:username,
                    password: password
                },
                success: function(response) {
                    console.log(response);
                    if (response === "true") {
                        alert("Form submitted successfully!");
                        window.location.href = "./loginPage.cfm";
                    } else if (response === "false") { 
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
});
function signValidate(){
    var username=$("#username").val().trim();
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