<!DOCTYPE html>
<html lang="en">
<head>
    <title>Highlight search keyword</title>
</head>
<body>
    <h2>Highlight search keyword</h2>
    <form action="index.cfm" method="post">
        <label for="value">Enter the input</label>
        <input type="text" name="value" required><br><br>
        <input type="submit" name="submit" value="Submit"><br><br>
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques13")>
        <cfset keyword = (form.value)>
        <cfset result = obj.search("the quick brown fox jumps over the lazy dog", keyword)>
        <cfoutput>#result#</cfoutput>
    </cfif>
</body>
</html>