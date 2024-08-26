<!DOCTYPE html>
<html lang="en">
<head>
    <title>Page Validation</title>
    <link rel="stylesheet" href="./Style/ques17.css">
    <script src="./script/ques17.js"></script>
</head>
<body>
    <h2>Page Validation using JavaScript</h2>
    <form name="checkForm" action="" method="post" onsubmit="validation()">
        <label for="value">Enter the input:</label>
        <input type="text" name="value" id="value" rquired><br><br>
        <input type="submit" name="submit" value="Submit" id="sub"><br>
    </form>
    <cfif structKeyExists(form, "value")>
        <cfset obj = createObject("component", "Component.ques17")>
        <cfset local.value = obj.getRating(form.value)>
        <cfoutput>#local.value#</cfoutput>
    </cfif>
    
</body>
</html>