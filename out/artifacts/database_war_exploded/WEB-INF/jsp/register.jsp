
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <title>注册 </title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: url(${pageContext.request.contextPath}/img/注册页.png) no-repeat;
        background-size: 100%;
        width: 100%;
        height: 100%;
    }

    .user-load {
        background-color: rgba(16, 221, 235, 0.295);
        width: 800px;
        height: 500px;
        position: absolute;
        top: 100px;
        left: 330px;
        border: #0082ec3b 3px solid;
        border-radius: 70px;
        box-shadow: 0 0 100px rgba(4, 238, 226, 0.5);
        overflow: hidden;
        padding: 50px 280px 0;
    }

    .user-load h1 {
        color: rgba(255, 255, 255, 0.623);
        text-align: center;
        display: block;
        border: #0483eb46 3px solid;
        border-radius: 20px;
        box-shadow: 0 0 30px rgba(4, 238, 226, 1);
        margin-left: 55px;
        margin-bottom: 30px;
    }


    .user-load li {
        list-style: none;
        margin-bottom: 10px;
        color: aqua;
        font-weight: 600;
    }

    .user-load li input {
        outline: none;
        padding-left: 10px;
        width: 150px;
        height: 22px;
        border-radius: 7px;
        border: 1px solid transparent;
        box-shadow: 0 2px 20px rgb(7, 210, 224);
        transition: all 0.5s ease-in-out;
    }

    .user-load li input:focus,
    .user-load ul .zhuce:focus {

        box-shadow: 0px 5px 20px rgb(224, 7, 7);
    }

    .user-load ul .zhuce:focus {
        background-color: rgb(7, 210, 224);
    }

    .user-load ul div {
        margin-left: 24px;
        margin-top: 25px;
        color: #fff;
        font-size: 14px;
    }

    .user-load ul .zhuce {
        background-color: rgb(7, 210, 224);
        border: 1px solid transparent;
        outline: none;
        width: 200px;
        margin-left: 20px;
        height: 30px;
        box-shadow: 0 2px 20px rgb(7, 210, 224);
        border-radius: 10px;
        color: #fff;
        font-weight: bolder;
        font-size: 15px;
        font-weight: 500;
        transition: all 0.5s ease-in-out;
        margin-top: 10px;

    }

    .user-load ul .loading a {
        color: rgb(224, 50, 50);

    }
    video {
        width: 100%;
        position: fixed;
        z-index: -9999;
    }
</style>

<body>
<div class="wrap">
    <!-- <video src="../wlop.mp4" autoplay="autoplay" loop="loop" muted="muted"></video> -->
    <div class="user-load">
        <h1>注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;册</h1>
        <form method="GET" action="${pageContext.request.contextPath}/user/register">
            <ul>
                <li>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="username" id="uname"
                                                                        placeholder="请输入用户名" required></li>
                <li>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"
                                                                        id="password" maxlength="10" placeholder="6-10位数字&字母组合" required></li>
                <li>手&nbsp;&nbsp;机&nbsp;&nbsp;号：<input type="text" name="phone" id="phone" maxlength="11"
                                                       placeholder="请输入11位手机号" required></li>
                <li>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type="text" name="email" id="e-mail"
                                                                        placeholder="请输入邮箱" required></li>
                <li>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input type="text" name="address" id="address"
                                                                        placeholder="地址：北京市昌平区" required></li>
                <input type="submit" value="免&nbsp;费&nbsp;注&nbsp;册" class='zhuce'>
                <div><input type="checkbox" checked="checked"> 我同意注册条款和会员加入标准</div>
                <div class="loading"><a href="${pageContext.request.contextPath}/user/jumplogin"> 已有账户，立即登录</a></div>
            </ul>
        </form>
    </div>
</div>
</body>
<script>
    下雨特效
    function rainAnimation(time) {
        setInterval(() => {
            // 创建rain
            var rain = document.createElement("div")
            //初始化rain
            rain.style.position = "fixed" //相对于视窗定位
            rain.style.height = "45px"
            rain.style.width = "2px"
            rain.style.backgroundColor = "#fff"
            rain.style.filter = "blur(1px)"
            rain.style.top = "0"
            rain.style.left = Math.random() * 1920 + "px" //水平随机刷新
            rain.style.opacity = parseInt(Math.random() * 10) / 10 + "" // 随机透明度
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
            }, time)
        })
    }
    rainAnimation(12)
</script>

</html>
