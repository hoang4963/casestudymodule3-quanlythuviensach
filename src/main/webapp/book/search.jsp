<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/7/2022
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Librarian Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body,table {
            text-align: center;
        }
        img {
            width: 250px;
            height: 250px;
        }
        table{
            width: 500px;
            margin: 0 auto;
            border: 2px solid blue;
        }
        th{
            color: green;
            font-size: larger;
            font-weight: bold;
            border: 1px solid black;
            border-collapse: collapse;
        }
        td{
            text-align: center;
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>

<h1>Book Management</h1>

<div align="center">
    <caption><h2>List of Books</h2></caption>
    <table border="1" cellpadding="5" class="table">
        <tr style="background-color: #d2d0d0">
            <th>Book ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Image</th>
            <th>Category ID</th>
            <th>ExtraDate</th>
        </tr>
        <c:forEach var="book" items="${requestScope['listBooks']}">
            <tr>

                <td><a href="/books?action=view&id=${book.getId()}" class="btn">${book.getBookId()}</a></td>
                <td><c:out value="${book.getBookName()}"/></td>
                <td><c:out value="${book.getBookDescription()}"/></td>
                <td><img class='avatar' src="<c:out value="${book.getBookImage()}"></c:out>"></td>

                <td><c:out value="${book.getBookCategoryId()}"/></td>

                <td><c:out value="${book.getExtraDate()}"/></td>
                <td>
                    <a href="/books?action=edit&id=${book.getId()}" class="btn btn-primary">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div><a href="/books" class="bt n btn-primary">back main menu</a></div>
</body>
</html>
</body>
</html>

