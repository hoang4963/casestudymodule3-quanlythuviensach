<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Role Management Application</title>
</head>
<body>
<center>
  <h1>Role Management</h1>
  <h2>
    <a href="roles?action=roles">List All Roles</a>
  </h2>
</center>
<div align="center">
  <form method="post">
    <table border="1" cellpadding="5">
      <caption>
        <h2>
          Edit Role
        </h2>
      </caption>
      <c:if test="${role != null}">
        <input type="hidden" name="id" value="<c:out value='${role.id}' />"/>
      </c:if>
      <tr>
        <th>Role Id:</th>
        <td>
          <input type="text" name="roleId" size="45"
                 value="<c:out value='${role.roleid}' />"
          />
        </td>
      </tr>
      <tr>
        <th>Role Name:</th>
        <td>
          <input type="text" name="name" size="45"
                 value="<c:out value='${role.roleName}' />"
          />
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <input type="submit" value="Save"/>
        </td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>