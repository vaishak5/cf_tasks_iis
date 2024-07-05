<cfcomponent>
    <cffunction name="getIdentify" returntype="any">
        <cfargument name="captcha" required="true">
        <cfset result = "">
        <cfif arguments.captcha EQ session.captchaInput>
            <cfset result = "[Email Address successfully subscribed to our newsletter]">
        <cfelse>
            <cfset result = "[Please enter the correct captcha]">
        </cfif>
        <cfreturn result>
    </cffunction>
</cfcomponent>
