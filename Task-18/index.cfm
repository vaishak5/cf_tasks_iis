<!DOCTYPE html>
<html>
<head>
    <title>Data Tables</title>
</head>
<body>
    <h2>Data variables without using cfquery</h2>
    <cfset local.obj = createObject("component", "Component.ques18")>
    <cfoutput>#local.obj.datas()#</cfoutput>
</body>
</html>