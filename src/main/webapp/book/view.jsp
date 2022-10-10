<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Information</title>
    <link rel="stylesheet" href="style.css">
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
        #logo {
            margin: 0;
            float: none;
            width: 50px;
            height: 50px;
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
                    <a class="navbar-brand , comment" href="role/librarian.jsp" style="font-style: oblique">LIBRARIES OF GROUP II</a>
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
<h1>Book Information</h1>
<p>
    <a href="/books" class="btn btn-primary">Back to Book list</a>
</p>
<form>
    <fieldset>
        <table class="">
            <tr>
                <td>Name: </td>
                <td>${requestScope["book"].getBookId()}</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>${requestScope["book"].getBookName()}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${requestScope["book"].getBookDescription()}</td>
            </tr>
            <tr>
                <td>Image </td>
                <td><img class='avatar' src="<c:out value="${requestScope['book'].getBookImage()}"></c:out>"></td>
            </tr>
            <tr>
                <td>Status: </td>
                <td>${requestScope["book"].getBookStatus()}</td>
            </tr>
            <tr>
                <td>Category ID: </td>
                <td>${requestScope["book"].getBookCategoryId()}</td>
            </tr>
            <tr>
                <td>Origin: </td>
                <td>${requestScope["book"].getBookOrigin()}</td>
            </tr>
            <tr>
                <td>Origin: </td>
                <td>${requestScope["book"].getExtraDate()}</td>
            </tr>

            <tr>
                <td><a href="/books?action=edit&id=${requestScope["book"].getId()}" class="btn btn-primary">Edit</a></td>
                <td><div class="container">
                <!-- Trigger the modal with a button -->
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Delete</button>

                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">ARE YOU SURE?</h4>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <a href="/categories?action=delete&id=${requestScope["category"].getId()}" type="button" class="btn btn-default">Delete</a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>