<cfcomponent>
    <cffunction name="multiply" >
        <cfargument name="numbers"  required="true">
        <cfset var result = 1>
        <cfloop index="num" array="#arguments.numbers#">
            <cfset result = result * num>
        </cfloop>
        <cfreturn result>
    </cffunction>
</cfcomponent>