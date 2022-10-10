<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Book</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body,table {
            text-align: center;
        }
        img {
            width: 100px;
            height: 100px;
        }
        h1,h3 {
            color: red;

        }
    </style>
</head>
<body>
<<<<<<< HEAD
<h1>Delete Book Sucess!!!!</h1>
=======
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

<h1>Delete product Sucess!!!!</h1>
>>>>>>> hieu
<p>
    <a href="/books" class="btn btn-danger btn-lg">Back to Book list</a>
</p>
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
</html>
