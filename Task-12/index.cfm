<!DOCTYPE html>
<html lang="en">
<head>
    <title>Name List</title>
</head>
<body>
    <h2>Data from table</h2>
    <form action="index.cfm" method="post">
        <label for="num">Enter the input value:</label>
        <input type="text" id="num" name="num" required><br><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques12")>
        <cfset result = obj.getIdentify(form.num)>
        <cfoutput>
            <p>#num#th Row First Name Is: #result#</p>
        </cfoutput>
    </cfif>
</body>
</html>
