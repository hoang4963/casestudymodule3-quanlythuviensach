<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Borrower Management Application</title>
</head>
<body>
<center>
    <h1>Borrower Management</h1>
    <h2>
        <a href="borrowers?action=borrowers">List All Borrowers</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Borrowers</h2></caption>
        <tr>
            <th>BorrowerId</th>
            <th>Name</th>
            <th>Birthday</th>
            <th>Address</th>
            <th>CustomerID</th>
            <th>Function</th>
        </tr>
        <c:forEach var="borrower" items="${searchBorrowers}">
            <tr>
                <td><c:out value="${borrower.getBorrowerId()}"/></td>
                <td><c:out value="${borrower.getBorrowerName()}"/></td>
                <td><c:out value="${borrower.getBorrowerBirthDay()}"/></td>
                <td><c:out value="${borrower.getBorrowerAddress()}"/></td>
                <td><c:out value="${borrower.getCustomerId()}"/></td>
                <td>
                    <a href="/borrowers?action=edit&id=${borrower.getId()}">Edit</a>
                    <a href="/borrowers?action=delete&id=${borrower.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>