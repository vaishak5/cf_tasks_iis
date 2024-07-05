<!DOCTYPE html>
<html lang="en">
<head>
    <title>Word Color Page</title>
</head>
<body>
<h2>Word Color Page</h2>
<form action="wordColor.cfm" method="post">
        <label for="text">Enter the text:</label><br>
        <textarea name="text"></textarea><br>
        <input type="submit" name="submit" value="Submit">
</form>
<cfif structKeyExists(form, "submit")>
    <cfset obj=createObject("component","Component.ques25")>
    <cfset local.result=obj.getWordColor(form.text)>
    <cfoutput>
        <table>
            <tr>
                <th>Records</th>
                <th>Counts</th>
            </tr>
            <cfloop array="#local.result#" index="word">
                <tr>
                    <th>
                        <p style="font-size:#word.fontSize#px; color:#word.color#;">#word.word[2]#
                    </th>               
                    <th>
                        <p style="font-size:#word.fontSize#px; color:#word.color#;">#word.word[1]#
                    </th>
                </tr>
            </cfloop>
        </table>
    </cfoutput>
</cfif>
</body>
</html>