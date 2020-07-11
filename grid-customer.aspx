<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid-customer.aspx.cs" Inherits="water_project_final.grid_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GridView</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>Grid View</h1></center>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="c_mobile" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="528px" Width="1131px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
                    <asp:BoundField DataField="c_mobile" HeaderText="c_mobile" ReadOnly="True" SortExpression="c_mobile" />
                    <asp:BoundField DataField="c_email" HeaderText="c_email" SortExpression="c_email" />
                    <asp:BoundField DataField="c_address" HeaderText="c_address" SortExpression="c_address" />
                    <asp:BoundField DataField="c_password" HeaderText="c_password" SortExpression="c_password" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:client %>" SelectCommand="SELECT * FROM [client]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
