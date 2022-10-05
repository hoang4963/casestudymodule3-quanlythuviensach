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
        <a href="/roles?action=create">Add New Role</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Roles</h2></caption>
        <tr>
            <th>RoleId</th>
            <th>Name</th>
            <th>Function</th>
        </tr>
        <c:forEach var="role" items="${listRole}">
            <tr>
                <td><c:out value="${role.getRoleid()}"/></td>
                <td><c:out value="${role.getRoleName()}"/></td>
                <td>
                    <a href="/roles?action=edit&id=${role.getId()}">Edit</a>
                    <a href="/roles?action=delete&id=${role.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>