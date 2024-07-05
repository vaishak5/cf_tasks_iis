<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Admin's ViewList</title>
   <link rel="stylesheet" href="./style/adminList.css">
   <link rel="stylesheet" href="./style/bootstrap.min.css">
   <script src="./script/sourceFirst.js"></script>
   <script src="./script/sourceSecond.js"></script>
   <script src="./script/sourceThird.js"></script>
   <script src="./script/jquery.min.js"></script>
   <script src="./script/jquery-ui.min.js"></script>
   <script src="./script/signup.js"></script>
</head>
<body>
   <cfif session.login>
      <cfset local.obj = createObject("component", "Component.signup")>
      <cfset local.displayData = local.obj.getPagesDetails()>
      <cfif session.role EQ "admin" OR session.role EQ "editor">
         <div class="header">
            <div class="headerFirst">
               <p class="siteName">TECHFLICK</p>
               <a href="homePage.cfm">Home Page</a>
            </div>
            <div class="headerSecond">
               <p>Hello Admin!!!</p>
               <a href="./Component/signup.cfc?method=doLogout">Log Out</a>
            </div>
         </div>
         <div class="tableStyle d-flex align-items-center justify-content-center">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th class="titleValues" scope="col-3">
                        <h5><b>Title</b></h5>
                     </th> 
                     <th class="titleValues" scope="col">
                        <h5><b>Description</b></h5>
                     </th>
                     <th class="titleValues" scope="col">
                        <h5><b>Action</b></h5>
                     </th>
                  </tr>
               </thead>
               <tbody>
                  <cfloop query="local.displayData">
                     <tr class="tableRow" id="#local.displayData.pageId#">
                        <td class="titleValues">#local.displayData.pageName#</td>
                        <td class="descValues">#local.displayData.pageDesc#</td>
                        <td class="actionValues">
                        <a href="editDatas.cfm?id=#local.displayData.pageId#">Edit</a>
                        <button type="submit" class="btn btn-primary deleting delBtn"  data-id="#local.displayData.pageId#">Delete</button>                   
                        </td>
                     </tr>
                  </cfloop>
               </tbody>
            </table>
         </div>
         <div class="addLink">
            <a href="addDatas.cfm" class="add">Add New Datas</a>
         </div>
         <cfelse>
         <div class="header">
            <div class="headerFirst">
               <p class="siteName">TECHFLICK</p>
               <a href="homePage.cfm">Home Page</a>
            </div>
            <div class="headerSecond">
               <p>Hello User!!!</p>
               <a href="index.cfm">Log Out</a>
            </div>
         </div>
         <div class="tableStyles d-flex align-items-center justify-content-center">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th class="userTitle" scope="">
                        <h5><b>Title</b></h5>
                     </th>
                  </tr>
               </thead>
               <tbody>
                  <cfloop query="local.displayData">
                     <tr class="tableRows" id="#local.displayData.pageId#">
                        <th class="userValues" scope="col"><a href="userviewList.cfm?id=#local.displayData.pageId#">#local.displayData.pageName#</a></th>
                     </tr>
                  </cfloop>
               </tbody>
            </table>
         </div>
      </cfif>
      <cfelse>
         <cflocation  url="index.cfm">
   </cfif> 
</body>
</html>
</cfoutput>