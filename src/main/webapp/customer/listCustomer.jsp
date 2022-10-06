<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
</head>
<body>
<center>
    <h1>Customer Management</h1>
    <h2>
        <a href="/customers?action=create">Add New Customer</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Customers</h2></caption>
        <tr>
            <th>CustomerId</th>
            <th>Name</th>
            <th>Birthday</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Avatar</th>
            <th>RoleID</th>
            <th>Function</th>
        </tr>
        <c:forEach var="customer" items="${listCustomer}">
            <tr>
                <td><c:out value="${customer.getCustomerId()}"/></td>
                <td><c:out value="${customer.getCustomerName()}"/></td>
                <td><c:out value="${customer.getCustomerBirthday()}"/></td>
                <td><c:out value="${customer.getCustomerEmail()}"/></td>
                <td><c:out value="${customer.getCustomerPhone()}"/></td>
                <td><img class="avatar" src="<c:out value="${customer.getCustomerAvatar()}"/>"></td>
                <td><c:out value="${customer.getCustomerRoleId()}"/></td>
                <td>
                    <a href="/customers?action=edit&id=${customer.getId()}">Edit</a>
                    <a href="/customers?action=delete&id=${customer.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>