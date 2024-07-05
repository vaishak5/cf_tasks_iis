<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="./style/loginPage.css">
    <script src="./script/sourceFirst.js"></script>
    <script src="./script/sourceSecond.js"></script>
    <script src="./script/sourceThird.js"></script>
    <script src="./script/jquery.min.js"></script>
    <script src="./script/jquery-ui.min.js"></script>
    <script src="./script/cancel.js"></script>
    <script src="./script/signup.js"></script>
</head>
<body>
<cfif session.login>
    <cflocation url="homePage.cfm">
     <cfelse>
        <div class="loginDetails">
            <div class="loginContents">
                <h2>Login</h2>
                <img src="./assets/loginLogo.png" alt="img">
                <form id="myForm">
                    <input type="text" id="username" name="userName" placeholder="Enter the UserName"><br><br>
                    <input type="password" id="password" name="password" placeholder="Enter the Password">
                </form>
                <div class="btnCont">
                    <input type="button" class="submitBtn" id="loginBtn" value="Submit">
                    <input type="button" class="cancelBtn" value="Cancel" onclick="myFunction()">
                </div>
                <div class="signup">
                    <p class="notTxt">Not a Member? <a href="signupPage.cfm">Sign Up Now</a></p>
                </div>
            </div>
        </div>
    </cfif>
</body>
</html>