<cfoutput>
<cfapplication name="userLogin" sessionmanagement="true">
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login Page</h2>
    <cfif structKeyExists(session, "login") AND session.login>
        <cflocation url="welcome.cfm" addtoken="false">
    <cfelse>
        <form method="post" action="" name="checkForm" >
            <label for="email">Enter the user name:</label>
            <input type="email" name="email" id="email" ><br><br>
            <label for="password">Enter the password:</label>
            <input type="password" name="password" id="password" ><br><br>
            <input type="submit" name="submit" value="Submit">
        </form>
        <cfif structKeyExists(form, "submit")>
            <cfset obj = createObject("component", "Component.ques27")>
            <cfset local.result = obj.getIdentify(form.email, form.password)>
            <cfif arrayLen(local.result) EQ 0>
                <cfset session.login = true>
                <cflocation url="welcome.cfm" addtoken="false">
            <cfelse>
                <cfoutput><cfloop array="#local.result#" index="error"><h4>#error#</h4></cfloop>
                </cfoutput>
            </cfif>
        </cfif>
    </cfif>
</body>
</html>
</cfoutput>
