<%--
  Created by IntelliJ IDEA.
  User: chlee
  Date: 2020-09-29
  Time: 오전 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>MuJam</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}../resources/css/style2.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}../resources/css/main.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

    <!-- bootstrap template // 특정 기능을 위해 뽑아옴//지금은 없지롱 -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}../resources/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}../resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Navigation -->
<header id="page-top">
    <div class="wrap-header">
        <div class="container">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="row">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <h5><a class="page-scroll" href="">로그인&nbsp;&nbsp;&nbsp;</a></h5>
                            </li>
                            <li>
                                <h5><a class="page-scroll" href="">회원가입 &nbsp;&nbsp;&nbsp;</a></h5>
                            </li>
                        </ul>
                    </div>
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header page-scroll">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand page-scroll" href="${pageContext.request.contextPath}/main">MuJam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                        <ul class="nav navbar-nav">
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/main">NEW</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/single">HOT</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/gallery">Musician</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/contact">Backstage</a>
                            </li>
                            <li><a>|</a></li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}contact">Follow</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/contact">Like</a>
                            </li>
                            <li>
                                <a class="page-scroll" href="${pageContext.request.contextPath}/contact">PlayList</a>
                            </li>

                            <li>
                                <form class="form-inline d-flex justify-content-center md-form form-sm active-pink active-pink-2 mt-2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search"
                                           aria-label="Search">
                                    <i class="fas fa-search" aria-hidden="true"></i>
                                </form>

                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>

        </div>
    </div>
</header>
<!-- Header -->
<!-- /////////////////////////////////////////Content -->
<div id="page-content">
    <br>
    <div class="container">
        <div id="main-content" class="col-md-12">
            <div id="upload_form">
                <form name="form1" id="ff" method="post" action="contact.php">
                    <div class="row">
                        <div class="col-sm-8">
                            <label>
                                <span>제목(필수 항목)</span>
                                <input type="text"  name="title" id="title" placeholder="제목(필수 항목)" required>
                            </label>
                            <label>
                                <span>영상 설명 :</span>
                                <textarea name="message" id="message" placeholder="영상 설명"></textarea>
                            </label>
                        </div>
                        <label class="col-sm-4">
                            <span>영상 업로드</span>
                            <div style="width: 100%; height:250px; background-color: white">
                                <iframe id="preview">이미지 파일 내용 출력 영역</iframe>
                            </div>
                            <input type="file" id="getfile" accept="video/*">
                        </label>
                    </div>
                    <br>
                    <label>
                        <span>장르1(필수 선택)</span><br/>
                        <div class="radio-inline">
                            <input type="radio" class="radio" id="balad" name="genre1">
                            <label class="control-label" for="balad">Balad</label>
                        </div>

                        <div class="radio-inline">
                            <input type="radio" class="radio" id="hiphop" name="genre1">
                            <label class="control-label" for="hiphop">HipHop</label>
                        </div>

                        <div class="radio-inline">
                            <input type="radio" class="radio" id="jazz" name="genre1">
                            <label class="control-label" for="jazz">Jazz</label>
                        </div>
                        <div class="radio-inline">
                            <input type="radio" class="radio" id="rock" name="genre1">
                            <label class="control-label" for="rock">Rock</label>
                        </div>
                    </label>
                    <br>
                    <label>
                        <select class="select">
                            <option selected>장르1 선택</option>
                            <option>Balad</option>
                            <option>HipHop</option>
                            <option>Jazz</option>
                            <option>Rock</option>
                        </select>
                    </label>
                    <br>
                    <label>
                        <span>장르2</span><br/>
                        <div class="radio-inline">
                            <input type="radio" class="radio" id="example1" name="genre2">
                            <label class="custom-control-label" for="example1">운동할 때</label>
                        </div>
                        <div class="radio-inline">
                            <input type="radio" class="radio" id="example2" name="genre2">
                            <label class="custom-control-label" for="example2">기분 좋은 날</label>
                        </div>
                        <div class="radio-inline">
                            <input type="radio" class="radio" id="example3" name="genre2">
                            <label class="custom-control-label" for="example3">슬픈 날</label>
                        </div>
                        <div class="radio-inline">
                            <input type="radio" class="radio" id="example4" name="genre2">
                            <label class="custom-control-label" for="example4">위로받고 싶은 날</label>
                        </div>
                        <div class="radio-inline">
                            <input type="radio" class="radio" id="example5" name="genre2">
                            <label class="custom-control-label" for="example5">카페에서 듣기 좋은 뭬</label>
                        </div>
                    </label>
                    <br>
                    <label>
                        <select class="select">
                            <option selected>장르2 선택</option>
                            <optgroup label="mood">
                                <option>기분 좋은 날</option>
                                <option>불쾌한 날</option>
                                <option>우울한 날</option>
                            </optgroup>
                            <optgroup label="place">
                                <option>카페에서</option>
                                <option>도서관에서</option>
                                <option>공원에서</option>
                            </optgroup>
                        </select>
                    </label><br>

                    <input class="sendButton" type="submit" name="Submit" value="Submit">
                </form>
            </div>
        </div>
    </div>
</div>
</div>





<!-- /////////////////////////////////////////Footer -->
<footer>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="copyright">Copyright &copy; GAJAH 2019. All rights reserved</div>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}../resources/js/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/Thumbnail.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/agency.js"></script>

<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath}../resources/js/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/classie.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/cbpAnimatedHeader.js"></script>

<!--다른 템플릿-->
<script src="${pageContext.request.contextPath}../resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/jquery.scrolly.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/skel.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/util.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/main.js"></script>
</body>
</html>
