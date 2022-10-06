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
        <h2>Add New Borrower</h2>
      </caption>
      <tr>
        <th>Borrower ID:</th>
        <td>
          <input type="text" name="borrowerId" id="borrowerId" size="45"/>
        </td>
      </tr>
      <tr>
        <th>Borrower Name:</th>
        <td>
          <input type="text" name="name" id="name" size="45"/>
        </td>
      </tr>
      <tr>
        <th>Borrower Birthday:</th>
        <td>
          <input type="date" name="birthday" id="birthday"  size="45"/>
        </td>
      </tr>
      <tr>
        <th>Borrower Address:</th>
        <td>
          <input type="text" name="address" id="address" size="45"/>
        </td>
      </tr>
      <tr>
        <th>Borrower CustomerID:</th>
        <td>
          <input type="text" name="customerId" id="customerId" size="45"/>
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