<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/8/2022
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
    Document   : homepage
    Created on : Jul 7, 2019, 8:37:38 PM
    Author     : USER
--%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}css-for-homepage/style.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}css-for-homepage/style.css">

  <title>Your Library 's Name</title>
</head>

<body>

<nav class="navbar navbar-default navbar-fixed-top menu" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Your Co-working Space</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">About</a></li>
        <li><a href="#service">Service</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="${pageContext.servletContext.contextPath}/login.html">Log In</a></li>
        <li>
          <a data-toggle="modal" data-target="#signup">Sign Up</a>
        </li>
      </ul>

    </div><!-- /.navbar-collapse -->
  </div>
</nav>

<div class="container-fluid banner" id="about">
  <div class="row row-of-banner">
    <h1><b>Your Library 's Name</b></h1>
    <h3>Your Address </h3>
    <hr style="width: 50%">
    <button class="btn btn-default"><i class="fa fa-at"></i>&ensp;Email</button>
    <button class="btn btn-default"> <i class="fab fa-facebook-f"></i>&ensp; Facebook</button>
    <button class="btn btn-default"><i class="fab fa-instagram"></i>&ensp; Instagram</button>
  </div>
</div>


<!-- Modal FOr SIGN UP-->
<div id="signup" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title">Welcome to our Library</h3>
      </div>
      <div class="modal-body">
        <div class="img-wrap">
          <img src="${pageContext.servletContext.contextPath}/img-for-homepage/intro-bg.jpg" alt="" srcset="">
          <p> </p>
        </div>
        <p>To SIGN UP: Please send an email to <a>box_library@gmail.com</a>, as below</p>
        <p>First Name: <br>
          Last Name:<br> birthDay<br> phoneNumber<br> iD_Number<br> andress<br> password</p>
        <p>And then waiting for our response</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- END MODAL SIGN UP-->



<div class="container intros" id="service">
  <div class="row row1">
    <div class="col-xs-12 col-sm-6">
      <hr style="float:left; width:20em; border-top: 0.1em gray solid">
      <div style="clear: both;"></div>
      <h1>GOOD BOOK for You</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
        sed do eiusmod tempor incididunt ut labore et dolore
        magna aliqua. Ut enim ad minim veniam, quis nostrud
        exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Excepteur sint occaecat cupidatat non proident,
        sunt in culpa qui officia deserunt mollit anim id est laborum
        consectetur adipiscing elit, sed do eiusmod tempor incididunt
        ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. <br>
      </p>
      <a href="" data-toggle="modal" data-target="#book_modal"><b>SEE MORE DETAILS</b></a>

      <!-- Modal -->
      <div id="book_modal" class="modal fade" role="dialog">
        <div class="modal-dialog">
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">GOOD BOOK to You</h4>
            </div>
            <div class="modal-body">
              <div class="img-wrap">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/book-modal/brief-history-of-time.jpg" alt="brief-history-of-time" srcset="">
                <p> </p>
              </div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Nostrum accusamus nulla praesentium a velit,
                nesciunt laudantium excepturi quae assumenda natus dolorem ad?</p>
            </div>
            <div class="modal-body">
              <div class="img-wrap">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/book-modal/clean-code.jpg" alt="brief-history-of-time" srcset="">
                <p> </p>
              </div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Nostrum accusamus nulla praesentium a velit,
                nesciunt laudantium excepturi quae assumenda natus dolorem ad?</p>
            </div>

            <div class="modal-body">
              <div class="img-wrap">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/book-modal/clean-code.jpg" alt="brief-history-of-time" srcset="">
                <p> </p>
              </div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Nostrum accusamus nulla praesentium a velit,
                nesciunt laudantium excepturi quae assumenda natus dolorem ad?</p>
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
      <!-- END MODAL -->
    </div>
    <div class="col-xs-12 col-sm-6">
      <img src="${pageContext.servletContext.contextPath}/img-for-homepage/box1.jpg" alt="Working Room">
    </div>
  </div>
</div>

<div class="container intros">
  <div class="row row2">
    <div class="col-xs-12 col-sm-6">
      <hr style="float:left; width:20em; border-top: 0.1em gray solid">
      <div style="clear: both;"></div>
      <h1>Coffee, Drinks, and Cakes</h1>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Culpa porro sint saepe totam obcaecati est sit veniam nemo repellat dolor!</p>

      <a  data-toggle="modal" data-target='#drink_modal'><b>SEE MENU</b></a>
      <!-- MODAL -->
      <div class="modal fade" id="drink_modal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">MENU</h4>
            </div>
            <div class="modal-body">
              <div class="img-wrap">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/cake1.jpg" alt="cake" srcset="">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/drink3.jpg" alt="drink" srcset="">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/drink4.jpg" alt="drink" srcset="">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/drinks1.jpg" alt="drink" srcset="">
                <p> </p>
              </div>
              <ul>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
              </ul>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
      <!-- ENd MODAL -->
    </div>
    <div class="col-xs-12 col-sm-6">
      <img src="${pageContext.servletContext.contextPath}/img-for-homepage/box2.jpg" alt="Working Space">
    </div>
  </div>
</div>

<div class="container intros">
  <div class="row row3">
    <div class="col-xs-12 col-sm-6">
      <hr style="float:left; width:20em; border-top: 0.1em gray solid">
      <div style="clear: both;"></div>
      <h1>Co-working Spaces </h1>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Culpa porro sint saepe totam obcaecati est sit veniam nemo repellat dolor!</p>

      <a  data-toggle="modal" data-target='#coworking_modal'><b>SEE PRICE LIST</b></a>
      <!-- MODAL -->
      <div class="modal fade" id="coworking_modal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">SERVICE PRICE LIST</h4>
            </div>
            <div class="modal-body">
              <div class="img-wrap">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/coworking-modal/coworking2.png" alt="full" srcset="">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/coworking-modal/coworking0.jpg" alt="full" srcset="">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/coworking-modal/coworking1.jpg" alt="half" srcset="">
                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/coworking-modal/coworking3.jpg" alt="half" srcset="">
                <p> </p>
              </div>
              <ul>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
                <li>Lorem ipsum dolor sit amet consectetur.</li>
              </ul>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
      <!-- ENd MODAL -->
    </div>
    <div class="col-xs-12 col-sm-6">
      <img src="${pageContext.servletContext.contextPath}/img-for-homepage/box3.jpg" alt="Working View">
    </div>
  </div>
</div>

<div class="container-fluid banner-below" id="contact">
  <div class="row row-of-banner">
    <h1><b>CONTACT US</b></h1>
    <hr style="width: 50%; float:left">
    <div class="clearfix"></div>
    <button class="btn btn-default"><i class="fa fa-at"></i>&ensp;Email</button>
    <button class="btn btn-default"> <i class="fab fa-facebook-f"></i>&ensp; Facebook</button>
    <button class="btn btn-default"><i class="fab fa-instagram"></i>&ensp; Instagram</button>
  </div>
</div>

<div class="container footer">
  <div class="row">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#"><i class="fa fa-circle"></i></a></li>
      <li><a href="#">About</a></li>
      <li><a href="#"><i class="fa fa-circle"></i></a></li>
      <li><a href="#">Service</a></li>
      <li><a href="#"><i class="fa fa-circle"></i></a></li>
      <li><a href="#">Contact</a></li>
    </ul>
    <p>Copyright © Your Company 2019. All Rights Reserved</p>
  </div>
</div>

<script src="${pageContext.servletContext.contextPath}/js-for-homepage/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
