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
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Borrower
                </h2>
            </caption>
            <c:if test="${borrower != null}">
                <input type="hidden" name="id" value="<c:out value='${borrower.getId()}' />"/>
            </c:if>
            <tr>
                <th>Borrwer Id:</th>
                <td>
                    <input type="text" name="borrowerId" size="45"
                           value="<c:out value='${borrower.getBorrowerId()}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Borrwer Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${borrower.getBorrowerName()}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Borrower birthday:</th>
                <td>
                    <input type="date" name="birthday" size="45"
                           value="<c:out value='${borrower.getBorrowerBirthday()}' />"
                    />
                </td>
            </tr>
            <tr>
            <tr>
                <th>Borrower Address:</th>
                <td>
                    <input type="text" name="address" size="45"
                           value="<c:out value='${borrower.getBorrowerAddress()}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Borrower CustomerID:</th>
                <td>
                    <input type="text" name="customerId" size="45"
                           value="<c:out value='${borrower.getCustomerId()}' />"
                    />
                </td>
            </tr>
            <tr>
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