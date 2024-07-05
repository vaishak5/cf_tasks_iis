<cfcomponent>
    <cffunction name="getRating" returntype="any">
        <cfargument name="ratings" required="true">
        
        <cfif arguments.ratings EQ 5>
            <cfreturn "Very good">
        <cfelseif arguments.ratings EQ 4>
            <cfreturn "Good">
        <cfelseif arguments.ratings EQ 3>
            <cfreturn "Fair">
        <cfelseif arguments.ratings EQ 1 OR arguments.ratings EQ 2>
            <cfreturn "Ok">
        <cfelse>
            <cfreturn "Please enter a valid number between 1 and 5.">
        </cfif>
    </cffunction>
</cfcomponent>