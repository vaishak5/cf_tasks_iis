<cfcomponent>
    <!---Checking Mail--->
    <cffunction name="mailCheck" access="remote" returnformat="plain">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        <cfquery name="emailCheck" datasource="DESKTOP-8VHOQ47">
            SELECT *
            FROM subscriberForm
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif emailCheck.recordCount >
            <cfreturn "true">
        <cfelse>
            <cfreturn "false">
        </cfif>   
    </cffunction>

    <!---Uploading Mail--->
    <cffunction name="uploadMail" access="remote" returnFormat="plain">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        <cfquery name = "emailUpload" datasource="DESKTOP-8VHOQ47">
                INSERT INTO subscriberForm (fname, email)
                VALUES (
                    <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
                )
        </cfquery>
        <cfreturn "true"> 
    </cffunction>
</cfcomponent>
