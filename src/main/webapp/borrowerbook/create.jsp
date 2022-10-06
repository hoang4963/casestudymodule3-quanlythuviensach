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
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New BorrowerBook</h2>
            </caption>
            <tr>
                <th>Loan Voucher Id:</th>
                <td>
                    <input type="text" name="loanVoucherId" id="loanVoucherId" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Book ID:</th>
                <td>
                    <input type="text" name="bookId" id="bookId" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Loan Date:</th>
                <td>
                    <input type="date" name="loanDate" id="loanDate" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Return Date:</th>
                <td>
                    <input type="date" name="returnDate" id="returnDate" size="45"/>
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