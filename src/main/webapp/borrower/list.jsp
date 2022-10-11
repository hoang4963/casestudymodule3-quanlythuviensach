<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Borrower Management Application</title>

  <link type="text/css" rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
  <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
  <link href='text/css' rel='stylesheet'>
  <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}css/page.css">

  <script type='text/javascript' src=''></script>
  <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
  <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed-top menu" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <a class="navbar-brand" style="margin: 0; float: none;" href="#"><img src="images/Screenshot (98).png" id="logo"></a>

    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav navbar-right">

        <li>
          <a class="navbar-brand , comment" href="role/admin.jsp" style="font-style: oblique">LIBRARIES OF GROUP II</a>
        </li>
      </ul>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" >
      <ul class="navbar-nav me-auto, comment" >
        <li class="nav-item" ><a class="nav-link" href="#about">About Us</a></li>
        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
        <li class="nav-item"><a class="nav-link" href="/user/login.jsp" class="btn btn-info">Logout</a></li>
        <li class="nav-item"><a href="#"></a><%=session.getAttribute("name")%></li>
      </ul>

    </div><!-- /.navbar-collapse -->
  </div>
</nav>
<center>
  <h1>Borrower Management</h1>
  <h2>
    <a href="/borrowers?action=create">Add New Borrower</a>
  </h2>
</center>
<h2>List of Borrowers</h2>

<div align="center">
  <table border="1" cellpadding="5" class = "table">

    <tr>
      <form action="/borrowers" method="get">
        <input name="searchByName"  type="text" placeholder="Type something to search">
        <input type="hidden" name="action" value="searchByName">
        <button type="submit">Search</button>
      </form>
    </tr>
    <tr>
      <th>BorrowerId</th>
      <th>Name</th>
      <th>Birthday</th>
      <th>Address</th>
      <th>CustomerID</th>
      <th>Function</th>
    </tr>
    <c:forEach var="borrower" items="${listBorrower}">
      <tr>
        <td><c:out value="${borrower.getBorrowerId()}"/></td>
        <td><c:out value="${borrower.getBorrowerName()}"/></td>
        <td><c:out value="${borrower.getBorrowerBirthDay()}"/></td>
        <td><c:out value="${borrower.getBorrowerAddress()}"/></td>
        <td><c:out value="${borrower.getCustomerId()}"/></td>
        <td>
          <a href="/borrowers?action=edit&id=${borrower.getId()}" class="btn btn-info">Edit</a>

          <a href="/borrowers?action=delete&id=${borrower.getId()}" type="button" class="btn btn-danger">Delete</a>
          <!-- Modal -->
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>