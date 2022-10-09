<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <title>Group II</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
    <link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/style.css" rel='stylesheet' type='text/css' media="all"/>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"
       placeholder="<%=request.getAttribute("status")%>">
<h1 class="w3ls">Đăng Ký</h1>
<div class="content-w3ls">
    <div class="content-agile1">
        <h2 class="agileits1">Official</h2>
        <p class="agileits2">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>
    <div class="content-agile2">
        <form action="/register" method="post">
            <div class="form-control w3layouts">
                <input type="text" id="firstname" name="" placeholder="First Name"
                       title="Please enter your First Name">
            </div>

            <div class="form-control w3layouts">
                <input type="email" id="email" name="email" placeholder="mail@gmail.com"
                       title="Please enter a valid email">
            </div>

            <div class="form-control agileinfo">
                <input type="password" class="lock" name="password" placeholder="Password" id="password1"
                       onchange="validatePassword()">
            </div>

            <div class="form-control agileinfo">
                <input type="password" class="lock" name="confirm-password" placeholder="Confirm Password"
                       id="password2" onchange="validatePassword()">
            </div>

            <input type="submit" class="register" value="Register">
        </form>
        <script type="text/javascript">
            function validatePassword() {
                const pass2 = document.getElementById("password2").value;
                const pass1 = document.getElementById("password1").value;
                if (pass1 !== pass2)
                    document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                else
                    document.getElementById("password2").setCustomValidity('');
                //empty string means no validation error
            }
        </script>
        <div>
            <a href="/user/login.jsp" class="signup-image-link"> Quay lại trang đăng nhập</a>
        </div>

        <ul class="social-agileinfo wthree2">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
        </ul>
    </div>
    <div class="clear"></div>
</div>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
    const status = document.getElementById("status").value;
    if (status == "success") {
        swal("Cảm ơn", "Bạn đã đăng ký thành công", "success")
    }
</script>
<p class="copyright w3l">© 2017 Official Signup Form. All Rights Reserved | Design by <a href="https://w3layouts.com/"
                                                                                         target="_blank">W3layouts</a>
</p>
</body>
</html>
