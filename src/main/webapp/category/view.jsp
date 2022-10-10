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
    <title>Book Information</title>
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


                </td>
            </tr>

        </table>
    </fieldset>
</form>
</div>
</body>
</html>