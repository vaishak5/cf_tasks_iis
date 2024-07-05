<!DOCTYPE html>
<html lang="en">
<head>
    <title>Entering Values</title>
</head>
<body>
    <h2>Entering some Values</h2>
    <form action="index.cfm" method="post">
        <label for="key">Enter any Key:</label>
        <input type="text" id="key" name="key"><br><br>
        <label for="value">Enter any Value:</label>
        <input type="text" id="value" name="value"><br><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form><br>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques6")>
        <cfset local.result = obj.getIdentify(form.key, form.value)>
    </cfif>
</body>
</html>