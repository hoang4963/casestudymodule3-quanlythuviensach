<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Librarian Application</title>
</head>
<body>
<center>
  <h1>Category</h1>
  <p>
    <c:if test='${requestScope["message"] != null}'>
      <span class="message">${requestScope["message"]}</span>
    </c:if>
  </p>
  <h2>
    <a href="categories?action=categories">Back to Category list</a>
  </h2>
</center>
<div align="center">
  <form method="post">
    <table border="1" cellpadding="5">
      <caption>
        <h2 style="color: blue">Create New Category</h2>
      </caption>
      <tr>
        <th>Category Id:</th>
        <td>
          <input type="text" name="categoriesId" id="categoriesId" size="100" placeholder="CG+Number"/>
        </td>
      </tr>
      <tr>
        <th>Category Name:</th>
        <td>
          <input type="text" name="name" id="name" size="100"/>
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
