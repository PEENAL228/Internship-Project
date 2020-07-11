<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="water_project_final.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <p style="text-align:center">Register here</p>
            <asp:TextBox CssClass="box" ID="TextBox1" runat="server" placeholder=" FullName" pattern="[a-zA-z]{2,}" required></asp:TextBox><br />
            <br />
             <asp:TextBox CssClass="box" ID="TextBox3" runat="server" placeholder=" Mobile No." pattern="[0-9]{10}"  required></asp:TextBox><br />
            <br />
             <asp:TextBox CssClass="box" ID="TextBox4" runat="server" placeholder=" Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required></asp:TextBox><br />
            <br />
             <asp:TextBox CssClass="box" ID="TextBox5" runat="server" placeholder=" Address" required></asp:TextBox><br />
            <br />
             <asp:TextBox CssClass="box" type="password" ID="TextBox6" runat="server" placeholder=" Password" required></asp:TextBox><br />
            <br />
            <asp:TextBox CssClass="box" type="password" ID="TextBox2" runat="server" placeholder=" Retype Password" required></asp:TextBox><br />
            <br />
            <asp:CheckBox CssClass="check" ID="CheckBox1" runat="server" required />
            <label for="CheckBox1">I Agree to the terms</label><br />
            <br />
            <button onclick="window.location.href='registration.aspx'" type="button" CssClass =" button" style="width: 280px; height: 45px; color:dodgerblue">Register</button>
            <br />
            <br />
            <a href="client_login.aspx" style="color: dodgerblue">Already have a membership</a>
        </div>
    </form>
</body>
</html>
