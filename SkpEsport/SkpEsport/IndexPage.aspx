﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexPage.aspx.cs" Inherits="SkpEsport.IndexPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SKP LAN</title>

    <!-- Bootstrap -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">SKP LAN</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="#">forside</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" type="button" class="text-muted" data-toggle="modal" data-target="#myModal">
                                Login
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Bruger Login</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <form method="post" action="inset_error_action.php" class="form-signin">
                                    <h2 class="form-signin-heading">Please sign in</h2>
                                    <label for="inputEmail" class="sr-only">Email address</label>
                                    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                                    <br>
                                    <label for="inputPassword" class="sr-only">Password</label>
                                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" value="remember-me" /> Remember Me
                                        </label>
                                    </div>
                                    <button class="btn btn-lg btn-primary btn-block" type="submit" id="btn_login">Sign in</button>
                                    <br>
                                    <br>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <a href="#">
                        <img src="imgs/csgo.png" alt="..." class="img-rounded img-responsive center-block">
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="#">
                        <img src="imgs/lol.png" alt="..." class="img-rounded img-responsive center-block">
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="#">
                        <img src="imgs/hots.png" alt="..." class="img-rounded img-responsive center-block">
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="#">
                        <img src="imgs/overwatch.png" alt="..." class="img-rounded img-responsive center-block">
                    </a>
                </div>
            </div>
        </div>


        <script src="Scripts/jquery-1.9.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script>
            var cacheName = "SKPEsport-Cache";
            
            // init cache of resources
            self.addEventListener('install', function (event) {
                event.waitUntil(
                    caches.open(cacheName).then(function (cache) {
                        return cache.addAll(
                            [
                                '/imgs/csgo.png',
                                '/imgs/hots.png',
                                '/imgs/lol.png',
                                '/imgs/overwatch.png',
                                '/Content/bootstrap.min.css',
                                '/Scripts/jquery-1.9.1.min.js',
                                '/Scripts/bootstrap.min.js'
                            ]
                        );
                    })
                );
            });

            // for new information
            self.addEventListener('fetch', function (event) {
                event.respondWith(
                    caches.open(cacheName).then(function (cache) {
                        return cache.match(event.request).then(function (response) {
                            return response || fetch(event.request).then(function (response) {
                                cache.put(event.request, response.clone());
                                return response;
                            });
                        });
                    })
                );
            });

            // fallback if user is offline
            self.addEventListener('fetch', function (event) {
                event.respondWith(fetch(event.request));
            });
        </script>
    </form>
</body>
</html>
