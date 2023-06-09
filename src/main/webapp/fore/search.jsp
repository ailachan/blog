<!--search.jsp-->
<%@page contentType="text/html" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>搜索博文</title>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../style/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Custom icon font-->
    <link rel="stylesheet" href="../style/css/fontastic.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../style/css/style.default.css" id="theme-stylesheet">
</head>
<body>

<!-- Widget [Search Bar Widget]-->
<div class="widget search">
    <header>
        <h3 class="h6">搜索博文</h3>
    </header>

    <form action="${pageContext.request.contextPath}/search" method="post">
        <div class="form-group">
            <input id="str" name="str" type="text" placeholder="查询题目、摘要、内容、关键字">
            <button type="submit" class="submit"><i class="icon-search"></i></button>
        </div>
    </form>

</div>

<!-- JavaScript files-->
<script src="../style/vendor/jquery/jquery.min.js"></script>
<script src="../style/vendor/popper.js/umd/popper.min.js"></script>
<script src="../style/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../style/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="../style/vendor/@fancyapps/fancybox/jquery.fancybox.min.js"></script>
<script src="../style/js/front.js"></script>
</body>

<script src="../style/js/jquery.min.js"></script>

</html>