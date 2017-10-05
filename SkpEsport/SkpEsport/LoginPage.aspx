<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SkpEsport.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SKP LAN</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="./node_modules/mdbootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="./node_modules/mdbootstrap/css/mdb.min.css" rel="stylesheet">

    <style>
        body {
            padding-top: 60px;
            background-color: rgb(205, 219, 213);
        }

        .starter-template {
            padding: 40px 15px;
            text-align: center;
        }

        .bg-custom {
            background-color: #BF0603 !important;
        }
    </style>
</head>
<body>
    <form id="LoginForm" runat="server">
        <!--Main Navigation-->
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-custom scrolling-navbar fixed-top">
                <a class="navbar-brand" href="#">
                    <strong>SKP eSport</strong>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home
                               
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target="#tosNav">Rules</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://discord.gg/nUpyP6M" target="_blank">Discord</a>
                        </li>
                        <li>
                            <asp:Button ID="btn_CloseCon" runat="server" OnClick="btn_CloseCon_OnClick" Text="CLOSE THE CONNECTION NIGGA" />
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!--Main Navigation-->



        <!-- Nav tabs -->
        <ul class="nav nav-tabs nav-justified">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#panel1" role="tab">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#panel2" role="tab">Register</a>
            </li>
        </ul>
        <!-- Tab panels -->
        <div class="tab-content card">

            <!--Panel 1-->
            <div class="col-8 align-self-center tab-pane fade in show active" id="panel1" role="tabpanel">

                <br>
                <br>
                <div class="modal-body">
                    <div class="md-form form-sm">
                        <i class="fa fa-envelope prefix"></i>
                        <asp:TextBox ID="tb_Email" runat="server" CssClass="form-control" TextMode="Email" ValidationGroup="LoginGroup"></asp:TextBox>
                        <label for="tb_Email">Your email</label>
                        <asp:RequiredFieldValidator runat="server" ID="emailReq" ControlToValidate="tb_Email" ErrorMessage="Email required" CssClass="text-danger" ValidationGroup="LoginGroup" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>
                    <div class="md-form form-sm">
                        <i class="fa fa-lock prefix"></i>
                        <asp:TextBox ID="tb_Password" runat="server" CssClass="form-control" TextMode="Password" ValidationGroup="LoginGroup"></asp:TextBox>
                        <label for="tb_Password">Your password</label>
                        <asp:RequiredFieldValidator runat="server" ID="pwdReq" ControlToValidate="tb_Password" ErrorMessage="Password required" CssClass="text-danger" ValidationGroup="LoginGroup" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <br>
                    <br>
                    <div class="text-center mt-2">
                        <asp:LinkButton ID="btn_login" CssClass="btn btn-info" OnClick="btn_login_OnClick" runat="server" ValidationGroup="LoginGroup">Log in <i class="fa fa-sign-in"></i></asp:LinkButton>
                    </div>

                </div>


            </div>


            <!--/.Panel 1-->


            <!--Panel 2-->
            <div class="col-8 align-self-center tab-pane fade" id="panel2" role="tabpanel">

                <br>
                <br>

                <div class="modal-body">
                    <div class="md-form form-sm">
                        <i class="fa fa-envelope prefix"></i>
                        <asp:TextBox ID="tb_RegEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <label for="tb_RegEmail">Your email</label>
                        <asp:RequiredFieldValidator runat="server" ID="regEmailReq" ControlToValidate="tb_RegEmail" ErrorMessage="Email required" CssClass="text-danger" ValidationGroup="RegGroup" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>

                    <div class="md-form form-sm">
                        <i class="fa fa-user prefix"></i>
                        <asp:TextBox ID="tb_RegUsername" runat="server" CssClass="form-control"></asp:TextBox>
                        <label for="tb_RegUsername">Your username</label>
                        <asp:RequiredFieldValidator runat="server" ID="regUsernameReq" ControlToValidate="tb_RegUsername" ErrorMessage="Username required" CssClass="text-danger" ValidationGroup="RegGroup" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>

                    <div class="md-form form-sm">
                        <i class="fa fa-lock prefix"></i>
                        <asp:TextBox ID="tb_RegPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <label for="tb_RegPassword">Your password</label>
                        <asp:RequiredFieldValidator runat="server" ID="regPasswordReq" ControlToValidate="tb_RegPassword" ErrorMessage="Password required" CssClass="text-danger" ValidationGroup="RegGroup" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="md-form form-sm">
                        <i class="fa fa-lock prefix"></i>
                        <asp:TextBox ID="tb_RegPasswordRepeat" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <label for="tb_RegPasswordRepeat">Repeat password</label>
                        <asp:RequiredFieldValidator runat="server" ID="regRepPwdReq" ControlToValidate="tb_RegPasswordRepeat" ErrorMessage="Repeat Password required" CssClass="text-danger" ValidationGroup="RegGroup" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>

                    <br>
                    <br>

                    <div class="text-center mt-2">
                        <asp:LinkButton ID="btn_Register" CssClass="btn btn-info" OnClick="btn_Register_OnClick" runat="server" ValidationGroup="RegGroup">Register <i class="fa fa-sign-in"></i></asp:LinkButton>
                    </div>
                </div>

            </div>
            <!--/.Panel 2-->
        </div>
        <!--Modal: Rules Form for nav -->
        <div class="modal fade" id="tosNav" tabindex="-1" role="dialog" aria-labelledby="tosNav" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header bg-dark darken-3 white-text">
                        <h4 class="title"><i class="fa fa-user"></i>Rules</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form form-sm">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a malesuada augue. Vestibulum nec sem vitae nunc condimentum
									bibendum eu at augue. Fusce auctor, risus et tempor ullamcorper, est dui dapibus tellus, nec gravida orci ante eu
									ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer finibus pharetra magna, nec facilisis
									est auctor id. Cras bibendum venenatis facilisis. Praesent consequat odio iaculis orci convallis lobortis nec et
									justo. Suspendisse eget faucibus mi. Nunc ut egestas nulla. Aenean quis leo vulputate, imperdiet felis at, dignissim
									purus.
                            </p>
                        </div>

                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--End of Modal: Rules Form for nav-->





        <script type="text/javascript" src="./node_modules/mdbootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/mdb.min.js"></script>


    </form>

</body>
</html>
