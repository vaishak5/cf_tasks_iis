<cfcomponent>
    <cffunction name="getIdentify" returntype="any">
        <cfargument name="num" required="true">
        <cfquery name="nameList" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM name_List
        </cfquery>
        <cfset firstName = "">
        <cfif num LTE nameList.recordCount AND num GT 0>
            <cfset firstName = nameList["first_name"][num]>
        <cfelse>
            <cfset firstName = "Invalid input">
        </cfif>
        <cfreturn firstName>
    </cffunction>
</cfcomponent>
