﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DbExampleApp1._default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Search in Database </title>
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
    <h1>Search for Student : </h1>

        <asp:RegularExpressionValidator
            ID="RegularExpressionValidator1"
             runat="server"
             ControlToValidate ="TextBox1"
             ValidationExpression ="^[a-zA-Z'.\s]{1,40}$"
             ErrorMessage="Invalid Name ! Please, try again." Font-Bold="True" Font-Italic="False" Font-Underline="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>
        
        <br />

        <br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Student's name"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" Text="Search" BackColor="#FFFFCC" Font-Names="Segoe UI Emoji" OnClick="Button1_Click" />

        &nbsp;</div>
    </form>
</body>
</html>
