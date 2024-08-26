<cfcomponent>
    <cffunction name="getIdentify" returntype="any">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfif structKeyExists(session.struct, arguments.key)>
            <cfoutput>#arguments.key# already present and cannot add it again!!!<br></cfoutput><br>
        <cfelse>
            <cfset session.struct[arguments.key] = [arguments.value]>
        </cfif>
    </cffunction>
</cfcomponent>