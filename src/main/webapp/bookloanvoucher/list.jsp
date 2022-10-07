<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Borrower Book Management Application</title>
</head>
<body>
<center>
    <h1>Book Loan Voucher Management</h1>
    <h2>
        <a href="BookLoanVoucherServlet?action=create">Add a new BookLoanVoucher</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of BookLoanVoucher</h2></caption>
        <tr>
            <th>BookLoanVoucherId</th>
            <th>Status</th>
            <th>BorrowerID</th>
            <th>BookAmount</th>
            <th>Note</th>
        </tr>
        <c:forEach var="bookLoanVoucher" items="${bookLoanVoucher}">
            <tr>
                <td><c:out value="${bookLoanVoucher.getBookLoanVoucherId()}"/></td>
                <td><c:out value="${bookLoanVoucher.getBookLoanVoucherStatus()}"/></td>
                <td><c:out value="${bookLoanVoucher.getBorrowerID()}"/></td>
                <td><c:out value="${bookLoanVoucher.getBookAmount()}"/></td>
                <td><c:out value="${bookLoanVoucher.getBookLoanVoucherNote()}"/></td>
                <td>
                    <a href="/BookLoanVoucherServlet?action=edit&id=${bookLoanVoucher.getId()}">Edit</a>
                    <a href="/BookLoanVoucherServlet?action=delete&id=${bookLoanVoucher.getId()}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>