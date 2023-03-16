<!--login.jsp-->
<%@ page language="java" pageEncoding="UTF-8" %>
<%@page contentType="text/html" %>

<!DOCTYPE html>

<html class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>blogger login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FreeHTML5.co"/>
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive"/>


    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="../style/css/login/bootstrap.min.css">
    <link rel="stylesheet" href="../style/css/login/animate.css">
    <link rel="stylesheet" href="../style/css/login/style.css">

    <script src="../style/js/login/modernizr-2.6.2.min.js"></script>
    <script src="../style/js/login/respond.min.js"></script>

    <%-- 引入JQ --%>
    <script src="../style/js/jquery.min.js"></script>

</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">

            <form class="fh5co-form animate-box" data-animate-effect="fadeIn">
                <h2>后台登录</h2>
                <div class="form-group">
                    <label for="username" class="sr-only">用户名</label>
                    <input type="text" class="form-control" id="username" placeholder="用户名" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" class="form-control" id="password" placeholder="密码" autocomplete="off">
                </div>
                <div class="form-group">
                    <button class="btn btn-primary" id="loginBtn" onclick="adminLogin()">登录</button>
                </div>
            </form>

        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p>Copyright &copy; all rights reserved 2023</p></div>
    </div>
</div>

<!-- jQuery -->
<script src="../style/js/login/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../style/js/login/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="../style/js/login/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="../style/js/login/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="../style/js/login/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>



<script type="text/javascript">

    function adminLogin() {
        let username = $("#username").val();
        let password = $("#password").val();

        if (username === "" || password === "") {
            alert("请完善登陆信息！");
            location.reload();
        } else {
            let blogger = {
                username: username,
                password: password
            };

            axios({
                method: "post",
                url: "${pageContext.request.contextPath}/checkLogin",
                data: blogger//发送json格式
            }).then(function (response) {
                let status = response.data;//接收任意object类型,json也是object
                if (status === true) {
                    window.location.href = "${pageContext.request.contextPath}/admin/manage";
                }
                else{
                    window.alert("登陆失败，用户名或密码错误！");
                }
            })

        }

    }

</script>
</body>

</html>

