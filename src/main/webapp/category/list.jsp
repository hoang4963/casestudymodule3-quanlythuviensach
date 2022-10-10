<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("name") == null) {
        response.sendRedirect("user/login.jsp");
    }
%>
<html>
<head>
    <title>Librarian Application</title>
    <title>Customer Management Application</title>
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href='text/css' rel='stylesheet'>


    <script type='text/javascript' src=''></script>
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
    #logo {
    margin: 0;
    float: none;
    width: 50px;
    height: 50px;
    }
    body,table {
        text-align: center;
    }
    table{
        margin-left: auto;
        margin-right: auto ;
    }
    </style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed-top menu" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <a class="navbar-brand" style="margin: 0; float: none;" href="#"><img src="images/Screenshot (98).png" id="logo"></a>

        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a class="navbar-brand , comment" href="role/admin.jsp" style="font-style: oblique">LIBRARIES OF GROUP II</a>
                </li>
            </ul>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" >
            <ul class="navbar-nav me-auto, comment" style="font-size: 14px">
                <li class="nav-item" ><a class="nav-link" href="#about">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/login.jsp" class="btn btn-info">Logout</a></li>
                <li class="nav-item" style="padding-top: 14px"><a href="#" ></a><%=session.getAttribute("name")%></li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div>
</nav>

<h1>Book Management</h1>
<span>
<form class="form-group search-form" action="/categories" method="post">
    <table>
        <tr>
            <td><input name="search" class="form-control me-2" type="text" placeholder="Type something to search">
            <input type="hidden" name="action" value="searchBy"></td>
            <td>
            <button type="submit" class="btn btn-primary search-btn btn-lg">Seacrh</button>
            </td>
        </tr>
    </table>
</form>
    <a href="/categories?action=create"
       class="btn btn-primary search-btn btn-lg">Add</a>
</span>
<h2>List of Categories</h2>


<div align="center">

    <table border="1" cellpadding="5" class="table">
        <tr style="background-color: #d2d0d0">
            <th>Category ID</th>
            <th>Name</th>

        </tr>
        <c:forEach var="category" items="${requestScope['listCategories']}">
            <tr>
                <td><a href="/categories?action=view&id=${category.getId()}" class="btn" >${category.getBookCategoryId()}</a></td>
                <td><c:out value="${category.getBookCategoryName()}"/></td>
                <td>
                    <a href="/categories?action=edit&id=${category.getId()}" class="btn btn-primary">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>