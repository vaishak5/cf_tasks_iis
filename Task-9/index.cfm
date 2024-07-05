<cfapplication name="myData" sessionmanagement="true">
<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Entering Keys and Values</title>
   </head>
   <body>
      <h2>Enter some values</h2>
      <cfif not structKeyExists(session, "struct")>
          <cfset session.struct = structNew()>
      </cfif>
      <form action="index.cfm" method="post">
            <label for="name">Enter any Key:</label>
            <input type="text" id="name" name="key" required><br><br>
            <label for="value">Enter any Value:</label>
            <input type="text" id="value" name="value" required><br><br>
            <input type="submit"  name="submit" value="Submit" ><br>
        </form><br>
        <cfif structKeyExists(form, "submit")>
            <cfset obj=createObject("component","Component.ques9")>
            <cfset local.result=obj.getIdentify(form.key,form.value)>
            <cfdump  var="#session.struct#">
      </cfif>
   </body>
</html>