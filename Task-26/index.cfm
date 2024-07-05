<!DOCTYPE html>
<html lang="en">
<head>
    <title>Read Text File</title>
</head>
<body>
    <h2>Read Text File</h2>
    <form action="index.cfm" method="post" enctype="multipart/form-data">
        <label for="myFile">Select a File:</label>
        <input type="file" name="myFile" id="myFile"><br><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfoutput>
        <cfif structKeyExists(form, "submit")>
            <cfset obj=createObject("component","Component.ques26")>
            <cfset local.result=obj.getTxt(form.myFile)>
            <h4>#local.result#</h4>
        </cfif>
    </cfoutput>
</body>
</html>