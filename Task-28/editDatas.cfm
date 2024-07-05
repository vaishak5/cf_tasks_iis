<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Page</title>
    <link rel="stylesheet" href="./style/addDatas.css">
    <link rel="stylesheet" href="./style/adminList.css">
    <script src="./script/sourceFirst.js"></script>
    <script src="./script/sourceSecond.js"></script>
    <script src="./script/sourceThird.js"></script>
    <script src="./script/jquery.min.js"></script>
    <script src="./script/jquery-ui.min.js"></script>
    <script src="./script/signup.js"></script>
</head>
<body>
<cfif session.login>
    <cfset local.obj = createObject("component", "Component.signup")>
    <cfparam name="url.id" default="">
    <cfif structKeyExists(form, "page") and structKeyExists(form, "desc")>
        <cfset local.editDatas = local.obj.getEditDatas(url.id, form.page, form.desc)>
    <cfelse>
        <cfset local.editDatas = local.obj.getEditDatas(url.id)>
    </cfif>
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
    <h2>Edit Datas Page</h2>
    <div class="datasSet">
        <form id="datas" action="adminList.cfm" method="post">
            <div class="dataFt">
                <label for="page">Title</label>
                <input type="text" name="page" id="page" value="<cfoutput>#local.editDatas.page#</cfoutput>"><br><br>
            </div>
            <div class="dataSnd">
                <label for="desc">Description</label>
                <textarea id="desc" name="desc" rows="3" cols="21"><cfoutput>#local.editDatas.desc#</cfoutput></textarea><br><br>
            </div>
            <div class="btnSet">
                <button type="submit" class="editBtn"  data-id="<cfoutput>#local.editDatas.pageId#</cfoutput>" style="cursor:pointer;">SAVE</button>
                <input type="button" value="CANCEL" class="btns">
            </div>
        </form>
    </div>
    <cfelse>
        <cflocation  url="index.cfm">
    </cfif> 
</body>
</html>
