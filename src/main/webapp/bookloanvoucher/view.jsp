<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2022
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Information</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body,table {
            text-align: center;
        }
        img {
            width: 200px;
            height: 200px;
        }
        h1,h3 {
            color: red;

        }
    </style>
</head>
<body>
<h1>Borrower Information</h1>
<p>
    <a href="/BookLoanVoucherServlet" class="btn btn-primary">Back to Book Loan Voucher list</a>
</p>
<form method="post">
    <fieldset>
        <table class="table">
            <tr>
                <th>Book Loan Voucher ID:</th>
                <th>BorrowerID:</th>
                <th>BorrowerName: </th>
                <th>BookAmount:</th>
                <th>LoanDate </th>
                <th>ReturnDate: </th>
            </tr>
            <c:forEach var="borrower" items="${borrowers}">
            <tr>

                <td>${borrower.getLoanVoucherId()}</td>
                <td>${borrower.getBorrowerId()}</td>
                <td>${borrower.getBorrowerName()}</td>
                <td>${borrower.getBookName()}</td>
                <td>${borrower.getBookAmount()}</td>
                <td>${borrower.getLoanDate()}</td>
                <td>${borrower.getReturnDate()}</td>

                <td><a href="/BookLoanVoucherServlet?action=edit&id=${bookLoanVoucher.getId()}" class="btn btn-primary">Edit</a>
                <input type="submit" value="Delete" class="btn btn-danger"></td>

            </tr>
            </c:forEach>
        </table>
    </fieldset>
</form>
</body>
</html>