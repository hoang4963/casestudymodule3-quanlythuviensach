<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<%--    <link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all"/>--%>
<%--    <link href="/css/style.css" rel='stylesheet' type='text/css' media="all"/>--%>
</head>
<body>
<center>

    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

    <h1 class="w3ls">Đăng Ký Tài khoản</h1>
    <h2>
        <a href="customers?action=customers">List All Customers</a>
    </h2>
</center>
<div align="center">
    <form method="post" >
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Role</h2>
            </caption>
            <tr>
                <th>Customer ID:</th>
                <td>
                    <input type="text" name="CustomerId" id="CustomerId" placeholder="CustomerId" size="45"
                           title="Please enter your CustomerId"/>
                </td>
            </tr>
            <tr>
                <th>Role Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" placeholder="Name"
                           title="Please enter your First Name"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><input type="email" id="email" name="email" placeholder="mail@gmail.com"
                           title="Please enter a valid email"></td>
            </tr>
            <tr>
                <th>Password:</th>
                <td>
                    <input type="password"  name="password" placeholder="Password" id="password"
                           title="Please enter a valid Password">
                </td>
            </tr>
            <th>Role :</th>
            <td><select name="role_Id" id="role_Id" class="form-control form-control-lg"
                        style="height: 70px;width: 400px;border-radius: 50px;border: 1px solid grey;">
                <option value="R01">Admin</option>
                <option value="R02">Thủ thư</option>
                <option value="R03">Khách hàng</option>
            </select>
            </td>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Đăng ký"/>
                </td>
            </tr>
        </table>
    </form>
</div>

</script>
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
</body>
</html>