<!--index.jsp-->
<%@page contentType="text/html" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MyFirstBlog</title>

    <!-- Bootstrap Core CSS -->
    <link href="../style/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional fonts for this theme -->
    <link href="../style/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>

    <!-- Custom styles for this theme -->
    <link href="../style/css/clean-blog.min.css" rel="stylesheet">

    <!-- Temporary navbar container fix until Bootstrap 4 is patched -->
    <style>
        .navbar-toggler {
            z-index: 1;
        }

        @media (max-width: 576px) {
            nav > .container {
                width: 100%;
            }
        }
    </style>

</head>

<body>

<!-- Navigation -->
<nav class="navbar fixed-top navbar-toggleable-md navbar-light" id="mainNav">
    <div class="container">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsivze" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.jsp">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll"
                       href="${pageContext.request.contextPath}/setPage">TYPES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="../fore/contact.jsp">ABOUT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="../fore/search.jsp">SEARCH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="../back/login.jsp">LOGIN</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Header -->
<header class="intro-header" style="background-image: url('https://api.ixiaowai.cn/gqapi/gqapi.php');
                                    background-repeat: no-repeat;
                                    background-position: center center;
                                    background-size: cover;
                                    background-attachment: fixed;">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                <div class="site-heading">
                    <h2>Welcome To My Blog!</h2>
                    <span class="subheading">欢迎来到我的Blog!</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
            <c:if test="${empty blogList}">
                Null Message for more blog.
            </c:if>
            <c:if test="${!empty blogList}">
                <c:forEach items="${blogList}" var="blog">
                    <div class="post-preview">
                        <a href="${pageContext.request.contextPath}/blog/.do?id=${blog.id}">
                            <h2 class="post-title">
                                    ${blog.title}
                            </h2>
                            <br>
                            <h3 class="post-subtitle">
                                    ${blog.summary}
                            </h3>
                        </a>
                        <p class="post-meta">文章作者 <a
                                href="${pageContext.request.contextPath}/fore/contact.jsp">admin</a> ${blog.releaseDate}</p>
                    </div>
                    <hr>
                </c:forEach>

                <!-- Pager -->
                <div class="clearfix">
                    <a class="btn btn-secondary float-right" href="${pageContext.request.contextPath}/setPage">查看更多
                        &rarr;</a>
                </div>
            </c:if>
        </div>
    </div>
</div>

<hr>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                <ul class="list-inline text-center">
                    <li class="list-inline-item">
                        <a href="https://space.bilibili.com/49837660">
    <span class="fa-stack fa-lg">
    <i class="fa fa-circle fa-stack-2x"></i>
    <i class="fa fa-stack-1x fa-inverse">B</i>
    </span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://music.163.com/#/user/home?id=283842345">
    <span class="fa-stack fa-lg">
    <i class="fa fa-circle fa-stack-2x"></i>
    <i class="fa fa-music fa-stack-1x fa-inverse"></i>
    </span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="tencent://message/?uin=32830121">
    <span class="fa-stack fa-lg">
    <i class="fa fa-circle fa-stack-2x"></i>
    <i class="fa fa-qq fa-stack-1x fa-inverse"></i>
    </span>
                        </a>
                    </li>
                </ul>
                <p class="copyright text-muted">Copyright &copy; all rights reserved 2023.</p>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery Version 3.1.1 -->
<script src="../style/lib/jquery/jquery.js"></script>

<!-- Tether -->
<script src="../style/lib/tether/tether.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../style/lib/bootstrap/js/bootstrap.min.js"></script>

<!-- Theme JavaScript -->
<script src="../style/js/clean-blog.min.js"></script>

</body>

</html>
