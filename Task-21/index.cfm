<!DOCTYPE html>
<html lang="en">
<head>
    <title>Birthday wishes page</title>
</head>
<body>
    <h2>Birthday wishes page</h2>
    <form action="" method="post" enctype="multipart/form-data">
        <label for="babyName">Birthday Baby Name:</label>
        <input type="text" name="babyName" id="babyName" required><br><br>
        <label for="emailId">User Email Id:</label>
        <input type="text" name="emailId" id="emailId" required><br><br>
        <label for="bdayWish">Birthday wishes:</label>
        <textarea name="bdayWish" id="bdayWish" rows="4" cols="50"></textarea><br><br>
        <label for="greetingImg">Greeting Image</label>
        <input type="file" name="greetingImg" accept="image/jpeg,image/png,image/gif" id="greetingImg"><br><br>
        <input type="submit" name="submit" value="Submit"><br><br>
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj=createObject("component","Component.ques21")>
        <cfset local.result=obj.getDetails(form.babyName,form.emailId,form.bdayWish,form.greetingImg)>
        <cfoutput>#local.result#</cfoutput>
        
    </cfif>
</body>
</html>
