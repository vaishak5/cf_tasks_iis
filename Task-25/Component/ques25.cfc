<cfcomponent>
    <!---Insert Datas--->
    <cffunction name="getIdentify" access="public" returntype="any">
        <cfargument name="text" type="string" required="true">
        <cfquery datasource="DESKTOP-8VHOQ47">
            DELETE FROM datasInsert
        </cfquery>
        <cfset local.insertCount=listToArray(arguments.text," ")>
        <cfloop array="#insertCount#" index="i">
            <cfquery name="checkData" datasource="DESKTOP-8VHOQ47">
                SELECT word
                FROM datasInsert 
                where word=<cfqueryparam value="#i#" CFSQLType="CF_SQL_VARCHAR">
            </cfquery>
            <cfif checkData.recordCount>
                <cfcontinue>
            <cfelse>
                <cfquery name="insertion" datasource="DESKTOP-8VHOQ47">
                    INSERT INTO datasInsert(word)
                    values(<cfqueryparam value="#i#" CFSQLType="CF_SQL_VARCHAR">)
                </cfquery>
            </cfif>
        </cfloop>
        <cfreturn "Records are Inserted">
    </cffunction>
    <!---Get Count--->
    <cffunction name="getCounts" access="public" returntype="any">
        <cfargument name="text" required="true">
        <cfset local.wordCounts = {}>
        <cfset local.countWord = reMatch("[a-zA-Z]+", arguments.text)>
        <cfloop array="#local.countWord#" index="word">
            <cfif len(trim(word)) GTE 3 AND NOT isNumeric(word)>
               <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
            
        </cfloop>
        <cfquery datasource="DESKTOP-8VHOQ47">
            DELETE FROM datasInsert
        </cfquery>
        <cfloop array="#sortedWords#" index="word">
            <cfquery name="sorting" datasource="DESKTOP-8VHOQ47">
                INSERT INTO datasInsert(word)
                values(<cfqueryparam value="#word[2]#" CFSQLType="CF_SQL_VARCHAR">)
            </cfquery>
        </cfloop>
       <cfquery name="displaying" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM datasInsert ORDER BY len(<cfqueryparam value="#arguments.text#" cfsqltype="CF_SQL_VARCHAR">) DESC;
        </cfquery>
        <cfset local.smaple=[]>
        <cfloop query="displaying">
            <cfset session.struct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset local.datas=structSort(session.struct, "numeric", "desc")>
        <cfloop array="#local.datas#" index="word">
            <cfset arrayAppend(local.smaple,[local.wordCounts[word],word])>
        </cfloop>
        <cfreturn "#local.smaple#">
        
    </cffunction>

    <!---Word Color--->
    <cffunction name="getWordColor" access="public" returntype="any">
        <cfargument name="text" required="true">
        <cfset local.wordCounts = {}>
        <cfset local.countWord = reMatch("[a-zA-Z]+", arguments.text)>
        <cfloop array="#local.countWord#" index="word">
            <cfif len(trim(word)) GTE 3 AND NOT isNumeric(word)>
               <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
        </cfloop>
        <cfquery datasource="DESKTOP-8VHOQ47">
            DELETE FROM datasInsert
        </cfquery>
        <cfloop array="#sortedWords#" index="word">
            <cfquery name="sorting" datasource="DESKTOP-8VHOQ47">
                INSERT INTO datasInsert(word)
                values(<cfqueryparam value="#word[2]#" CFSQLType="CF_SQL_VARCHAR">)
            </cfquery>
        </cfloop>
       <cfquery name="displaying" datasource="DESKTOP-8VHOQ47">
            SELECT * FROM datasInsert ORDER BY len(<cfqueryparam value="#arguments.text#" cfsqltype="CF_SQL_VARCHAR">) DESC;
        </cfquery>
        <cfset local.smaple=[]>
        <cfloop query="displaying">
            <cfset session.struct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset local.datas=structSort(session.struct, "numeric", "desc")>
         
        <cfloop array="#local.datas#" index="word">
            <cfset arrayAppend(local.smaple,[local.wordCounts[word],word])>
        </cfloop>
        
        <cfset local.setColor=[]>
        <cfset local.fontSize=0>
        <cfloop array="#local.smaple#" index="word">
            <cfset Red = randRange(0, 255)>
            <cfset Green = randRange(0, 255)>
            <cfset Blue = randRange(0, 255)>
            <cfset Color = "##"&formatBaseN(Red, '16')&formatBaseN(Green, '20')&formatBaseN(Blue, '22')>
            <cfset fontSize = local.fontSize + (word[1]*5)>
            <cfset arrayAppend(local.setColor, {word = word, fontSize = fontSize, color = Color})>
        </cfloop>
        <cfreturn local.setColor>
      </cffunction>
</cfcomponent>

