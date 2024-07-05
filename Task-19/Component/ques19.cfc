<cfcomponent>
    <cffunction name="getIdentify" access="public" returntype="any">
        <cfset local.count = 0>
        <cfif isDefined("cookie.result")>
            <cfset local.count = cookie.result>
        </cfif>
        <cfset local.count = local.count + 1>
        <cfcookie name="result" value="#local.count#">
        <cfreturn local.count>
    </cffunction>
</cfcomponent>
