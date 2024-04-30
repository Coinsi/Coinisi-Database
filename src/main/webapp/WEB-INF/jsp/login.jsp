<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <title> 登录 </title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: url(${pageContext.request.contextPath}/img/登录页.png);

    }


    .user-load {
        background-color: rgba(66, 32, 31, 0.158);
        width: 800px;
        height: 500px;
        position: absolute;
        top: 100px;
        left: 330px;
        border: #f8020236 3px solid;
        border-radius: 70px;
        box-shadow: 0 0 100px rgba(211, 45, 16, 0.5);
        padding: 60px 280px 0;

    }

    .user-load h1 {
        color: rgba(231, 227, 226, 0.507);
        text-align: center;
        display: block;
        border: #e4121248 3px solid;
        border-radius: 20px;
        box-shadow: 0 0 30px rgb(128, 46, 43);
        margin-left: 55px;
        margin-bottom: 40px;
        background-color: transparent;
    }



    .user-load li {
        list-style: none;
        margin-bottom: 30px;
        color: rgb(250, 16, 8);
        font-weight: 600;
    }

    .user-load li input {
        outline: none;
        padding-left: 10px;
        width: 150px;
        height: 22px;
        border-radius: 7px;
        border: 1px solid transparent;

        box-shadow: 0 2px 20px rgb(238, 16, 8);
        transition: all 0.5s ease-in-out;
    }

    .user-load li input:focus,
    .user-load ul .enter:focus {

        box-shadow: 0px 5px 20px rgb(7, 217, 224);
    }

    .user-load ul div {
        margin-left: 24px;
        margin-top: 25px;
        color: #fff;
        font-size: 14px;
    }

    .user-load ul .enter {
        background-color: rgb(250, 16, 8);
        border: 1px solid transparent;
        outline: none;
        width: 200px;
        margin-left: 20px;
        height: 30px;
        border-radius: 10px;
        box-shadow: 0 2px 20px rgb(250, 16, 8);
        color: #fff;
        font-size: 15px;
        font-weight: 900;
        transition: all 0.5s ease-in-out;
        margin-top: 30px;

    }
    .user-load ul .loading a {
        color: rgb(224, 50, 50);

    }

    .user-load ul .remember-password {
        position: relative;
        margin-top: 30px;
        margin-left: 30px;
        font-size: 14px;
        color: rgb(250, 16, 8);
        font-weight: 600;
    }

    .remember-password a {
        position: absolute;
        text-decoration: none;
        font-size: 14px;
        color: rgb(212, 203, 203);
        font-weight: 600;
        top: 0;
        left: 120px;
    }

    .remember-password a:hover {
        color: rgb(250, 16, 8);
    }
    video {
        width: 100%;
        position: fixed;
        z-index: -9999;
    }
</style>

<body>
<div class="wrap">
    <!-- <video src="../Firekeeper.mp4" autoplay="autoplay" loop="loop" muted="muted"></video> -->
    <div class="user-load">
        <h1>登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录</h1>
        <form method="get" action="${pageContext.request.contextPath}/user/login">
            <ul>
                <li>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type=" text" name="username" id="id" maxlength="10"
                                                                        placeholder=""></li>
                <li>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" id="password" maxlength="10"
                                                                        placeholder=""></li>

                <div class="remember-password"><input type="checkbox" class="remeberpsw"> 记住密码
                    <p><a href="#">忘记密码</a></p>
                </div>
                <input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录" class="enter">
                <div><input type="checkbox" checked="checked"> 我同意隐私公开条款</div>
                <div class="loading"><a href="${pageContext.request.contextPath}/user/jumpregister">尚未注册账户，立即注册</a></div>
            </ul>
        </form>
    </div>
</div>
</body>
<script>
    setInterval(() => {
        // 创建rain
        var rain = document.createElement("div")

        //初始化rain

        rain.style.position= "fixed", //相对于视窗定位
            rain.style.height="45px",
            rain.style.width= "2px",
            rain.style.backgroundColor= "skyblue",
            rain.style.filter= "blur(1px)",
            rain.style.top= "0",
            rain.style.left=Math.random() * 1920 + "px", //水平随机刷新
            rain.style.opacity= parseInt(Math.random() * 10) / 10 + "", // 随机透明度

            // 向body里添加子节点rain
            document.body.appendChild(rain)
        // rain动画
        var timer = setInterval(() => {
            var height = parseInt(rain.style.top);
            var i = 1;
            i++;
            rain.style.top = height + 5 * Math.pow(i, 2) + "px";

            if (rain.style.top >= "900px") {
                clearInterval(timer);
                rain.parentNode.removeChild(rain)
            }
        }, 10)
    })
</script>

</html>

