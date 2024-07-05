<cfcomponent>
    <cffunction name="pattern" >
        <cfloop index="i" from="1" to="3">
            <cfloop index="j" from="0" to="2">
                <cfset num = (i + (3 * j))>
                <cfoutput>#num# </cfoutput>
            </cfloop>
            <br>
        </cfloop>
    </cffunction>
</cfcomponent>