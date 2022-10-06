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

</head>
<body>
<center>
    <h1>Edit Category</h1>
    <h2>
        <a href="categories?action=books">Back List All Categories</a>
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

            <c:if test="${category != null}">
                <input type="hidden" name="id" value="<c:out value='${category.id}' />"/>
            </c:if>
            <tr>
                <th>Category ID :</th>
                <td>
                    <input type="text" name="categoriesId" size="50"
                           value="${requestScope["category"].getBookCategoryId()}"
                    />
                </td>
            </tr>
            <tr>
                <th>Name :</th>
                <td>
                    <input type="text" name="name" size="50"
                           value="${requestScope["category"].getBookCategoryName()}"
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
