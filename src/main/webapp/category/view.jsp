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
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href='text/css' rel='stylesheet'>
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}css/page.css">

    <script type='text/javascript' src=''></script>
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
<<<<<<< HEAD

    <title>Book Information</title>

=======
    <title>Book Information</title>
>>>>>>> trung
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/login.jsp" class="btn btn-info">Logout</a></li>
                <li class="nav-item" style="padding-top: 14px"><a href="#" ></a><%=session.getAttribute("name")%></li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div>
</nav>
<h1>Category Information</h1>
<p>
    <a href="/categories" class="btn btn-primary">Back to Book list</a>
</p>
<div class="container">
<form>
    <fieldset>
        <table class="table">
            <tr>
                <td>Category ID: </td>
                <td>${requestScope["category"].getBookCategoryId()}</td>
            </tr>
            <tr>
                <td>Category Name: </td>
                <td>${requestScope["category"].getBookCategoryName()}</td>
            </tr>

            <tr>
                <td><a href="/categories?action=edit&id=${requestScope["category"].getId()}" class="btn btn-info">Edit</a></td>
                <%--                <td><input type="submit" value="delete" class="btn btn-danger"></td>--%>

                <%--                <td><a href="/categories?action=delete&id=${requestScope["category"].getId()}" class="btn btn-danger">Delete</a></td>--%>
                <td>
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Delete</button>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">ARE YOU SURE?</h4>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <a href="/categories?action=delete&id=${requestScope["category"].getId()}" type="button" class="btn btn-default">Delete</a>
                                </div>
                            </div>

                        </div>
                    </div>

                </td>
            </tr>

        </table>
    </fieldset>
</form>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</div>

</body>
</html>