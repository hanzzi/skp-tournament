<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="SkpEsport.LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Test</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css" />
    <!-- Bootstrap core CSS -->
    <link href="./node_modules/mdbootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Material Design Bootstrap -->
    <link href="./node_modules/mdbootstrap/css/mdb.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <h1 class="title panel-title">Login Test Page</h1>
        <br />
        <p class="text-info"> User: </p><asp:Label CssClass="label label-info" ID="lbl_test1" runat="server"></asp:Label><br />
        <br/>
        <p class="text-info"> AuthVal: </p><asp:Label CssClass="label label-info" ID="lbl_test2" runat="server"></asp:Label><br />
        <br/>
        <asp:Button ID="btn_DbStuff" CssClass="btn btn-danger" Text="Db test" OnClick="btn_DbStuff_OnClick" runat="server"/>

    </div>
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/mdb.min.js"></script>

        <script>
            $('#loginModal').modal('show')

            $("#forgotPassword").click(function () {
                $('#loginModal').modal('hide')
                $('#ForgotPassword').modal('show')
            });

            $("#haveAccount").click(function () {
                $('#registerModal').modal('hide')
                $('#loginModal').modal('show')
            });

            $("#noAccount").click(function () {
                $('#loginModal').modal('hide')
                $('#registerModal').modal('show')
            });
        </script>
    </form>
</body>
</html>
