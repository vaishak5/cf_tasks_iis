<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin's ViewList</title>
    <link rel="stylesheet" href="./style/adminList.css">
    <link rel="stylesheet" href="./style/bootstrap.min.css">
</head>
<body>
<cfif session.login>
    <cfset local.obj = createObject("component", "Component.signup")>
    <cfset local.userDisplay = local.obj.userPageDetails()>
    <div class="header">
        <div class="headerFirst">
            <p class="siteName">TECHFLICK</p>
            <a href="homePage.cfm">Home Page</a>
            <a href="adminList.cfm">View List</a>
        </div>
        <div class="headerSecond">
            <p>Hello User!!!</p>
            <a href="index.cfm">Log Out</a>
        </div>
    </div>
    <div class="tableStyle d-flex align-items-center justify-content-center">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="titleValues" scope="col"><h5><b>Title</b></h5></th>
                    <th class="titleValues" scope="col"><h5><b>Description</b></h5></th>
                </tr>
            </thead>
            <tbody>
                <cfloop query="local.userDisplay">
                    <tr class="tableRow" id="#url.id#">
                        <td class="titleValues">#local.userDisplay.pageName#</td>
                        <td class="descValues">#local.userDisplay.pageDesc#</td>
                    </tr>
                </cfloop>
            </tbody>
        </table>
    </div>
<cfelse>
    <cflocation  url="index.cfm">
</cfif> 
</body>
</html>
</cfoutput>