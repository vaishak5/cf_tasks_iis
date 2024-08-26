<cfcomponent>
    <!---Enter values and upload Images--->
    <cffunction  name="getIdentify" returntype="any">
        <cfargument  name="imgName" required="true"> 
        <cfargument  name="descTxt" required="true">
        <cfargument  name="myfile" required="true">
        <cfset local.imgPath = expandPath("./Assets/")>
        <cfset local.img = "">
        <cffile action="upload" destination="#local.imgPath#" nameconflict="makeunique">
        <cfset local.img = cffile.serverFile>
        <cfquery name="imageSet" datasource="DESKTOP-8VHOQ47">
            INSERT INTO imageSet(ImageName, DescTxt,Images)
            values(
                <cfqueryparam value = "#arguments.imgName#" >, 
                <cfqueryparam value = "#arguments.descTxt#">,
                <cfqueryparam value = "#local.img#">
            )
        </cfquery>
        <cfquery name="values" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM imageSet
            WHERE Images=<cfqueryparam value="#local.img#">
        </cfquery>
        <cfset local.id=values.ID>
        <cflocation  url="ques14ListPage.cfm?listPage=#local.id#">
    </cffunction>

    <!---Get img name(link) and the img--->
    <cffunction  name="getValue">
        <cfargument  name="getImg">
        <cfquery name="values" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM imageSet
            WHERE ID=<cfqueryparam value="#arguments.getImg#">
        </cfquery>
        <cfreturn values>
    </cffunction>

    <!---display img name,description,image--->
    <cffunction  name="display">
        <cfargument  name="details">
        <cfquery name="values" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM imageSet
            WHERE ID=<cfqueryparam value="#arguments.details#">
        </cfquery>
        <cfreturn values>
    </cffunction>
</cfcomponent>
