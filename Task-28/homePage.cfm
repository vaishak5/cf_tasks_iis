<!DOCTYPE html>
<html lang="en">
<head>
    <title> Roles based webpages</title>
    <link rel="stylesheet" href="./style/admin.css">
</head>
<body>
    <cfif session.login>
        <cfif session.role EQ "admin" OR session.role EQ "editor">
        <div class="header">
                <div class="headerFirst">
                    <p class="siteName">TECHFLICK</p>
                    <a href="adminList.cfm">View List</a>
                </div>
                <div class="headerSecond">
                    <p>Hello Admin!!!</p>
                    <a href="./Component/signup.cfc?method=doLogout">Log Out</a>
                </div>
            </div>
            <div class="adminFeat">
                <h2>Here are some of the features where how admin can manage their files</h2>
                <div class="features">
                    <h3>1. Add Files:</h3>
                    <span> Admins can add files to the website, whether they are documents or other types of media.</span>
                    <h3>2. Delete Files:</h3>
                    <span> Admins have the ability to remove files that are not needed.</span>
                    <h3>3. Edit Files:</h3>
                    <span> Admins can edit the files directly on the platform, making updates or corrections as they are needed.</span>
                </div>
            </div>
        <cfelse>
            <div class="header">
                <div class="headerFirst">
                    <p class="siteName">TECHFLICK</p>
                    <a href="adminList.cfm">View List</a>
                </div>
                <div class="headerSecond">
                    <p>Hello User!!!</p>
                    <a href="./Component/signup.cfc?method=doLogout">Log Out</a>
                </div>
            </div>
            <div class="userFeat">
                <h2>Here are some of the features for the user in this website!!</h2>
                <div class="features">
                    <h3>1. Login:</h3>
                    <span>User have the capability to log in to the website using their designated credentials, based on their role within the system.</span>
                    <h3>2. Page Navigation:</h3>
                    <span>User can navigate through a list of pages presented as a link(View List).</span> 
                    <h3>3. View Details:</h3>
                    <span>User can able to view their details(Title,Description) </span>
                </div>
            </div>
        </cfif>
    <cfelse>
        <cflocation  url="index.cfm">
    </cfif>    
</body>
</html>