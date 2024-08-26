<cfcomponent>
    <cffunction name="getData" access="public" returntype="string">
        <cfset jsonData = '[{"Name":"Saravanan","Age":27,"Location":"Dubai"},{"Name":"Ram","Age":26,"Location":"Kovilpatti"}]'>
        <cfreturn jsonData>
    </cffunction>

</cfcomponent>
