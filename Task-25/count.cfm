<!DOCTYPE html>
<html lang="en">
<head>
    <title>Word Count</title>
</head>
<body>
<h2>Records and Counts</h2>
<form action="count.cfm" method="post">
    <label for="text">Enter the text:</label><br>
    <textarea name="text"  required></textarea><br>
    <input type="submit"  name="submit" value="Submit">
</form>
<cfoutput>
<cfif StructKeyExists(form, "submit")>
        <cfset obj=createObject("component","Component.ques25")>
        <cfset local.result=obj.getCounts(form.text)>
        
            <table>
                <tr>
                    <th>Records</th>
                    <th>Counts</th>
                    
                </tr>
                <cfloop array="#local.result#" index="word">
                    <tr>                
                        <th>#word[2]#</th>
                        <th>#word[1]#</th>                                    
                        
                    </tr> 
                </cfloop>
            </table>
       
    </cfif>
</cfoutput>
</body>
</html>