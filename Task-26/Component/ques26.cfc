<cfcomponent>
    <cffunction name="getTxt" access="public">
        <cfargument name="myFile" type="string" required="true">
        <cfquery datasource="DESKTOP-8VHOQ47">
            DELETE FROM fileTxt
        </cfquery>
        <cfset var local = {}>
        <cfset local.filePath = expandPath("./Uploads/")>
        <cffile action="upload" filefield="myFile" destination="#local.filePath#" nameConflict="Overwrite">
        <cfset local.uploadedFile = local.filePath & cffile.serverFile> 
        <cfset local.fileContent = fileRead(local.uploadedFile)>
        <cfset local.lines = listToArray(local.fileContent, " ")>
        <cfloop array="#local.lines#" index="i">
            <cfquery name="checkData" datasource="DESKTOP-8VHOQ47">
                SELECT records FROM fileTxt where records=<cfqueryparam value="#i#" CFSQLType="CF_SQL_VARCHAR">
            </cfquery>
            <cfif checkData.recordCount>
                <cfcontinue>
            <cfelse>
                <cfquery name="insertRecord" datasource="DESKTOP-8VHOQ47">
                    INSERT INTO fileTxt (records)
                    VALUES (
                        <cfqueryparam value="#i#" CFSQLType="CF_SQL_VARCHAR">
                    )
                </cfquery>
            </cfif>
        </cfloop>
        <cfreturn "File uploaded successfully.">
    </cffunction>
</cfcomponent>