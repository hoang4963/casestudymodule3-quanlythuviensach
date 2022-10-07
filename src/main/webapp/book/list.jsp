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


</head>
<body style="text-align: center;">
<h1>Book Management</h1>
<%--BODY--%>
<div class="container">
    <div class="searchContent" style="margin: 100px 0">
        <div class="table">
            <form action="/search" method="post">
                <table>
                    <tr>
                        <td style="border-top-color : white"><input name="searchName" type="text"
                                                                    placeholder=" What are you looking for ?"
                                                                    style="height: 70px; width: 800px; border-radius: 50px;border: 1px solid grey; text-indent: 30px">
                        </td>
                        <td style="border-top-color : white"><input type="submit" value="Search"
                                                                    style="height: 70px; width: 200px;border-radius: 50px; border: 1px solid grey">
                        </td>
                    </tr>
                    <tr>
                        <td style="border-top-color : white; text-indent: 30px; color: red"><i>${announcement}</i></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>


    <div class="categoryName" style="margin-bottom: 20px">
        <h3>List of Books</h3>
    </div>
    <div>
    </div>
    <div class="productListShow" style="margin: 30px">
        <div style="padding-top: 40px; padding-bottom: 60px">
            <%--        Vòng lặp ở đây để show lần lượt tất cả sản phẩm sau SEARCH--%>
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
