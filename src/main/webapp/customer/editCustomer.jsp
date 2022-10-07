<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
</head>
<body>
<center>
    <h1>Customer Management</h1>
    <h2>
        <a href="customers?action=customers">List All Customers</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Customer
                </h2>
            </caption>
            <c:if test="${customer != null}">
                <input type="hidden" name="id" value="<c:out value='${customer.getId()}' />"/>
            </c:if>
            <tr>
                <th>Customer Id:</th>
                <td>
                    <input type="text" name="customerId" size="45"
                           value="<c:out value='${customer.getCustomerId()}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Customer Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${customer.getCustomerName()}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Customer birthday:</th>
                <td>
                    <input type="text" name="birthday" size="45"
                           value="<c:out value='${customer.getCustomerBirthday()}' />"
                    />
                </td>
            </tr>
            <tr>
            <tr>
                <th>Customer email:</th>
                <td>
                    <input type="text" name="email" size="45"
                           value="<c:out value='${customer.getCustomerEmail()}' />"
                    />
                </td>
            </tr>
            <tr>
            <tr>
                <th>Customer phone:</th>
                <td>
                    <input type="text" name="phone" size="45"
                           value="<c:out value='${customer.getCustomerPhone()}' />"
                    />
                </td>
            </tr>
            <tr>
            <tr>
                <th>Customer Avatar:</th>
                <td>
                    <input type="text" name="avatar" size="45"
                           value="<c:out value='${customer.getCustomerAvatar()}' />"
                    />
                </td>
            </tr>
            <tr>
            <tr>
                <th>Customer roleid:</th>
                <td>
                    <input type="text" name="roleId" size="45"
                           value="<c:out value='${customer.getCustomerRoleId()}' />"
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