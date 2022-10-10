<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Error - 404</title>
    <link rel="stylesheet" href="css/error404.css">
</head>
<body>
<div>
    <div id="error-box">
        <div class="dot"></div>
        <div class="dot two"></div>
        <div class="face2">
            <div class="eye"></div>
            <div class="eye right"></div>
            <div class="mouth sad"></div>
        </div>
        <br>
        <br>
        <div class="shadow move"></div>
        <div class="message"><h1 class="alert">Error!</h1><p style="color: white">oh no, something went wrong.</div>
        <button onclick="window.location.href='/index.jsp'" class="button-box"><h1 class="red">Back Menu</h1></button>

    </div>
</div>
</body>
</html>
