<cfcomponent>
    <cffunction name="datas" returntype="any">
        <cfset local.values = QueryNew("ID,NAME,EMAIL","integer,varchar,varchar",
        [[1,"Messi","messi10@gmail.com"],
        [2,"Ronaldo","ronaldo7@gmail.com"],
        [3,"Sunil Chetri","chetri11@gmail.com"]])>
        <cfdump  var="#local.values#">
    </cffunction>
</cfcomponent>