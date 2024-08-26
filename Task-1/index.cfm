<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>RATING CHECKER</title>
</head>
<body>
    <h3>Enter a number between 1 and 5</h3>
    <form action="index.cfm" method="post" class="content">
        <label for="num">Enter any number: </label>
        <input type="text" id="num" name="ratings" min="1" max="5" required class="txt"><br><br>
        <input type="submit" name ="submit" value="submit" class="btn">
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "Component.ques1")>
        <cfset local.ratings = obj.getRating(form.ratings)>
        <h4>The output is: <cfoutput>#local.ratings#</cfoutput></h4>
    </cfif>
</body>
</html>
