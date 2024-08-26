<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index Page</title>
</head>
<body>
    <h2>Index Page</h2>
    <form action="index.cfm" method="post">
        <label for="text">Enter the text</label><br>
        <textarea id="textArea" name="text" rows="2" cols="20"></textarea><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfoutput>
    <cfif structKeyExists(form, "submit")>
        <cfset obj=createObject("component", "Component.ques25")>
        <cfset local.result=obj.getIdentify(form.text)>
        <h4>#local.result#</h4>
    </cfif>
    </cfoutput>
</body>
</html>