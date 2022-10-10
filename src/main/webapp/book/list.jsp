<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("name") == null) {
        response.sendRedirect("user/login.jsp");
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GROUPII.VN</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="boostrap/css/bootstrap.css">
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
    <style>
        #logo {
            margin: 0;
            float: none;
            width: 50px;
            height: 50px;
        }
    </style>

</head>
<body style="text-align: center;">
<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed-top menu" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <a class="navbar-brand" style="margin: 0; float: none;" href="#"><img src="images/Screenshot (98).png" id="logo"></a>

        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a class="navbar-brand , comment" href="#" style="font-style: oblique">LIBRARIES OF GROUP II</a>
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
<h1>Book Management</h1>
<%--BODY--%>
<div class="container">
    <div class="searchContent" style="margin: 100px 20px 20px">
        <div class="table">
            <form action="/books" method="post">
                <table>
                    <tr>
                        <td style="border-top-color : white"><input name="searchName" type="text"
                                                                    placeholder=" What are you looking for ?"
                                                                    style="height: 50px; width: 825px; border-radius: 50px;border: 1px solid grey; text-indent: 30px">
                            <input type="hidden" name="action" value="searchByName">
                        </td>
                        <td style="border-top-color : white"><button type="submit" class="btn btn-primary search-btn"
                                                                     style="height: 50px; width: 200px;border-radius: 50px; border: 1px solid grey">Search</button>
                        </td>
                    </tr>

                </table>
            </form>
        </div>
    </div>
    <div class="searchContent" style="margin: 20px 20px">
        <div class="table" class="form-group row">
            <form action="/books" method="post">
                <table>
                    <tr>
                        <td>
                            <select name="searchOrigin" id="searchOrigin" class="form-control form-control-lg"
                                    style="height: 50px;width: 400px;border-radius: 50px;border: 1px solid grey;">
                                <option value="">Origin</option>
                                <c:forEach items="${requestScope['listBooks']}" var="book">
                                    <option value="${book.getBookOrigin()}">${book.getBookOrigin()}</option>
                                </c:forEach>
                                <input type="hidden" name="action" value="searchByOriginOrCategory">
                            </select>
                        </td>
                        <td>
                            <select name="searchCategory" id="searchCategory" class="form-control form-control-lg"
                                    style="height: 50px;width: 400px;border-radius: 50px;border: 1px solid grey;">
                                <option value="">Categories</option>
                                <c:forEach items="${requestScope['listCategories']}" var="category">
                                    <option value="${category.getBookCategoryId()}">${category.getBookCategoryName()}</option>
                                </c:forEach>
                            </select>
                            <input type="hidden" name="action" value="searchByOriginOrCategory">
                        </td>

                        <td style="border-top-color : white"><button type="submit" class="btn btn-primary search-btn"
                                                                     style="height: 50px; width: 200px;border-radius: 50px; border: 1px solid grey">Search</button>
                        </td>

                </table>
            </form>
        </div>
    </div>
    <a href="/books?action=create"
       class="btn btn-primary" style="width: 100%;border-radius: 50px;border: 1px solid grey;">Add</a>
    <div class="categoryName" style="margin-bottom: 20px">
        <h3>List of Books</h3>
    </div>
    <div>
    </div>
    <div class="productListShow" style="margin: 30px">
        <div style="padding-top: 40px; padding-bottom: 60px">
            <%--        Vòng lặp ở đây để show lần lượt tất cả sản phẩm --%>
            <c:forEach items="${requestScope['listBooks']}" var="book">

                <div class="categories-block"
                     style="margin-bottom:20px; box-shadow: 5px 5px rgba(43,134,126,0.5);border-radius: 20px; border: 1px rgba(43,134,126,0.5) solid; padding: 40px; height: 580px;">
                    <table style="margin-bottom: 60px">
                        <tr>
                            <td rowspan="5" style="height: 350px; width: 580px;"><img src="${book.getBookImage()}" height="500" width="500">
                            </td>

                            <td>Book ID: <h4>${book.getBookId()}</h4></td>
                        </tr>
                        <tr>
                            <td>Name :<h4>${book.getBookName()}</h4></td>

                        </tr>
                        <tr>
                            <td>Category ID:
                                <h4>${book.getBookCategoryId()}</h4>
                            </td>

                        </tr>
                        <tr>
                            <td style="line-height:25px; vertical-align: top">
                                Desscription :      ${book.getBookDescription()}
                            </td>
                        </tr>
                        <tr>
                            <td><a href="/books?action=view&id=${book.getId()}" class="btn btn-primary">
                                Chi Tiết</a></td>
                        </tr>
                    </table>
                    <br>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
