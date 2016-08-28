<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="app2.aspx.cs" Inherits="DbExampleApp1.app2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> ADO.NET 101 Application #2 </title>
</head>
<body>
    <style>
        body
        {
            font-family : "Segoe UI Light", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
            background-color : beige;
            padding : 20px;
            text-align : center;
        }
    </style>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem NavigateUrl="~/default.aspx" Text="ADO.NET 101 App #1" Value="ADO.NET 101 App #1"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/app2.aspx" Text="ADO.NET 101 App #2" Value="ADO.NET 101 App #2"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        <h3>Find No. of faculties in FoT, DDU, Nadiad</h3>
        Dept : <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Find" OnClick="Button1_Click" BackColor="#FFFFCC" Font-Names="Segoe UI Emoji"/>
        <br />
        <br />
        No. Of Faculties :
        <asp:Label ID="Label1" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
