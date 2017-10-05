<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexPage.aspx.cs" Inherits="SkpEsport.IndexPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
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
            background-color: #708D81;
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
    <form id="WebContentForm" runat="server">

        <!--Main Navigation-->

        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-custom scrolling-navbar fixed-top">
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
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target="#tosNav">Rules</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://discord.gg/nUpyP6M" target="_blank">Discord</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target="#teamModal">Team Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target="#profileModal">Profile</a>
                        </li>

                    </ul>
                </div>
            </nav>
        </header>
        <!--Main Navigation-->


        <!-- Main layout-->

        <main>

            <div class="main-wrapper">

                <div class="container">

                    <div class="starter-template">
                        <h1>SKP esport  website</h1>
                        <p class="lead">click on a image to see the score list</p>
                    </div>

                </div>
                <!-- /.container -->

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="view hm-zoom">
                                <a href="game-score-list.html">
                                    <img src="Imgs/PNG/csgo.png" class="img-fluid ">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="view hm-zoom">
                                <a href="game-score-list.html">
                                    <img src="Imgs/PNG/overwatch.png" class="img-fluid ">
                                </a>
                            </div>
                        </div>
                        <!-- </div>

                    <div class="row"> -->
                        <div class="col-md-3">
                            <div class="view hm-zoom">
                                <a href="game-score-list.html">
                                    <img src="Imgs/PNG/hots.png" class="img-fluid ">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="view hm-zoom">
                                <a href="game-score-list.html">
                                    <img src="Imgs/PNG/lol.png" class="img-fluid ">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- End of Main layout -->


    <%--    <!--Modal: Login Form-->
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
                            <input type="text" id="form1" class="form-control">
                            <label for="form1">Your email</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-lock prefix"></i>
                            <input type="password" id="form2" class="form-control">
                            <label for="form2">Your password</label>
                        </div>

                        <div class="text-center mt-2">
                            <button class="btn btn-info">Log in <i class="fa fa-sign-in ml-1"></i></button>
                        </div>

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
        <!--End of Modal: Login Form-->--%>


       <%-- <!--Modal: Register Form-->
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
                            <input type="email" id="form3" class="form-control">
                            <label for="form3">Your email</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-user prefix"></i>
                            <input type="text" id="form5" class="form-control">
                            <label for="form5">Your username</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-lock prefix"></i>
                            <input type="password" id="form6" class="form-control">
                            <label for="form6">Your password</label>
                        </div>

                        <div class="md-form form-sm">
                            <i class="fa fa-lock prefix"></i>
                            <input type="password" id="form7" class="form-control">
                            <label for="form7">Repeat password</label>
                        </div>

                        <div class="text-center mt-2">
                            <button class="btn btn-info" data-toggle="modal" data-target="#tos">Sign up <i class="fa fa-sign-in ml-1"></i></button>
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
        <!--Modal: Register Form-->--%>


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
                            <input type="text" id="form8" class="form-control">
                            <label for="form8">Your Team name</label>
                        </div>

                        <div class="form-row">
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                    CS:GO
                           
                                </label>
                            </div>
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                    Heroes of the Storm
                           
                                </label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    League of Legends
                           
                                </label>
                            </div>
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option4">
                                    Overwatch
                           
                                </label>
                            </div>
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
                            <input type="text" id="form9" class="form-control">
                            <label for="form9">Your email</label>
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

        <!--Modal: Rules Form for nav -->
        <div class="modal fade" id="tosNav" tabindex="-1" role="dialog" aria-labelledby="tosNav" aria-hidden="true">
            <div class="modal-dialog cascading-modal modal-lg" role="document">
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
                                Regler:
                                <br/>
                                 • E-Sport om onsdagen kommer til at forløbe fra 8:00-11:30, hvor der spilles turnering eller træning i et af de udvalgte
                                spil. Man har lov til at holde sin pause mellem 9:30-10:00, men her gælder de normale regler med at man skal være til rådighed.
                                <br/>
                                • Fredag er der taktik og planlægning for holdene (ingen spil) – dette strækker sig fra 12:00-15:00 • Det er kun e-sport
                                som bliver spillet. Hvis man ikke deltager i e-sport, så er det en helt normal arbejdsdag. Der er dog en undtagelse at hvis
                                man hellere vil spille et andet spil, så kan man samle et team i det spil og udøve e-sport på den måde.
                                <br/>
                                 • Arbejde over e-sport
                                – Hvis der kommer en arbejdsopgave tager man selvfølgelig den opgave og så finder man sammen med sit team og modstanderne
                                ud af hvordan kampen så blive afklaret. 
                                <br/>
                                • Man kan kun være med i 1 af turneringerne, da de køres samtidig. Man kan godt sidde
                                som udskifter til en anden turnering hvis der skulle komme en sygemelding.
                                <br/>
                                 • Der spilles 1 turneringskamp hver onsdag, så
                                det er fleksibelt mellem de 2 team hvornår de afvikler kampen bare det er indenfor tidsrummet 8:00-11:30. 
                                <br/>
                                • Ved sygemelding
                                i forbindelse med turneringen kan man forsøge at finde en person som kan overtage pladsen eller må kampen gå til det hold
                                som kan stille med fuldt hold. Der kan stadig trænes som de spillere som er mødt op. 
                                <br/>
                                • Hvis man ligger sygemeldt eller ikke
                                er tilstede i SKP’en kan man ikke deltage i turneringskampene. 
                                <br/>                                
                                • Ordentlig omgangstone og ikke for alt for højtråbende.
                       
                            </p>
                        </div>

                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--End of Modal: Rules Form for nav-->

        <!--Modal: Profile Form-->
        <div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="profileModal" aria-hidden="true">
            <div class="modal-dialog cascading-modal modal-lg" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header bg-dark darken-3 white-text">
                        <h4 class="title"><i class="fa fa-user"></i>username</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">


                        <div class="row">
                            <div class="col-7">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="md-form form-sm">
                                            <i class="fa fa-envelope prefix"></i>
                                            <input type="text" readonly class="form-control-plaintext" value="email">
                                        </div>
                                    </div>

                                    <div class="col-6">
                                        <div class="md-form form-sm">
                                            <i class="fa fa-lock prefix"></i>
                                            <input type="password" id="form10" class="form-control">
                                            <label for="form10">New password</label>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="md-form pb-3 form-sm">
                                            <i class="fa fa-lock prefix"></i>
                                            <input type="password" id="Form-pass11" class="form-control">
                                            <label for="Form-pass11">Your password</label>
                                        </div>
                                    </div>

                                    <div class="col-6">
                                        <div class="form-check col-md-12">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                                CS:GO
                                       
                                            </label>
                                        </div>

                                        <div class="form-check col-md-12">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                                Heroes of the Storm
                                       
                                            </label>
                                        </div>

                                    </div>

                                    <div class="col-6">
                                        <div class="form-check col-md-12">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                                League of Legends
                                       
                                            </label>
                                        </div>

                                        <div class="form-check col-md-12">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option4">
                                                Overwatch
                                       
                                            </label>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="col-5">
                                <div class="md-form">
                                    <i class="fa fa-pencil prefix grey-text"></i>
                                    <textarea type="text" id="Form-pass15" class="md-textarea" style="height: 200px"></textarea>
                                    <label for="Form-pass15">Profile bio</label>
                                </div>
                            </div>


                        </div>

                        <div class="text-center mt-2">
                            <button class="btn btn-info" id="acceptTOS">Update profile <i class="fa fa-sign-in ml-1"></i></button>
                        </div>

                    </div>
                </div>

            </div>
            <!--/.Content-->
        </div>
        <!--End of Modal: Profile Form-->




        <!--Modal: update Team Form-->
        <div class="modal fade" id="teamModal" tabindex="-1" role="dialog" aria-labelledby="teamModal" aria-hidden="true">
            <div class="modal-dialog cascading-modal" role="document">
                <!--Content-->
                <div class="modal-content">

                    <!--Header-->
                    <div class="modal-header bg-dark darken-3 white-text">
                        <h4 class="title"><i class="fa fa-user"></i>team name</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">
                        <div class="md-form form-sm">
                            <i class="fa fa-envelope prefix"></i>
                            <input type="text" id="Form-pass13" class="form-control">
                            <label for="Form-pass13">Your Team name</label>
                        </div>

                        <div class="form-row">
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                    CS:GO
                           
                                </label>
                            </div>
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                    Heroes of the Storm
                           
                                </label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    League of Legends
                           
                                </label>
                            </div>
                            <div class="form-check col-md-6">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option4">
                                    Overwatch
                           
                                </label>
                            </div>
                        </div>

                        <div class="text-center mt-2">
                            <button class="btn btn-info">Update Team <i class="fa fa-sign-in ml-1"></i></button>
                        </div>

                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--End of Modal: update Team Form-->


        <script type="text/javascript" src="./node_modules/mdbootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="./node_modules/mdbootstrap/js/mdb.min.js"></script>

        <script>
            //$('#loginModal').modal('show')

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

            $("#acceptTOS").click(function () {
                $('#tos').modal('hide')
            });
        </script>
    </form>
</body>
</html>
