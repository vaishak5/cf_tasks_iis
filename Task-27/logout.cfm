<cfapplication name="userLogin" sessionmanagement="true">
<cfset StructClear(session)>
<cflocation url="index.cfm" addtoken="false">
