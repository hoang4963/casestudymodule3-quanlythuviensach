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
    <title>Book Loan Voucher Information</title>
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
<h1>BookLoanVoucher Information</h1>
<p>
    <a href="/list" class="btn btn-primary">Back to BookLoanVoucher list</a>
</p>
<form method="post">
    <fieldset>
        <table class="table">
            <tr>
                <td>Book Loan Voucher Id: </td>
                <td>${requestScope["bookLoanVoucher"].getBookLoanVoucherId()}</td>
            </tr>
            <tr>
                <td>Status: </td>
                <td>${requestScope["bookLoanVoucher"].getBookLoanVoucherStatus()}</td>
            </tr>
            <tr>
                <td>Borrower ID: </td>
                <td>${requestScope["bookLoanVoucher"].getBorrowerId()}</td>
            </tr>
            <tr>
            <td>Amount: </td>
            <td>${requestScope["bookLoanVoucher"].getBookAmount()}</td>
            </tr>
            <tr>
                <td>Note: </td>
                <td>${requestScope["bookLoanVoucher"].getBookLoanVoucherNote()}</td>
            </tr>


            <tr>
                <td><a href="/BookLoanVoucherServlet?action=edit&id=${bookLoanVoucher.getId()}" class="btn btn-primary">Edit</a></td>
                <td><input type="submit" value="delete" class="btn btn-danger"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>