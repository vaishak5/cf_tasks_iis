<cfcomponent>
   <cffunction name="getRating" returntype="any">
      <cfargument name="ratings" required="true">
      <cfset numbers = ListToArray(arguments.ratings)>
      <cfset divisibleNumbers = []>
      <cfloop array="#numbers#" index="num">
         <cfif num MOD 3 NEQ 0>
            <cfcontinue>
         </cfif>
         <cfset arrayAppend(divisibleNumbers, num)>
      </cfloop>
      <cfreturn ArrayToList(divisibleNumbers, ",")> 
   </cffunction>
</cfcomponent>
