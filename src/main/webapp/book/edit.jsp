<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Librarian Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
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
<center>
    <h1>Edit Book</h1>
    <h2>
        <a href="books?action=books" class="btn btn-primary">Back List All Book</a>
    </h2>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
</center>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">

            <c:if test="${book != null}">
                <input type="hidden" name="id" value="<c:out value='${book.id}' />"/>
            </c:if>
            <tr>
                <th>Book ID :</th>
                <td>
                    <input type="text" name="bookId" size="50"
                           value="${requestScope["book"].getBookId()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Book Name :</th>
                <td>
                    <input type="text" name="name" size="50"
                           value="${requestScope["book"].getBookName()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Description :</th>
                <td>
                    <input type="text" name="description" size="150"
                           value="${requestScope["book"].getBookDescription()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Image :</th>
                <td>
                    <input type="text" name="image" size="150"
                           value="${requestScope["book"].getBookImage()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Book Status :</th>
                <td>
                    <input type="text" name="status" size="50"
                           value="${requestScope["book"].getBookStatus()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Category ID:</th>
                <td>
                    <input type="text" name="category_id" size="50"
                           value="${requestScope["book"].getBookCategoryId()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Book Origin:</th>
                <td>
                    <input type="text" name="origin" size="50"
                           value="${requestScope["book"].getBookOrigin()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Extra Date:</th>
                <td>
                    <input type="text" name="extraDate" size="50"
                           value="${requestScope["book"].getExtraDate()}"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" class="my-1 btn btn-success btn-block"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>