$(document).ready(function() {
    $('#checkEmail').click(function() {
        var name = $('#firstName').val(); 
        var email = $('#email').val();
        if (name.trim() === '' || email.trim() === '') {
            alert('Please Enter values in all Fields!..');
            return;
        }
        $.ajax({
            url: 'Component/ques24.cfc?method=mailCheck',
            type: 'post',
            data: {name: name, email: email}, 
            dataType: "text",
            success: function(response) {
                if (response === "true") {
                    alert('Email id is Already Subscribed');
                    $('#submitBtn').prop('disabled',true);
                } else {
                    alert('Email id is not Subscribed Yet. Click the Submit button to Subscribe');
                    $('#submitBtn').prop('disabled',false);
                    
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred : " +error);
            }
        });
    });
    $('#submitBtn').click(function() {
        var name = $('#firstName').val(); 
        var email = $('#email').val();
        $.ajax({
            url: 'Component/ques24.cfc?method=uploadMail',
            type: 'post',
            data: {name: name, email: email}, 
            dataType: "text",
            
            success: function(response) {
                if (response === "true") {
                    alert('Email id Subscribed Successfully');
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred : " +error);
            }
        });
    });
});
