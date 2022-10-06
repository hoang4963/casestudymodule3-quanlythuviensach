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
        <a href="BorrowerBookServlet?action=list">List BorrowerBook</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Borrower Books
                </h2>
            </caption>
            <c:if test="${borrowerBook != null}">
                <input type="hidden" name="id" value="<c:out value='${borrowerBook.borrowerBookId}' />"/>
            </c:if>
            <tr>
                <th>Loan Voucher ID:</th>
                <td>
                    <input type="text" name="loanVoucherId" size="45"
                           value="<c:out value='${borrowerbook.loanVoucherId}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Book ID:</th>
                <td>
                    <input type="text" name="bookId" size="45"
                           value="<c:out value='${borrowerBook.bookId}' />"
                    />
                </td>
            </tr>
            </tr>
            <tr>
                <th>Loan Date:</th>
                <td>
                    <input type="text" name="loanDate" size="45"
                           value="<c:out value='${borrowerBook.loanDate}' />"
                    />
                </td>
            </tr>
            </tr>
            <tr>
                <th>Return Date:</th>
                <td>
                    <input type="text" name="returnDate" size="45"
                           value="<c:out value='${borrowerBook.returnDate}' />"
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