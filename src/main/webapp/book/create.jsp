<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 8:49 AM
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
    <h1>Librarian</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <h2>
        <a href="books?action=books" class="btn btn-primary">Back to book list</a>
    </h2>
    <h2 style="color: blue">Create New Book</h2>
</center>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5" class="table">
            <tr>
                <th>Book Id:</th>
                <td>
                    <input type="text" name="bookId" id="bookId" size="150"/>
                </td>
            </tr><tr>
            <th>Book Name:</th>
            <td>
                <input type="text" name="name" id="name" size="150"/>
            </td>
        </tr>
            <tr>
                <th>Description:</th>
                <td>
                    <input type="text" name="description" id="description" size="150"/>
                </td>
            </tr>
            <tr>
                <th>Image</th>
                <td>
                    <input type="text" name="image" id="image" size="150"/>
                </td>
            </tr>
            <tr>
                <th>Status</th>
                <td>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="status" value="new">new
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="status" value="old">old
                        </label>
                    </div>
                </td>
            </tr>
            <tr>
                <th>Category ID</th>
                <td>
                    <select name="categoryId" id="categoryId" >
                        <option value="">Category</option>
                        <c:forEach items="${requestScope['listCategories']}" var="category">
                            <option value="${category.getBookCategoryId()}">${category.getBookCategoryName()}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <th>Origin</th>
            <td>
                <select name="origin" id="origin" >
                    <option value="" size="50">Origin</option>
                    <option value="Kim Dong" size="50">Kim Dong</option>
                    <option value="Hoi Nha Van" size="50">Hoi Nha Van</option>
                    <option value="Tre" size="50">Tre</option>
                </select>
            </td>
            </tr>
            </tr>
            <th>Extra Day</th>
            <td>
                <input type="date" name="extraDate" id="extraDate" placeholder="yyyy-MM-dd" size="150"/>
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