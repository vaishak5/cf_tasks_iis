<cfcomponent>
   <cffunction name="getRating" returntype="any">
      <cfargument name="value"  type="numeric" required="true">
      <cfset var output = "">
      <cfloop from="1" to="#arguments.value#" index="i">
         <cfif i mod 2 eq 0>
            <cfset output &= "<p class='even'>" & i & "</p>">
         <cfelse>
            <cfset output &= "<p class='odd'>" & i & "</p>">
         </cfif>
      </cfloop>
      <cfreturn output>
   </cffunction>
</cfcomponent>