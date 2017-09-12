<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="SkpEsport.LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <h1 class="title">Login Test Page</h1>
        <asp:Button ID="btn_DbStuff" CssClass="btn btn-danger" Text="Db test" OnClick="btn_DbStuff_OnClick" runat="server"/>

    </div>
    </form>
</body>
</html>
