<cfcomponent>
    <cffunction name="formUpload" access="remote" returnFormat="json">
        <cfargument name="firstField" required="true">
        <cfargument name="year" required="true">
        <cfargument name="url" required="true">
        <cfargument name="firstName" required="true">
        <cfargument name="lastName" required="true">
        <cfargument name="email" required="true">
        <cfargument name="phone" required="true">        
        <cfquery name="addValues" datasource="DESKTOP-8VHOQ47">
            INSERT INTO formDetails (position, years, urlLink, firstName, lastName, emailAddress, phone)
            VALUES (
                <cfqueryparam value="#arguments.firstField#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.year#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.url#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.firstName#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.lastName#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.phone#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
        <cfreturn "true">
    </cffunction>
</cfcomponent>

