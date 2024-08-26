<cfcomponent>
    <cffunction name="getIdentify" returntype="any">
        <cfargument name="email" required="true">
        <cfargument name="password" required="true">
        <cfset var errorMsg = []>
        <cfif len(trim(arguments.email)) EQ 0>
            <cfset arrayAppend(errorMsg, "Please enter the email address")>
        </cfif>
        <cfif len(trim(arguments.password)) EQ 0>
            <cfset arrayAppend(errorMsg, "Please enter the password")>
        </cfif>
        <cfreturn errorMsg>
    </cffunction>
</cfcomponent>
