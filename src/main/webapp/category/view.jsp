<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Category Information</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body,table {
            text-align: center;
        }
        img {
            width: 200px;
            height: 200px;
        }
        h1,h3 {
            color: red;

        }
    </style>
</head>
<body>
<h1>Category Information</h1>
<p>
    <a href="/categories" class="btn btn-primary">Back to Category list</a>
</p>
<form method="post">
    <fieldset>
        <table class="table">
            <tr>
                <td>Category ID: </td>
                <td>${requestScope["category"].getBookCategoryId()}</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>${requestScope["category"].getBookCategoryName()}</td>
            </tr>

            <tr>
                <td><a href="/categories?action=edit&id=${category.getId()}" class="btn btn-primary">Edit</a></td>
                <td><input type="submit" value="Delete customer" class="btn btn-danger"></td>

                <%--                <a href="/books?action=delete&id=${book.getId()}">Delete</a>--%>

            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>