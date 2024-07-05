<!DOCTYPE html>
<html lang="en">
<head>
    <title>ColdFusion Cookies</title>
</head>
<body>
    <h2>ColdFusion Cookies</h2>
    <form action="index.cfm" method="post">
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfoutput>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques19")>
        <cfset local.result = obj.getIdentify()>
        <p>Visit Counter: #local.result#</p>
    </cfif>
    </cfoutput>
</body>
</html>
