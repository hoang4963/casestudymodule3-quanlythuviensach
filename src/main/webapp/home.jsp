<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10/6/2022
  Time: 8:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%--%>
<%--    if (session.getAttribute("name") == null) {--%>
<%--        response.sendRedirect("user/login.jsp");--%>
<%--    }--%>
<%--%>--%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/css-for-homepage/style.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/css-for-homepage/modal.css">

    <title>Library's Group TWO</title>
    <link rel="stylesheet" href="css-for-homepage/modal.css">
    <link rel="stylesheet" href="css-for-homepage/style.css">
    <link rel="stylesheet" href="css-for-homepage/bootstrap.css">
    <link rel="stylesheet" href="css/mobile.css">
    <link rel="stylesheet" href="css/login/login.css">
    <link rel="stylesheet" href="css/add/small.css">
    <script src="javascript/main.js"></script>
    <script src="js-for-homepage/main.js"></script>
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
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#about">About Us</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="${pageContext.servletContext.contextPath}/login.html">Log In</a></li>
                <li>
                    <a data-toggle="modal" data-target="#signup">Sign Up</a>
                </li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div>
</nav>

<div class="container-fluid banner" id="">
    <div class="row row-of-banner">
        <h1><b> Library's Group TWO </b></h1>
        <h3>"Một cuốn sách hay trên giá sách là một người bạn dù quay lưng lại nhưng vẫn là bạn tốt" </h3>
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
                    <p></p>
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


<div class="container intros" id="about">
    <div class="row row1">
        <div class="col-xs-12 col-sm-6">
            <hr style="float:left; width:20em; border-top: 0.1em gray solid">
            <div style="clear: both;"></div>
            <h1>About Us</h1>
            <div class="image_group2">
                <div class ="image_avatar">
                    <h4>Phạm Hồng Quân</h4>
                    <img id="anh" src="img-for-homepage/avatar/quan.jpg">
                </div>
                <div class ="image_avatar">
                    <h4>Trương Huy Hoàng</h4>
                    <img id="anh1" src="img-for-homepage/avatar/hoang.jpg">
                </div>
                <div class ="image_avatar">
                    <h4>Dương Văn Hiếu</h4>
                    <img id="anh2" src="img-for-homepage/avatar/hieu.jpg">
                </div>
                <div class ="image_avatar">
                    <h4>Phạm Huy Trung</h4>
                    <img id="anh3" src="img-for-homepage/avatar/trung.jpg">
                </div>
            </div>
            <a href="" data-toggle="modal" data-target="#book_modal"><b>SEE MORE DETAILS</b></a>

            <div id="book_modal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">GOOD BOOK to You</h4>
                        </div>
                        <div class="modal-body">
                            <div class="img-wrap">
                                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/book-modal/brief-history-of-time.jpg"
                                     alt="brief-history-of-time" srcset="">
                                <p></p>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Nostrum accusamus nulla praesentium a velit,
                                nesciunt laudantium excepturi quae assumenda natus dolorem ad?</p>
                        </div>
                        <div class="modal-body">
                            <div class="img-wrap">
                                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/book-modal/clean-code.jpg"
                                     alt="brief-history-of-time" srcset="">
                                <p></p>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Nostrum accusamus nulla praesentium a velit,
                                nesciunt laudantium excepturi quae assumenda natus dolorem ad?</p>
                        </div>

                        <div class="modal-body">
                            <div class="img-wrap">
                                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/book-modal/clean-code.jpg"
                                     alt="brief-history-of-time" srcset="">
                                <p></p>
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
    </div>
</div>
</div>

<div class="container intros">
    <div class="row row2">
        <div class="col-xs-12 col-sm-6">
            <hr style="float:left; width:20em; border-top: 0.1em gray solid">
            <div style="clear: both;"></div>
            <h1> Thông tin về dự án </h1>
            <p>Sách là nơi mà những kinh nghiệm, những tri thức của loài người được cha ông chúng ta, những người đi trước gìn giữ và truyền lại cho chúng ta thông qua những trang giấy. Không những vậy sách còn là những tư liệu những chứng cứ lịch sử về nguồn gôc và quá trình phát triển, tư duy của loài người. Qua việc đọc sách chúng ta sẽ hiểu và cảm nhận được những gì mà cha ông chúng ta đã phải trải qua. </p><br>
            <p>Chính vì vậy, Nhóm 2 đã tạo ra trang thư viện mà ở nơi đó mọi người có thể thoải mái tìm kiếm sách hoặc đóng góp những cuốn sách của mình</p>

            <a data-toggle="modal" data-target='#drink_modal'><b>SEE MENU</b></a>
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
                                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/cake1.jpg"
                                     alt="cake" srcset="">
                                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/drink3.jpg"
                                     alt="drink" srcset="">
                                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/drink4.jpg"
                                     alt="drink" srcset="">
                                <img src="${pageContext.servletContext.contextPath}/img-for-homepage/drinks-modal/drinks1.jpg"
                                     alt="drink" srcset="">
                                <p></p>
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
    </div>
</div>

<div class="container-fluid banner-below" id="contact">
    <div class="row row-of-banner">
        <h1><b>CONTACT US</b></h1>
        <hr style="width: 50%; float:left">
        <div class="clearfix"></div>
        <button class="btn btn-default"><i class="fa fa-at"></i>&ensp;Email</button>
        <button onclick="window.location.href='https://www.facebook.com/';" class="btn btn-default"><i
                class="fab fa-facebook-f"></i>&ensp; Facebook
        </button>
        <button onclick="window.location.href='https://www.instagram.com/';" class="btn btn-default"><i
                class="fab fa-instagram"></i>&ensp; Instagram
        </button>
    </div>
</div>

<div class="container footer">
    <div class="row">
        <ul>
            <li><a href="#">Home</a></li>
        </ul>
    </div>
</div>

<script src="${pageContext.servletContext.contextPath}/js-for-homepage/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
