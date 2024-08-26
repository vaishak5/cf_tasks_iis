<!DOCTYPE html>
<html lang="en">
<head>
    <title>Show Multiplication of Numbers with Different Functions</title>
</head>
<body>
    <h1>Displaying Multiplication of Numbers using Different Functions</h1>
    <!---cfinvoke--->
    <h2>Using cfinvoke tag</h2>
    <cfinvoke component="Component.ques15" method="multiply" returnvariable="result1">
        <cfinvokeargument name="num1" value="1">
        <cfinvokeargument name="num2" value="2">
    </cfinvoke>
    <h4>Display Result1 using cfinvoke tag: <cfoutput>#result1#</cfoutput></h4>
    <cfinvoke component="Component.ques15" method="multiply" returnvariable="result2">
        <cfinvokeargument name="num1" value="1">
        <cfinvokeargument name="num2" value="2">
        <cfinvokeargument name="num3" value="3">
    </cfinvoke>
    <h4>Display Result2 using cfinvoke tag: <cfoutput>#result2#</cfoutput></h4>
    <cfinvoke component="Component.ques15" method="multiply" returnvariable="result3">
        <cfinvokeargument name="num1" value="1">
        <cfinvokeargument name="num2" value="2">
        <cfinvokeargument name="num3" value="3">
        <cfinvokeargument name="num4" value="4">
    </cfinvoke>
    <h4>Display Result3 using cfinvoke tag: <cfoutput>#result3#</cfoutput></h4>
    <!---cfobject--->
    <h2>Using cfobject tag</h2>
    <cfobject type="component" name="ques15" component="Component.ques15">
    <cfset result4 = ques15.multiply(5, 6)>
    <h4>Display Result4 using cfobject tag: <cfoutput>#result4#</cfoutput></h4>
    <cfobject type="component" name="ques15" component="Component.ques15">
    <cfset result5 = ques15.multiply(5, 6, 7)>
    <h4>Display Result5 using cfobject tag: <cfoutput>#result5#</cfoutput></h4>
    <cfobject type="component" name="ques15" component="Component.ques15">
    <cfset result6 = ques15.multiply(5, 6, 7, 8)>
    <h4>Display Result6 using cfobject tag: <cfoutput>#result6#</cfoutput></h4>
    <!---createobject--->
    <h2>Using createobject function</h2>
    <cfset ques15 = createObject("component", "Component.ques15")>
    <cfset result7 = ques15.multiply(9, 10)>
    <h4>Display Result7 using create object:<cfoutput>#result7#</cfoutput></h4>
    <cfset result8 = ques15.multiply(9, 10, 11)>
    <h4>Display Result8 using create object:<cfoutput>#result8#</cfoutput></h4>
    <cfset result9 = ques15.multiply(9,10, 11, 12)>
    <h4>Display Result9 using create object:<cfoutput>#result9#</cfoutput></h4>
</body>
</html>