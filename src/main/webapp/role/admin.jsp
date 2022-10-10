<%--
  Created by IntelliJ IDEA.
  User: duonghieu
  Date: 06/10/2022
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Group II</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
            crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
          rel="stylesheet" type="text/css"/>
    <link
            href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
            rel="stylesheet" type="text/css"/>
    <link href="css/index-styles.css" rel="stylesheet"/>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top menu" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Portfolio</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="/user/changePassword.jsp">Đổi mật khẩu</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="/user/login.jsp">Logout</a></li>
                <li class="nav-item mx-0 mx-lg-1 bg-danger"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="/customer/editCustomer.jsp"><%=session.getAttribute("name")%></a></li>

            </ul>
        </div>
    </div>
</nav>
<%--body--%>
<div>
    <a href="customers">Khách hàng</a>
    <a href="/books">Sách</a>
    <a href="borrowers">Thông tin người thuê sách</a>
    <a href="BorrowerBookServlet">Thông tin sách</a>
    <a href="BookLoanVoucherServlet">Phiếu thuê</a>
    <a href="categories">Danh mục sách</a>
</div>

<h3>Trang admin</h3>

</body>
</html>
