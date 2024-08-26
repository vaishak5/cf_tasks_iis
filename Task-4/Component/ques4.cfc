<cfcomponent>
    <cffunction  name="getRating" returntype="struct">
        <cfset var datas = {}>
        <cfset var todaysDate = now()>
        <cfset datas.todaysDate = dateFormat(todaysDate, "dd-mm-yyyy")>
        <cfset datas.currentMonthNum = dateFormat(todaysDate, "mm")>
        <cfset datas.currentMonthWord = dateFormat(todaysDate, "MMMM")>
        <cfset datas.lastFriday = dateFormat(dateAdd("d", -((DayOfWeek(todaysDate) + 1) % 7), todaysDate), "dd-mm-yyyy")>
        <cfset datas.lastDay = dateFormat(dateAdd("d", -1, dateAdd("m", 1, createDate(year(now()), month(now()), 1))), "dd-mm-yyyy")>
        <cfset datas.lastFiveDays = []>
        <cfloop from="0" to="4" index="i">
            <cfset day = dateAdd("d", -i, todaysDate)>
            <cfset days = dateFormat(day, "dd/MMM/yyyy") & " - " & dayOfWeekAsString(dayOfWeek(day))>
            <cfset colors = "" >
            <cfif dayOfWeek(day) EQ 1>
                <cfset colors = "Arsenal Red">
            <cfelseif dayOfWeek(day) EQ 2>
                <cfset colors = "green">
            <cfelseif dayOfWeek(day) EQ 3>
                <cfset colors = "orange">
            <cfelseif dayOfWeek(day) EQ 4>
                <cfset colors = "yellow">
            <cfelseif dayOfWeek(day) EQ 5>
                <cfset colors = "black">
            <cfelseif dayOfWeek(day) EQ 6>
                <cfset colors = "blue">
            <cfelseif dayOfWeek(day) EQ 7>
                <cfset colors = "red">
            </cfif>
            <cfset dayStruct = {date=days, dayOfWeek=dayOfWeekAsString(dayOfWeek(day)), color=colors}>
            <cfset arrayAppend(datas.lastFiveDays, dayStruct)>
        </cfloop>
        <cfreturn datas>
    </cffunction>
</cfcomponent>