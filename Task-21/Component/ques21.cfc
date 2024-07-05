<cfcomponent>
    <cffunction name="getDetails" returntype="any">
        <cfargument name="babyName" required>
        <cfargument name="emailId" required>
        <cfargument name="bdayWish" required>
        <cfargument name="greetingImg" required>
        <cfset local.imgPath = expandPath("./Assets/")>
        <cfset local.img = "">
        <cffile action="upload" destination="#local.imgPath#" nameconflict="makeunique">
        <cfset local.img = cffile.serverFile>
        <cfset mail = {
            to = "#arguments.babyName#@gmail.com",
            from = "#arguments.emailId#",
            subject = "Happy Birthday, #arguments.babyName#!",
            body = "#arguments.bdayWish#",
            type = "html"
        }>
        <cfmail 
            to="#mail.to#"
            from="#mail.from#"
            subject="#mail.subject#"
            type="#mail.type#">
            #mail.body#
            <cfmailparam 
                file="#local.imgPath##local.img#"
                disposition="attachment"
                contentid="greetingImg" />
        </cfmail>
        <cfreturn "Email sent successfully.">
    </cffunction>
</cfcomponent>
