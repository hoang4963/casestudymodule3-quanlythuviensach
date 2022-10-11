<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10/6/2022
  Time: 8:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href='text/css' rel='stylesheet'>
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}css/css-for-homepage/style.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}css/css-for-homepage/modal.css">
    <script type='text/javascript' src=''></script>
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
    <title>Library's Group TWO</title>

</head>

<body >


<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed-top menu" role="navigation">
    <div class="container-fluid">

        <a class="navbar-brand" style="margin: 0; float: none;" href="#"><img src="images/logotron.png" id="logo"></a>

        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a class="navbar-brand , comment" href="#" style="font-style: oblique">LIBRARIES OF GROUP II</a>
                </li>
            </ul>
        </div>

        <div class="collapse navbar-collapse" >
            <ul class="navbar-nav me-auto, comment" >
                <li class="nav-item" ><a class="nav-link" href="#about">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.servletContext.contextPath}/user/login.jsp">Log In</a></li>

            </ul>

        </div><!-- /.navbar-collapse -->
    </div>
</nav>


<div class="container-fluid banner" id="">
    <div class="row row-of-banner">
        <h1><b> Libraries Group TWO </b></h1>
        <h3>"Một cuốn sách hay trên giá sách là một người bạn dù quay lưng lại nhưng vẫn là bạn tốt" </h3>
    </div>
</div>



<div class="container intros" id="about">
    <div class="row row1">
        <section class="body">
            <div class="container">
                <h1 class="section-header"><b>Testimonial Design</b></h1>
                <p class="text-muted text-center">What people say</p>
                <div class="testimonial-view">
                    <div id="testimonialCarousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="testimonial-block">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="testimonial-block_user">
                                                <div class="testimonial-block_user_image">
                                                    <img src="images/avatar/quan.jpg" alt="User">
                                                </div>
                                                <div class="testimonial-block_user_info">
                                                    <h2 class="testimonial-block_user_info_name">Quân</h2>
                                                    <h4>Leader</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="testimonial-block_content">
                                                <p>" Hi vọng mọi người sẽ có những trải nghiệm thú vị khi ghé qua thư viện sách này. Đặc biệt là từ những người không thích đọc sách" </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="testimonial-block">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="testimonial-block_user">
                                                <div class="testimonial-block_user_image">
                                                    <img src="images/avatar/trung.jpg" alt="User">
                                                </div>
                                                <div class="testimonial-block_user_info">
                                                    <h2 class="testimonial-block_user_info_name">Trung</h2>
                                                    <h4>Member</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="testimonial-block_content">
                                                <p>Sự khác biệt giữa người thành công và kẻ thất bại không phải là ở sức mạnh, kiến thức hay sự hiểu biết mà chính là ở ý chí.
                                                    Hãy làm những việc bình thường bằng lòng si mê phi thường.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="testimonial-block">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="testimonial-block_user">
                                                <div class="testimonial-block_user_image">
                                                    <img src="images/avatar/hieu.jpg" alt="User">
                                                </div>
                                                <div class="testimonial-block_user_info">
                                                    <h2 class="testimonial-block_user_info_name">Hiếu</h2>
                                                    <h4>Member</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="testimonial-block_content">
                                                <p>Bước đến nhà em, bóng xế tà.Đứng chờ năm phút bố em ra.Lơ thơ phía trước vài con chó.Lác đác đằng sau chổi lông gà.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="testimonial-block">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="testimonial-block_user">
                                                <div class="testimonial-block_user_image">
                                                    <img src="images/avatar/hoang.jpg" alt="User">
                                                </div>
                                                <div class="testimonial-block_user_info">
                                                    <h2 class="testimonial-block_user_info_name">Hoàng</h2>
                                                    <h4>Member</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="testimonial-block_content">
                                                <p>Một cuốn sách hay cho ta một điều tốt, một người bạn tốt cho ta một điều hay</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#testimonialCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#testimonialCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <a href="" data-toggle="modal" data-target="#book_modal" class="btn btn-primary"  role="button" style="width: 80px"><b>SEE BOSS: </b></a>
    </div>
</div>
<div id="book_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">COACH</h4>
            </div>
            <div class="modal-body">
                <div class="img-wrap">
                    <img src="${pageContext.servletContext.contextPath}https://scontent.fhan2-1.fna.fbcdn.net/v/t39.30808-1/305310204_1443918139406057_4754979646331603559_n.jpg?stp=dst-jpg_p200x200&_nc_cat=102&ccb=1-7&_nc_sid=7206a8&_nc_ohc=1ppVQJ96q8kAX-xfdA4&_nc_oc=AQmuzg_uNGjy51uxG2CjUMXduyu6aY1nBNsg8pNSWS9fMzZAD4VWo5H3hyTUAKGUypA&_nc_ht=scontent.fhan2-1.fna&oh=00_AT-o7soIGJxp5NOv01Y8VH0vsVmEXCMOnakPSduclh-isw&oe=634633FD"
                         alt="brief-history-of-time" srcset="">
                    <p></p>
                </div>
                <p></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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

            <div class="comment">
                <p>Sách là nơi mà những kinh nghiệm, những tri thức của loài người được cha ông chúng ta,
                    những người đi trước gìn giữ và truyền lại cho chúng ta thông qua những trang giấy.
                    Không những vậy sách còn là những tư liệu những chứng cứ lịch sử về nguồn gôc và quá trình phát triển,
                    tư duy của loài người. Qua việc đọc sách chúng ta sẽ hiểu và cảm nhận được những gì mà cha ông chúng ta đã phải trải qua. </p><br>
                <p>Chính vì vậy, Nhóm 2 đã tạo ra trang thư viện mà ở nơi đó mọi người có thể thoải mái tìm kiếm sách hoặc đóng góp những cuốn sách của mình</p>
            </div>
            <a data-toggle="modal" data-target='#drink_modal' class="btn btn-primary" role="button" style="width: 80px"><b>SEE MORE</b></a>
            <!-- MODAL -->
            <div class="modal fade" id="drink_modal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">MENU</h4>
                        </div>
                        <div class="modal-body">
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
        <button class="btn btn-primary"><i class="fa fa-at"></i>&ensp;Email</button>
        <button onclick="window.location.href='https://www.facebook.com/';" class="btn btn-primary"><i
                class="fab fa-facebook-f"></i>&ensp; Facebook
        </button>
        <button onclick="window.location.href='https://www.instagram.com/';" class="btn btn-primary"><i
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