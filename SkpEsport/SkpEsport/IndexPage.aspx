<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexPage.aspx.cs" Inherits="SkpEsport.IndexPage" %>

<!DOCTYPE html>

<html>
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
    <form id="WebContentForm" runat="server">
        <!--Main Navigation-->
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-black scrolling-navbar fixed-top">
                <a class="navbar-brand" href="#"><strong>SKP eSport</strong></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target="#createTeam">Create Team</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target="#registerModal">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target="#loginModal">Login</a>
                        </li>
                        <li>
                            <asp:Button ID="btn_test" OnClick="btn_test_OnClick" Text="Test" runat="server" />
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!--Main Navigation-->

        <br>
        <br>
        <br>


        <!-- Main layout-->

        <main>

            <div class="main-wrapper">

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="view hm-zoom">
                                <img src="imgs/overwatch.png" class="img-fluid mx-auto d-block" alt="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="view hm-zoom">
                                <img src="imgs/csgo.png" class="img-fluid mx-auto d-block" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="view hm-zoom">
                                <img src="imgs/hots.png" class="img-fluid mx-auto d-block" alt="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="view hm-zoom">
                                <img src="imgs/lol.png" class="img-fluid mx-auto d-blocks" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- End of Main layout -->


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


        <!--Modal: Create Team Form-->
        <div class="modal fade" id="createTeam" tabindex="-1" role="dialog" aria-labelledby="createTeam" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">
                <!--Content-->
                <div class="modal-content">

                    <!--Header-->
                    <div class="modal-header bg-dark darken-3 white-text">
                        <h4 class="title"><i class="fa fa-user"></i>Create Team</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form form-sm">
                            <i class="fa fa-envelope prefix"></i>
                            <input type="text" id="form30" class="form-control">
                            <label for="form30">Your Team name</label>
                        </div>

                        <div class="text-center mt-2">
                            <button class="btn btn-info">Create Team <i class="fa fa-sign-in ml-1"></i></button>
                        </div>

                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--End of Modal: Create Team Form-->

        <!--Modal: Forgot Password Form-->
        <div class="modal fade" id="ForgotPassword" tabindex="-1" role="dialog" aria-labelledby="ForgotPassword" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header bg-dark darken-3 white-text">
                        <h4 class="title"><i class="fa fa-user"></i>Forgot Password</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form form-sm">
                            <i class="fa fa-envelope prefix"></i>
                            <input type="text" id="form32" class="form-control">
                            <label for="form32">Your email</label>
                        </div>

                        <div class="text-center mt-2">
                            <button class="btn btn-info">Send password <i class="fa fa-sign-in ml-1"></i></button>
                        </div>

                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--End of Modal: Forgot Password Form-->





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
