<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

    <title>Group II</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords"
          content="Existing Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //Meta-Tags -->

    <link href="/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>

    <!-- Style -->
    <link rel="stylesheet" href="/css/style1.css" type="text/css" media="all">

    <!-- Fonts -->
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
    <!-- //Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

<h1>Đăng nhập</h1>

<div class="w3layoutscontaineragileits">
    <h2>Login here</h2>
    <form action="/login" method="post">
        <input type="email" name="email" id="email" placeholder="EMAIL">
        <input type="password" name="password" id="password" placeholder="PASSWORD">
        <ul class="agileinfotickwthree">
            <li>
                <input type="checkbox" id="brand1" value="">
                <label for="brand1"><span></span>Remember me</label>
                <a href="#">Forgot password?</a>
            </li>
        </ul>
        <div class="aitssendbuttonw3ls">
            <input type="submit" value="LOGIN">
<%--            <p> To register new account <span>→</span> <a class="w3_play_icon1" href="/customer/createCustomer.jsp"> Click--%>
<%--                Here</a>--%>
<%--            </p>--%>
            <div class="clear"></div>
        </div>
    </form>
</div>


<%--<div class="w3footeragile">--%>
<%--    <p> &copy; 2017 Existing Login Form. All Rights Reserved | Design by <a href="http://w3layouts.com" target="_blank">W3layouts</a>--%>
<%--    </p>--%>
<%--</div>--%>


<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<!-- pop-up-box-js-file -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<!--//pop-up-box-js-file -->
<script>
    $(document).ready(function () {
        $('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
    const status = document.getElementById("status").value;
    if (status == "failed") {
        swal("Xin lỗi", "Bạn vui lòng nhập lại tài khoản hoặc mật khẩu", "error")
    }
</script>

</body>
<!-- //Body -->

</html>