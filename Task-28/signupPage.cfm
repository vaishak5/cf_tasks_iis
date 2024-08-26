<!DOCTYPE html>
<html lang="en">
<head>
    <title>SignUp Page</title>
    <link rel="stylesheet" href="./style/signupPage.css">
    <link rel="stylesheet" href="./style/jquery-ui.css">
    <script src="./script/sourceFirst.js"></script>
    <script src="./script/sourceSecond.js"></script>
    <script src="./script/sourceThird.js"></script>
    <script src="./script/jquery.min.js"></script>
    <script src="./script/jquery-ui.min.js"></script>
    <script src="./script/signup.js"></script>
</head>
<body>
    <cfif session.login>
        <cflocation url="index.cfm">
    <cfelse>
        <div class="loginDetails">
            <div class="loginContents">
                <h2>Sign Up</h2>
                <form class="details" id="formSubmit">
                    <input type="email" id="username" name="userName" placeholder="Enter the UserName">
                    <span id="usernameError" class="error"></span>
                    <label for="role">Select a role</label>
                    <select name="role" id="role">
                        <option value selected="selected"></option>
                        <option value="admin">Admin</option>
                        <option value="editor">Editor</option>
                        <option value="user">User</option>
                    </select>
                    <span id="roleError" class="error"></span>
                    <input type="password" id="password" name="password" placeholder="Enter the Password">
                    <span id="passwordError" class="error"></span>
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Cofirm Password">
                    <span id="confirmError" class="error"></span>
                    <div class="btnCont">
                        <input type="button" class="submitBtn" id="submitClick" value="Submit">
                        <input type="button" class="cancelBtn" value="Cancel">
                    </div>
                </form>
                <div class="signup">
                    <p class="notTxt">Already have an account? <a href="index.cfm">Login Here</a></p>
                </div>
            </div>
        </div>
    </cfif>
</body>
</html>