<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Librarian Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bookcss.css">
</head>
<body>

<h1>Book Management</h1>
<form class="form-group search-form" action="/categories" method="post">
    <input name="search" class="form-control search-input" type="text" placeholder="Type something to search">
    <input type="hidden" name="action" value="searchBy">
    <button type="submit" class="btn btn-primary search-btn">Seacrh</button>
    <a href="/categories?action=create"
       class="btn btn-primary search-btn">Add</a>
</form>
<div align="center">
    <caption><h2>List of Categories</h2></caption>
    <table border="1" cellpadding="5" class="table">
        <tr style="background-color: #d2d0d0">
            <th>Category ID</th>
            <th>Name</th>

        </tr>
        <c:forEach var="category" items="${requestScope['listCategories']}">
            <tr>
                <td><a href="/categories?action=view&id=${category.getId()}" class="btn">${category.getBookCategoryId()}</a></td>
                <td><c:out value="${category.getBookCategoryName()}"/></td>
                <td>
                    <a href="/categories?action=edit&id=${category.getId()}" class="btn btn-primary">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>