<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
  if (session.getAttribute("name") == null) {
    response.sendRedirect("user/login.jsp");
  }
%>
<html>
<head>
  <title>Customer Management Application</title>
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
          <a class="navbar-brand , comment" href="role/customer.jsp" style="font-style: oblique">LIBRARIES OF GROUP II</a>
        </li>
      </ul>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" >
      <ul class="navbar-nav me-auto, comment" style="font-size: 14px">
        <li class="nav-item" ><a class="nav-link" href="#about">About Us</a></li>
        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
        <li class="nav-item"><a class="nav-link" href="/user/login.jsp" class="btn btn-info">Logout</a></li>
        <li class="nav-item" style="padding-top: 14px"><a href="#" ></a><%=session.getAttribute("name")%></li>
      </ul>

    </div><!-- /.navbar-collapse -->
  </div>
</nav>
<center>
  <h1>Customer Management</h1>
  <h2>
    <a href="customers?action=customers">List All Customers</a>
  </h2>
  <h2>List of Customers Deleted</h2>
</center>
<div align="center">
  <table border="1" cellpadding="5" class = "table">

    <tr>
      <th>CustomerId</th>
      <th>Name</th>
      <th>Birthday</th>
      <th>Email</th>
      <th>Phone</th>
      <th>Avatar</th>
      <th>RoleID</th>
      <th>Function</th>
    </tr>
    <c:forEach var="customer" items="${listCustomer}">
      <tr>
        <td><c:out value="${customer.getCustomerId()}"/></td>
        <td><c:out value="${customer.getCustomerName()}"/></td>
        <td><c:out value="${customer.getCustomerBirthday()}"/></td>
        <td><c:out value="${customer.getCustomerEmail()}"/></td>
        <td><c:out value="${customer.getCustomerPhone()}"/></td>
        <td><img class="avatar" src="<c:out value="${customer.getCustomerAvatar()}"/>"></td>
        <td><c:out value="${customer.getCustomerRoleId()}"/></td>
        <td>
          <a href="/customers?action=restore&id=${customer.getId()}">Restore</a>
          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Delete</button>

          <!-- Modal -->
          <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">ARE YOU SURE?</h4>
                </div>

                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <a href="/customers?action=deleteForever&id=${customer.getId()}" type="button" class="btn btn-danger">Delete</a>
                </div>
              </div>

            </div>
          </div>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>