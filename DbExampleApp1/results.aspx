<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="DbExampleApp1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Details : Search Results</title>
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

        .my-table td, .my-table th
        {
            font-family : "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
            text-align :center;
            width : 70px;
            border : 3px solid #3c5fd3;
        }

    </style>
        <form id="form1" runat="server">
        <div>
        <h2>Student Details from Database ... ADO.NET 101</h2>
            <div class ="my-table">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                <br />
                <a href="default.aspx">Try Another Search</a>
            </div>
        </div>
        </form>
</body>
</html>
