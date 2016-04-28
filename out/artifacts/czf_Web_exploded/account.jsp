<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Furnyish Store a Ecommerce Category Flat Bootstarp Responsive Website Template | Account :: w3layouts</title>
    <link href="register/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary JavaScript plugins) -->
    <script type='text/javascript' src="register/js/jquery-1.11.1.min.js"></script>
    <!-- Custom Theme files -->
    <link href="register/css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Furnyish Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href='http://fonts.googleapis.com/css?family=Montserrat|Raleway:400,200,300,500,600,700,800,900,100'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Aladin' rel='stylesheet' type='text/css'>
    <!-- start menu -->
    <link href="register/css/megamenu.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="register/js/megamenu.js"></script>
    <script>$(document).ready(function () {
        $(".megamenu").megamenu();
    });</script>
    <script src="register/js/menu_jquery.js"></script>
    <script src="register/js/simpleCart.min.js"></script>

</head>
<body>

<!---->
<div class="container">
    <div class="registration">
        <div class="registration_left">
            <h2>new user? <span> create an account </span></h2>
            <!-- [if IE]
               < link rel='stylesheet' type='text/css' href='ie.css'/>
            [endif] -->

            <!-- [if lt IE 7]>
               < link rel='stylesheet' type='text/css' href='ie6.css'/>
            <! [endif] -->
            <script>
                (function () {

                    // Create input element for testing
                    var inputs = document.createElement('input');

                    // Create the supports object
                    var supports = {};

                    supports.autofocus = 'autofocus' in inputs;
                    supports.required = 'required' in inputs;
                    supports.placeholder = 'placeholder' in inputs;

                    // Fallback for autofocus attribute
                    if (!supports.autofocus) {

                    }

                    // Fallback for required attribute
                    if (!supports.required) {

                    }

                    // Fallback for placeholder attribute
                    if (!supports.placeholder) {

                    }

                    // Change text inside send button on submit
                    var send = document.getElementById('register-submit');
                    if (send) {
                        send.onclick = function () {
                            this.innerHTML = '...Sending';
                        }
                    }

                })();
            </script>
            <div class="registration_form">
                <!-- Form -->
                <form action="register.action" method="post" enctype="multipart/form-data">
                    <div>
                        <label>
                            <input placeholder="Username" name="user.username" type="text" tabindex="1" required autofocus>
                        </label>
                    </div>
                    <div>
                        <label>
                            <input placeholder="Picture" name="zpFile" type="file" tabindex="3" required>
                        </label>
                    </div>
                    <div>
                        <label>
                            <input placeholder="Email" name="user.email" type="text" tabindex="3" required>
                        </label>
                    </div>
                    <div>
                        <label>
                            <input placeholder="Phonenumber" name="user.phonenumber" type="text" tabindex="3" required>
                        </label>
                    </div>

                    <div class="sky_form1">
                        <ul>
                            <li><label class="radio left"><input type="radio" name="user.sex"
                                                                 checked=""><i></i>Male</label></li>
                            <li><label class="radio"><input type="radio" name="user.sex"><i></i>Female</label></li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div>
                        <label>
                            <input placeholder="Age:" name="user.age" type="text" tabindex="3" required>
                        </label>
                    </div>
                    <div>
                        <label>
                            <input placeholder="Address:" name="user.address" type="text" tabindex="3" required>
                        </label>
                    </div>
                    <div>
                        <label>
                            <input placeholder="password" type="password" name="user.password" tabindex="4" required>
                        </label>
                    </div>
                    <div>
                        <label>
                            <input placeholder="retype password" type="password" tabindex="4" required>
                        </label>
                    </div>
                    <div>
                        <input type="submit" value="create an account">
                    </div>
                    <div class="sky-form">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>i agree to mobilya.com
                            &nbsp;<a class="terms" href="#"> terms of service</a> </label>
                    </div>
                </form>
                <!-- /Form -->
            </div>
        </div>
        <div class="registration_left">
            <h2>existing user</h2>
            <div class="registration_form">
                <!-- Form -->
                <form action="contact.php" method="post">
                    <div>
                        <label>
                            <input placeholder="email:" type="email" tabindex="3" required>
                        </label>
                    </div>
                    <div>
                        <label>
                            <input placeholder="password" type="password" tabindex="4" required>
                        </label>
                    </div>
                    <div>
                        <input type="submit" value="sign in" id="register-submit">
                    </div>
                    <div class="forget">
                        <a href="#">forgot your password</a>
                    </div>
                </form>
                <!-- /Form -->
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>


</body>
</html>