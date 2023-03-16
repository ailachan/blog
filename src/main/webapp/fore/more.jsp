<!--more.jsp-->
<%@page contentType="text/html" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <title>所有博客</title>
    <!-- BOOTSTRAP CORE STYLE -->
    <link href="../style/assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FONT AWESOME ICON STYLE -->
    <link href="../style/assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- CUSTOM STYLE CSS -->
    <link href="../style/assets/css/style.css" rel="stylesheet"/>
</head>
<body>
<div id="header">
    <div class="overlay">
        <div class="container">
            <div class="row">
                <div class="col-md-4 logo-div">
                    <div class="logo-inner text-center">
                        <div class="logo-name">
                            <a href="index.html">
                                <img src="../style/assets/img/69845363_p0.jpg"  class="img-circle"/>
                            </a>
                        </div>

                    </div>

                </div>
                <div class="col-md-8 header-text-top " id="about">

                    <h1>欢迎来到我的博客.</h1>
                    这是我的第一个个人博客,感谢来访!<br/>
                    <h2><strong>Who I am ? </strong></h2>
                    <i>I Am The Administrator Of This WebSite </i><br/>
                    May all the beauty be blessed!<br/>
                </div>
            </div>
        </div>
    </div>
</div>
<!--END HEADER SECTION-->
<div class="info-sec">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                Say hello to me at <strong>32830121</strong>@qq.com
            </div>
            <div class="col-md-2">
                <div class="social-link">
                    <a href="https://music.163.com/#/user/home?id=283842345" class="btn btn-default btn-xs">
                        <i class="fa fa-2x">M</i></a>
                    <a href="https://space.bilibili.com/49837660" class="btn btn-default btn-xs">
                        <i class="fa  fa-2x">B</i></a>
                    <a href="tencent://message/?uin=32830121" class="btn btn-default btn-xs">
                        <i class="fa fa-2x">Q</i></a>
                </div>

            </div>

        </div>
    </div>
</div>
<div class="copyrights">Copyright &copy; all rights reserved 2023.</div>
<!--END INFO SECTION-->
<div class="container">

    <div class="row">

        <div class="col-md-8 ">
            <c:if test="${empty pageInfo}">
                Null Message for more blog.
            </c:if>
            <c:if test="${!empty pageInfo}">
                <c:forEach items="${pageInfo.blogList}" var="blog">
                    <div class="blog-post">
                        <h2>${blog.title}</h2>
                        <h4>文章作者 <a href="${pageContext.request.contextPath}/fore/contact.jsp">admin</a> ${blog.releaseDate} </h4>
                        <p>${blog.summary} </p>
                        <a href="${pageContext.request.contextPath}/blog/.do?id=${blog.id}"
                           class="btn btn-default btn-lg ">查看更多
                            <i class="fa fa-angle-right"></i></a>
                    </div>
                </c:forEach>
            </c:if>
            <br/>
            <nav>
                <ul class="pagination">
                    <c:if test="${pageInfo.currentPage != 1}">
                        <li>
                            <a href="${pageContext.request.contextPath}/setPage?currentPage=${pageInfo.currentPage-1}"
                               aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>

                    <c:forEach begin="1" end="${pageInfo.totalPage}" var="i">
                        <li>
                            <a href="${pageContext.request.contextPath}/setPage?currentPage=${i}">${i}</a>
                        </li>
                    </c:forEach>

                    <c:if test="${pageInfo.currentPage != pageInfo.totalPage}">
                        <li>
                            <a href="${pageContext.request.contextPath }/setPage?currentPage=${pageInfo.currentPage+1}"
                               aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-3" style="padding-top: 30px;">
            <div class="row">
                <ul class="list-group">
                    <li class="list-group-item">
                        <strong>
                            <a href="${pageContext.request.contextPath}/index">主页</a>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;博客分类
                        </strong>
                    </li>
                    <c:forEach items="${blogTypeList}" var="blogType">
                        <li class="list-group-item">
                            <a href="${pageContext.request.contextPath}/blogType/.do?blogTypeId=${blogType.id}">${blogType.typeName}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>

    </div>

</div>

<!--END HOME PAGE SECTION-->
<div class="footer-sec" style="margin-top: 0px;">
    <div class="container">
        <div class="row">
            <div class="col-md-12 foo-inner">
                Copyright &copy; all rights reserved 2023.
            </div>
        </div>
    </div>
</div>

<!-- CORE JQUERY -->
<script src="../style/assets/js/jquery-1.11.1.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="../style/assets/js/bootstrap.js"></script>

</body>
</html>
