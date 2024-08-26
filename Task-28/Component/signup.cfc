<cfcomponent>

    <!---Sign In--->
    <cffunction  name="signupUpload" access="remote" returnFormat="plain">
        <cfargument name="username" required="true">
        <cfargument name="roleSet" required="true">
        <cfargument name="password" required="true">
        <cfquery name="checkEmail" datasource="DESKTOP-8VHOQ47">
            SELECT 1 FROM signup 
            WHERE userName=<cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkEmail.recordCount>
            <cfreturn false>
        <cfelse>
            <cfquery name="insertValues" datasource="DESKTOP-8VHOQ47">
                INSERT INTO signup (userName, userRole, userPassword)
                VALUES (
                    <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.roleSet#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
            <cfreturn true>
        </cfif>
    </cffunction>

    <!---LogIn--->
    <cffunction name="checkLogin" access="remote" returnFormat="plain">
        <cfargument name="username" required="true">
        <cfargument name="password" required="true">
        <cfquery name="checkRole" datasource="DESKTOP-8VHOQ47">
            SELECT userRole FROM signup 
            WHERE userName=<cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">
            AND userPassword=<cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkRole.recordCount>
            <cfset session.role=checkRole.userRole>
            <cfset session.login=true>
            <cfreturn "true">
        <cfelse>
            <cfset session.login=false>
            <cfreturn "false">
        </cfif>
    </cffunction>

    <!---Add Page--->
    <cffunction  name="addDetails" access="remote" returnFormat="plain">
        <cfargument  name="pageName" required="true">
        <cfargument  name="pageDesc" required="true">
        <cfquery name="checkDatas" datasource="DESKTOP-8VHOQ47">
            SELECT 1 FROM addDataz 
            WHERE pageName=<cfqueryparam value="#arguments.pageName#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkDatas.recordCount>
            <cfreturn "false">
        <cfelse>
        <cfquery name="addItems" datasource="DESKTOP-8VHOQ47">
            INSERT INTO addDataz (pageName, pageDesc)
                VALUES (
                    <cfqueryparam value="#arguments.pageName#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.pageDesc#" cfsqltype="CF_SQL_VARCHAR">
                    
                )
        </cfquery>
         <cfreturn "true">
        </cfif>
    </cffunction>

    <!---Get Page Datas(ADMIN)--->
    <cffunction name="getPagesDetails" access="remote" returntype="any">
        <cfquery name="displayDatas">
            SELECT pageId,pageName,pageDesc 
            FROM addDataz
        </cfquery>
        <cfreturn displayDatas>
    </cffunction>

    <!---User Page Details--->
    <cffunction name="userPageDetails" access="remote" returntype="any">
        <cfquery name="displayUserDatas">
            SELECT pageName, pageDesc FROM addDataz WHERE pageId = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn displayUserDatas>
    </cffunction>

    <!---Delete Datas--->
    <cffunction name="deleteDatas" access="remote" returnFormat="plain">
        <cfargument name="pageId" required="true">
        <cfquery name="deleteQuery" datasource="DESKTOP-8VHOQ47">
            SELECT pageId FROM addDataz 
            WHERE pageId = <cfqueryparam value="#arguments.pageId#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif deleteQuery.recordCount>
            <cfquery name="deleteItems" datasource="DESKTOP-8VHOQ47">
                delete from addDataz
                WHERE pageId = <cfqueryparam value="#arguments.pageId#" cfsqltype="CF_SQL_VARCHAR">
            </cfquery>
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>

    <!---Edit Datas--->
    <cffunction name="getEditDatas" access="remote" returntype="any">
        <cfargument name="pageId" required="true">
        <cfquery name="editDatas" datasource="DESKTOP-8VHOQ47">
            SELECT pageId, pageName, pageDesc
            FROM addDataz 
            WHERE pageId = <cfqueryparam value="#arguments.pageId#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfset result = {}>
        <cfif editDatas.recordCount>
            <cfset result.pageId = editDatas.pageId>
            <cfset result.page = editDatas.pageName>
            <cfset result.desc = editDatas.pageDesc>
        </cfif>
        <cfreturn result>
    </cffunction>

    <!---Update Datas--->
    <cffunction name="updateData" access="remote" returnFormat="plain">
        <cfargument name="pageId" required="true">
        <cfargument name="pageName" required="true">
        <cfargument name="pageDesc" required="true">
        <cfquery name="editDatass" result ="editDatassResult" datasource="DESKTOP-8VHOQ47">
            UPDATE addDataz
            SET pageName = <cfqueryparam value="#arguments.pageName#" cfsqltype="CF_SQL_VARCHAR">,
            pageDesc = <cfqueryparam value="#arguments.pageDesc#" cfsqltype="CF_SQL_VARCHAR">
            WHERE pageId = <cfqueryparam value="#arguments.pageId#" cfsqltype="CF_SQL_INTEGER">
        </cfquery>
        <cfreturn result>
    </cffunction>

    <!---LogOut--->
    <cffunction  name="doLogout" returntype="any" access="remote">
        <cfset session.login=false>
        <cflocation url="../index.cfm">
    </cffunction>
</cfcomponent>