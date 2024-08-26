<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Page</title>
    <link rel="stylesheet" href="./style/addDatas.css">
    <link rel="stylesheet" href="./style/adminList.css">
    <script src="./script/sourceFirst.js"></script>
    <script src="./script/sourceSecond.js"></script>
    <script src="./script/sourceThird.js"></script>
    <script src="./script/jquery.min.js"></script>
    <script src="./script/jquery-ui.min.js"></script>
    <script src="./script/signup.js"></script>
    <script src="./script/cancel.js"></script>
</head>
<body>
<cfif session.login>
    <div class="header">
        <div class="headerFirst">
            <p class="siteName">TECHFLICK</p>
            <a href="homePage.cfm">Home Page</a>
            <a href="adminList.cfm">View List</a>
        </div>
        <div class="headerSecond">
            <p>Hello Admin!!!</p>
            <a href="index.cfm">Log Out</a>
        </div>
    </div>
    <h2>Add Datas Page</h2>
    <div class="datasSet">
        <form id="myForm">
            <div class="dataFt">
                <label for="page">Title</label>
                <input type="text" name="page" id="page"><br><br>
            </div>
            <div class="dataSnd">
                <label for="desc">Description</label>
                <textarea id="desc" name="desc" rows="3" cols="21"></textarea><br><br>
            </div>
            <div class="btnSet">
                <input type="button" value="ADD" class="btns" id="adding">
                <input type="button" value="CANCEL" class="btns" onclick="myFunction()">
            </div>
        </form>
    </div>
    <cfelse>
        <cflocation url="index.cfm">
    </cfif>

</body>
</html>

