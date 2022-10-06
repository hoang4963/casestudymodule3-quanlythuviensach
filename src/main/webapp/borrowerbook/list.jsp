<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Borrower Book Management Application</title>
</head>
<body>
<center>
    <h1>Borrower Book Management</h1>
    <h2>
        <a href="BorrowerBookServlet?action=create">Add a new BorrowerBook</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of BorrowerBook</h2></caption>
        <tr>
            <th>BorrowerBookId</th>
            <th>LoanVoucherId</th>
            <th>BookId</th>
            <th>LoanDate</th>
            <th>ReturnDate</th>
        </tr>
        <c:forEach var="borrowerBook" items="${listBorrowerBook}">
            <tr>
                <td><c:out value="${borrowerBook.getBorrowerBookId()}"/></td>
                <td><c:out value="${borrowerBook.getLoanVoucherId()}"/></td>
                <td><c:out value="${borrowerBook.getBookId()}"/></td>
                <td><c:out value="${borrowerBook.getLoanDate()}"/></td>
                <td><c:out value="${borrowerBook.getReturnDate()}"/></td>
                <td>
                    <a href="/BorrowerBookServlet?action=edit&id=${borrowerBook.getBorrowerBookId()}">Edit</a>
                    <a href="/BorrowerBookServlet?action=delete&id=${borrowerBook.getBorrowerBookId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>