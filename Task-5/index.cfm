<!DOCTYPE html>
<html>
<head>
    <title>Date of Birth</title>
</head>
<body>
    <h2>User and Mother's Date of Birth</h2>
    <form method="post">
        <label for="userDOB">User's Date of Birth:</label>
        <input type="date" name="userDOB" id="userDOB" required><br>
        <label for="motherDOB">Mother's Date of Birth:</label>
        <input type="date" name="motherDOB" id="motherDOB" required><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "submit") and structKeyExists(form, "userDOB") and structKeyExists(form, "motherDOB")>
        <cfset ageBoth = createObject("component", "Component.ques5")>
        <cfset local.result = ageBoth.calculateAges(form.userDOB, form.motherDOB)>
        <h2>Results:</h2>
        <cfoutput><h2>User's Age : #local.result.userAge# years</h2></cfoutput>
        <cfoutput><h2>Mother's Age Now : #local.result.motherAge# years</h2></cfoutput>
        <cfoutput><h2>Mother's Age when User Born : #local.result.userBirthMotherAge# years</h2></cfoutput>
        <cfoutput><h2>Your Birthday will be in : #local.result.bDay# days</h2></cfoutput>
        <cfoutput><h2>Your Mother's Birthday will be in : #local.result.bDayM# days</h2></cfoutput>

    </cfif>
</body>
</html>