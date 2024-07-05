<cfcomponent>
    <cffunction name="multiply" returntype="any">
        <cfargument name="num1" required="true">
        <cfargument name="num2" required="true">
        <cfargument name="num3" required="true" default="1">
        <cfargument name="num4" required="true" default="1">

        <cfreturn arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
        
    </cffunction>
</cfcomponent>