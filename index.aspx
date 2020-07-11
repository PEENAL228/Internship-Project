<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="new_project.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="home_style.css" />-

</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <h2>Owner Login</h2>
                <div>            
                    <button onclick="window.location.href='login.aspx'" type="button">Click here</button>
                    
                </div><br /><br />
                
                <h2>Client Login</h2>
                <div>
                    <button onclick="window.location.href='client_login.aspx'" type="button">Click here</button>
                </div>
        </div>
    </form>
</body>
</html>
