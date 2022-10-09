<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
    }
%>

<html>
<head>
    <title>Group II</title>
</head>
<body>
    <h2>Đổi mật khẩu</h2>
    <br>
    ${msg}
    <br>
    <form action="/change" method="post">
        <table align="center">
            <tr>
                <td>Username</td>
                <td>${name}</td>
            </tr>
            <tr>
                <td>Mật khẩu cũ</td>
                <td><input type="password" name="oldPass" id="oldPass"></td>
            </tr>
            <tr>
                <td>Mật khẩu mới</td>
                <td><input type="password" name="newPass" id="pass1" onchange="validatePassword()"></td>
            </tr>
            <tr>
                <td>Nhập lại Mật khẩu mới</td>
                <td><input type="password" name="renewPass" id="pass2" onchange="validatePassword()"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Reset"></td>
            </tr>
        </table>
    </form>
    <script type="text/javascript">
        function validatePassword() {
            const pass2 = document.getElementById("pass2").value;
            const pass1 = document.getElementById("pass1").value;
            if (pass1 !== pass2)
                document.getElementById("pass2").setCustomValidity("Nhập lại mật khẩu");
            else
                document.getElementById("pass2").setCustomValidity('');
        }
    </script>
</body>
</html>