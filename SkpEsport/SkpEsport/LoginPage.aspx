<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SkpEsport.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SKP LAN</title>

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
            <asp:ImageButton ID="imgBtn_DoLogin" runat="server" ImageUrl=""/>
        </div>

        <div>
            <asp:ImageButton ID="imgbtn_DoRegister" runat="server" ImageUrl=""/>
        </div>

        <!--Modal: Login Form-->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">

                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header bg-dark darken-3 white-text">
                        <h4 class="title"><i class="fa fa-user"></i>Log in</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form form-sm">
                            <i class="fa fa-envelope prefix"></i>
                            <asp:TextBox ID="tb_Email" CssClass="form-control" runat="server"></asp:TextBox>
                            <label for="tb_Email">Your email</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-lock prefix"></i>
                            <asp:TextBox ID="tb_Password" CssClass="form-control" runat="server"></asp:TextBox>
                            <label for="tb_Password">Your password</label>
                        </div>
                        <div class="text-center mt-2">
                            <asp:LinkButton ID="btn_login" CssClass="btn btn-info" OnClick="btn_login_OnClick" runat="server">Log in <i class="fa fa-sign-in"></i></asp:LinkButton>
                        </div>
                        <%--<asp:Login ID="UserLogin" runat="server"></asp:Login>--%>
                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <div class="options text-left col-md-6">
                            <p id="noAccount">Not a member? <a href="#">Sign Up</a></p>
                        </div>
                        <div class="options text-right col-md-6">
                            <p id="forgotPassword">Forgot <a href="#">Password?</a></p>
                        </div>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--End of Modal: Login Form-->


        <!--Modal: Register Form-->
        <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModal" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">
                <!--Content-->
                <div class="modal-content">

                    <!--Header-->
                    <div class="modal-header bg-dark darken-3 white-text">
                        <h4 class="title"><i class="fa fa-user-plus"></i>Register</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form form-sm">
                            <i class="fa fa-envelope prefix"></i>
                            <asp:TextBox ID="tb_RegEmail" CssClass="form-control" runat="server"></asp:TextBox>
                            <label for="form3">Your email</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-user prefix"></i>
                            <asp:TextBox ID="tb_RegUsername" CssClass="form-control" runat="server"></asp:TextBox>
                            <label for="form5">Your username</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-lock prefix"></i>
                            <asp:TextBox ID="tb_RegPassword" CssClass="form-control" runat="server"></asp:TextBox>
                            <label for="form6">Your password</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-lock prefix"></i>
                            <asp:TextBox ID="tb_ReapetRegPassword" CssClass="form-control" runat="server"></asp:TextBox>
                            <label for="form7">Repeat password</label>
                        </div>

                        <div class="text-center mt-2">
                            <button class="btn btn-info" data-toggle="modal" data-target="#tos">Sign up <i class="fa fa-sign-in ml-1"></i></button>
                            <asp:LinkButton ID="btn_RegisterUser" CssClass="btn btn-info" data-toggle="modal" data-target="#tos" runat="server">Sign up <i class="fa fa-sign-in ml-1"></i></asp:LinkButton>
                        </div>

                    </div>
                    <!--Footer-->
                    <div class="modal-footer">
                        <div class="options text-center col-md-12 mt-1">
                            <p id="haveAccount">Already have an account? <a href="#">Log In</a></p>
                        </div>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--Modal: Register Form-->



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
