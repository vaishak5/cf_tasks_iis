<cfcomponent>
    <cffunction name="getRating" returntype="any">
        <cfargument name="ratings"  required="true">
        <cfswitch expression="#arguments.ratings#">
            <cfcase  value="5">
                <cfset local.ratings = " Very Good">
            </cfcase>
            <cfcase  value="4">
                <cfset local.ratings = " Good">
            </cfcase>
            <cfcase  value="3">
                <cfset local.ratings = " Fair">
            </cfcase>
            <cfcase  value="2,1">
                <cfset local.ratings = " Ok">
            </cfcase>
            <cfdefaultcase>
                <cfset local.ratings = " Please enter a valid Number">
            </cfdefaultcase>
        </cfswitch>
        <cfreturn local.ratings>
    </cffunction>
</cfcomponent>