<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>List Page</title>
    <link rel="stylesheet" href="./Assets/css/style.css">
</head>
<body>
    <h2>List Page</h2>
    <cfset local.getImg = url.listPage>
    <cfset obj=createObject("component", "Component.ques14").getValue(local.getImg)>
    <a href="ques14displayPage.cfm?displayDetails=#local.getImg#">#obj.ImageName#</a>
    <img class="imgSize" src="./Assets/#obj.Images#">
</body>
</html>
</cfoutput>
