<!DOCTYPE html>
<html lang="en">
<head>
    <title>Multiplication of Numbers</title>
</head>
<body>
    <h2>Displaying the given values using "multiply" function</h2>
    <cfset ques11 = createObject("component", "Component.ques11")>
    <cfset numbers1 = [1,2]>
    <cfset res1 = ques11.multiply(numbers1)>
    <cfdump var="#res1#">
    <h4>Multiply[1,2]: <cfoutput>#res1#</cfoutput></h4>
    <cfset numbers2 = [1,2,3]>
    <cfset res2 = ques11.multiply(numbers2)>
    <cfdump var="#res2#">
    <h4>Multiply[1,2,3]: <cfoutput>#res2#</cfoutput></h4><br>
    <cfset numbers3 = [1,2,3,4]>
    <cfset res3 = ques11.multiply(numbers3)>
    <cfdump var="#res3#">
    <h4>Multiply[1,2,3,4]: <cfoutput>#res3#</cfoutput></h4>
</body>
</html>