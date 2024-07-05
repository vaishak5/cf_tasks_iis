<cfcomponent>
    <cffunction name="getIdentify">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfif NOT StructKeyExists(session, "struct")>
            <cfset session.struct = StructNew()>
        </cfif>
        <cfif StructKeyExists(session.struct, arguments.key)>
           <cfset session.struct[arguments.key] = arguments.value>
        <cfelse>
            <cfset session.struct[arguments.key] = arguments.value>
        </cfif>
    </cffunction>
</cfcomponent>