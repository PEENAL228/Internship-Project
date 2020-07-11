<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order_page.aspx.cs" Inherits="water_project_final.order_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Order Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 237px;
            width: 184px;
            margin-left: 93px;
        }
        .auto-style2 {
            width: 270px;
            height: 277px;
        }
    </style>
</head>
<body>
    <script>
        function sum1() {
            var TextBox1 = document.getElementById('TextBox1').value;

            var result = parseInt(TextBox1) * parseInt(20);
            if (!isNaN(result)) {
                document.getElementById('TextBox5').value = result;
            }
        }
        function sum2() {
            var TextBox3 = document.getElementById('TextBox3').value;

            var result = parseInt(TextBox3) * parseInt(25);
            if (!isNaN(result)) {
                document.getElementById('TextBox4').value = result;
            }
        }
       
        </script>
    <form id="form1" runat="server">
       <center> <div>
             <table><center>
       <tr>
           <td><img src="can.jpg" class="auto-style2"><br />
               20 Liters<br />
               20 Rs</td>
           <td>
               <img class="auto-style1" src="jug.jpg"><br />
               20 Liters<br />
               25 Rs</td>
       </tr>
        <tr>
            <td>
            <asp:Label ID="Label1" runat="server" Text="No of Can : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" onchange="javascript:sum1();"></asp:TextBox>
            <br />

            </td>
            <td>
            <asp:Label ID="Label2" runat="server" Text="No of Jug : "></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" onchange="javascript:sum2();" ></asp:TextBox>
            </td>

        </tr><tr><td>
            <asp:Label ID="Label3" runat="server" Text="Amount : "></asp:Label>
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
           
            <br /></td><td>
                         
            <asp:Label ID="Label4" runat="server" Text="Amount : "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br /></td>
        </tr>
          
        </table>
            
             <br />
             <button onclick="window.location.href='order.aspx'" type="button">Order Me</button>
        </div> </center>
    </form>
</body>
</html>
