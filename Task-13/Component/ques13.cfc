<cfcomponent>
    <cffunction name="search" access="public" returntype="string">
        <cfargument name="value" type="string" required="true">
        <cfargument name="keyword" type="string" required="true">
        <cfset var count = 0>
        <cfset var position = 0>
        <cfloop condition="#FindNoCase(arguments.keyword, arguments.value, position + 1)#">
            <cfset count = count + 1>
            <cfset position = FindNoCase(arguments.keyword, arguments.value, position + 1)>
        </cfloop>
        <cfset result = "Keyword '#arguments.keyword#' found at #count# time(s)">
        <cfreturn result>
    </cffunction>
</cfcomponent>