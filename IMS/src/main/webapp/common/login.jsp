<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS+JS/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS+JS/css/nice-select.css">
        <link rel="stylesheet" href="CSS+JS/css/font-awesome.min.css">
        <link rel="stylesheet" href="CSS+JS/css/icofont.css">
        <link rel="stylesheet" href="CSS+JS/css/slicknav.min.css">
        <link rel="stylesheet" href="CSS+JS/css/owl-carousel.css">
        <link rel="stylesheet" href="CSS+JS/css/datepicker.css">
        <link rel="stylesheet" href="CSS+JS/css/animate.min.css">
        <link rel="stylesheet" href="CSS+JS/css/magnific-popup.css">      
        <link rel="stylesheet" href="CSS+JS/css/normalize.css">
        <link rel="stylesheet" href="CSS+JS/css/style.css">
        <link rel="stylesheet" href="CSS+JS/css/responsive.css">        
        <link rel="stylesheet" href="CSS+JS/css/customcss.css">

    </head>
    <body>

        <!-- Header Area -->
        <header class="header" style="padding-bottom: 100px">
            <!-- Header Inner -->
            <div class="header-inner">
                <div class="container">
                    <div class="inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-12">
                                <!-- Start Logo -->
                                <div class="logo">
                                    <a href="/IMS/home"><img src="CSS+JS/img/logo.png" alt="#" style="width: 120px; height: 50px;"></a>
                                </div>
                                <!-- End Logo -->
                            </div>
                            <div class="col-lg-7 col-md-9 col-12">
                                <!-- Main Menu -->
                                <div class="main-menu">
                                    <nav class="navigation">
                                        <ul class="nav menu">
                                            <li class="active"><a href="index.html">Home </a>
                                            </li>
                                            <li><a href="/IMS/about-us">About Us</a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <!--/ End Main Menu -->
                            </div>
                            <div class="col-lg-2 col-12">
                                <div class="get-quote">
                                    <a href="/IMS/login" class="btn">Sign in</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Header Inner -->
        </header>
        <!-- End Header Area -->       

        <div class="col-3" style="margin: 0 auto; padding-top: 50px;background-color: #f5f5f5; border: 1px solid #ccc; border-radius: 10px; "">
            <div class="div-center">
                <div class="content">
                    <h3 >Login</h3>
                    <hr />
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="email">Email address</label>
                            <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary" value="Login">Login</button>
                        <hr/>
                        <button type="button" class="btn btn-link" id="signupButton" style="background-color: #FF7F50; ">Signup</button>
                        <hr>
                        <button type="button" class="btn btn-link" id="resetPasswordButton" style="background-color: #50BF44;">Reset Password</button>
                        <script>
                            // Get the "Signup" button element by its ID
                            const signupButton = document.getElementById('signupButton');

                            // Add a click event listener to navigate to /sign-up when the button is clicked
                            signupButton.addEventListener('click', function () {
                                window.location.href = '/IMS/register'; // Redirect to /sign-up
                            });

                            // Get the "Reset Password" button element by its ID
                            const resetPasswordButton = document.getElementById('resetPasswordButton');

                            // Add a click event listener to navigate to /change-password when the button is clicked
                            resetPasswordButton.addEventListener('click', function () {
                                window.location.href = '/IMS/change-password'; // Redirect to /change-password
                            });
                        </script>


                        <br>
                    </form>
                </div>
                </span>
            </div>
        </div>


        <!-- Footer Area -->
        <footer id="footer" class="footer " style="padding-top: 150px">           
            <!-- Copyright -->
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="copyright-content">
                                <p>© Copyright 2023  |  Developed by <a href="/IMS/about-us" >Group 4 - SWD392 </a> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Copyright -->
        </footer>
        <!--/ End Footer Area -->

    </body>
</html>


