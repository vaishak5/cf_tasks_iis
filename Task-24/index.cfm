<!DOCTYPE html>
<html lang="en">
<head>
    <title>Subscribe Form</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="./Script/ques24.js"></script>
</head>
<body>
    <h2>SUBSCRIBER FORM</h2>
    <form id="subscribeForm" action="" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <button type="button" id="checkEmail">Check</button><br><br>
        <button type="submit" id="submitBtn" disabled>Subscribe</button>
    </form>
</body>
</html>



