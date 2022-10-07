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
        <a href="BookLoanVoucherServlet?action=list">List Book Loan Voucher</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Books Loan Voucher
                </h2>
            </caption>
            <c:if test="${bookLoanVoucher != null}">
                <input type="hidden" name="id" value="<c:out value='${bookLoanVoucher.id}' />"/>
            </c:if>
            <tr>
                <th>Status:</th>
                <td>
                    <input type="text" name="bookLoanVoucherStatus" size="45"
                           value="<c:out value='${bookLoanVoucher.bookLoanVoucherStatus}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Borrower ID:</th>
                <td>
                    <input type="text" name="borrowerID" size="45"
                           value="<c:out value='${bookLoanVoucher.borrowerID}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Note:</th>
                <td>
                    <input type="text" name="bookLoanVoucherNote" size="45"
                           value="<c:out value='${bookLoanVoucher.bookLoanVoucherNote}' />"
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