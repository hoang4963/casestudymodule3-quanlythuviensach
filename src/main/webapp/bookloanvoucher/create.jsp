<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Book Loan Voucher Management Application</title>
</head>
<body>
<center>
    <h1>Book Loan Voucher Management</h1>
    <h2>
        <a href="BookLoanVoucherServlet?action=list">BookLoanVoucher List</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New BookLoanVoucher</h2>
            </caption>
            <tr>
                <th>Loan Voucher ID:</th>
                <td>
                    <input type="text" name="bookLoanVoucherId" id="bookLoanVoucherId" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Status:</th>
                <td>
                    <input type="text" name="bookLoanVoucherStatus" id="bookLoanVoucherStatus" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Borrower ID:</th>
                <td>
                    <input type="text" name="borrowerID" id="borrowerID" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Book Amount:</th>
                <td>
                    <input type="text" name="bookAmount" id="bookAmount" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Note:</th>
                <td>
                    <input type="text" name="bookLoanVoucherNote" id="bookLoanVoucherNote" size="45"/>
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