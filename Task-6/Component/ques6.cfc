<cfcomponent>
    <cffunction name="getIdentify" returntype="any">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfset myStructure = {}>
        <cfset myStructure[arguments.key] = arguments.value>
        <cfdump var="#myStructure#">
    </cffunction>
</cfcomponent>