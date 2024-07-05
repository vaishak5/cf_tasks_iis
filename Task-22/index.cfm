<!DOCTYPE html>
<html lang="en">
<head>
    <title>JSON Information</title>
    <link rel="stylesheet" href="./Style/style.css">
</head>
<body>
    <h2>JSON Information Into Table Format</h2>
    <table border="1" class="table">
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Location</th>
        </tr>
        <cfset obj = createObject("component", "Component.ques22")>
        <cfset jsonData = obj.getData()>
        <cfset data = deserializeJSON(jsonData)>
        <cfoutput>
            <cfloop array="#data#" index="datas">
                <tr>
                    <td>#datas.Name#</td>
                    <td>#datas.Age#</td>
                    <td>#datas.LOCATION#</td>
                </tr>
            </cfloop>
        </cfoutput>
    </table>
</body>
</html>
