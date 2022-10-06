<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Customer Management Application</title>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"
       placeholder="<%=request.getAttribute("status")%>">
<center>
    <h1>Customer Management</h1>
    <h2>
        <a href="customers?action=customers">List All Customers</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Customer</h2>
            </caption>
            <tr>
                <th>Customer ID:</th>
                <td>
                    <input type="text" name="customerId" id="customerId" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Customer Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Customer Birthday:</th>
                <td>
                    <input type="text" name="birthday" id="birthday"  size="45"/>
                </td>
            </tr>
            <tr>
                <th>Customer Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Customer password:</th>
                <td>
                    <input type="text" name="password" id="password" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Customer phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Customer avatar:</th>
                <td>
                    <input type="text" name="avatar" id="avatar" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Customer role:</th>
                <td>
                    <input type="text" name="roleId" id="RoleId" size="45"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
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
</body>
</html>