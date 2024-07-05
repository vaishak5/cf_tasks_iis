$(document).ready(function () {
    $("#submitBtn").on("click", function (event) {
        var firstField = $("#selectConts").val().trim();
        var textBoxFt = $("#textBoxSnd").val().trim();
        var textBoxSnd = $("#textBoxFt").val().trim();
        var textBoxThd = $("#textBoxThd").val().trim();
        var year =  textBoxSnd+"/"+textBoxFt +"/"+textBoxThd;
        var url = $("#urlCont").val().trim();
        var firstName = $("#firstname").val().trim();
        var lastName = $("#lastname").val().trim();
        var email = $("#email").val().trim();
        var phoneFt = $("#phoneFt").val().trim();
        var phoneSnd = $("#phoneSnd").val().trim();
        var phoneThd = $("#phoneThd").val().trim();
        var phone = phoneFt + phoneSnd + phoneThd;
        if(validateForm()){
            $.ajax({
                type: "POST",
                url: "./Component/ques23.cfc?method=formUpload",
                datatype: "JSON",
                data: {firstField: firstField,
                    year: year,
                    url: url,
                    firstName: firstName,
                    lastName: lastName,
                    email: email,
                    phone: phone,
                },
                success: function(response) {
                    alert("Form submitted successfully!");
                },
                error: function(xhr, status, error) {
                    console.error(xhr.responseText);
                    alert("An error occurred while submitting the form. Please try again.");
                }
            });
        }
        return false;
    });
    $(function () {
		$("#textBoxThd").datepicker({
			dateFormat: "yy-mm-dd",
			showOn: "button",
			buttonText: "<img src='./Assets/datePicker.png' alt='CalendarImg' class='calendarIcon'>",
			buttonImageOnly: true,
			buttonImage: "./Assets/datePicker.png",
			onSelect: function (dateText, inst) {
				var selectedDate = $(this).datepicker('getDate');
				if (selectedDate != null) {
					var month = selectedDate.getMonth() + 1;
					var day = selectedDate.getDate();
					var year = selectedDate.getFullYear();
					$('.dateInputOne').eq(0).val(month);
					$('.dateInputOne').eq(1).val(day);
					$('.dateInputTwo').val(year);
				}
			}
		});
	});
    $('.dateInputTwo').click(function (event) {
		event.preventDefault();
	});

	$('.calendarIcon').click(function () {
		$("#textBoxThd").datepicker("show");
	});
    function validateForm() {
        var firstField = $("#selectConts").val().trim();
        var textBoxFt = $("#textBoxFt").val().trim();
        var textBoxSnd = $("#textBoxSnd").val().trim();
        var textBoxThd = $("#textBoxThd").val().trim();
        var year = textBoxFt + textBoxSnd + textBoxThd;
        var url = $("#urlCont").val().trim();
        var firstName = $("#firstname").val().trim();
        var lastName = $("#lastname").val().trim();
        var email = $("#email").val().trim();
        var phoneFt = $("#phoneFt").val().trim();
        var phoneSnd = $("#phoneSnd").val().trim();
        var phoneThd = $("#phoneThd").val().trim();
        var phone = phoneFt + phoneSnd + phoneThd;
        $(".error").hide();
        var isValid = true;
        if(firstField===""){
            $("#fieldError").html("This field is required. Please enter a value.");
            $(".errorContainer").css("background-color", "#ffdfdf");
            $("#fieldError").show();
            isValid = false;
        } 
        else {
            $(".errorContainer").css("background-color", "white");
            $("#fieldError").hide();
        }
        if (year === "") {
            $("#monthError").html("This field is required. Please enter a value.");
            $(".errorContainerSd").css("background-color", "#ffdfdf");
            $("#monthError").show();
            isValid = false;
        } else {
            $(".errorContainerSd").css("background-color", "white");
            $("#monthError").hide();
        }
        if(!/^http:\/\/\w+\.\w{2,3}$/.test(url) || url === ""){
            $("#urlError").html("This field is required. Please enter a value.");
            $(".errorContainerThd").css("background-color", "#ffdfdf");
            $("#urlError").show();
            isValid = false;
        } else {
            $(".errorContainerThd").css("background-color", "white");
            $("#urlError").hide();
        }
        if (firstName === "" || lastName === "") {
            $("#nameError").html("This field is required. Please enter a value.");
            $(".errorContainerForth").css("background-color", "#ffdfdf");
            $("#nameError").show();
            isValid = false;
        } else {
            $(".errorContainerForth").css("background-color", "white");
            $("#nameError").hide();
        }
        if(!(/\S+@\S+\.\S+/.test(email)) || email === ""){
            $("#emailError").html("This field is required. Please enter a value.");
            $(".errorContainerFifth").css("background-color", "#ffdfdf");
            $("#emailError").show();
            isValid = false;
        } else {
            $(".errorContainerFifth").css("background-color", "white");
            $("#emailError").hide();

        }
        if(!(/^\d{10}$/.test(phone)) || phone === ""){
            $("#mobileError").html("This field is required. Please enter a value.");
            $(".errorContainerSixth").css("background-color", "#ffdfdf");
            $("#mobileError").show();
            isValid = false;
        } else {
            $(".errorContainerSixth").css("background-color", "white");
            $("#mobileError").hide();
        }
        if(!isValid){
            event.preventDefault();
            $(".errorTxt").show();
            return false;
        }
        else{
            $(".errorTxt").hide();
        }
    return true;
    }
});



