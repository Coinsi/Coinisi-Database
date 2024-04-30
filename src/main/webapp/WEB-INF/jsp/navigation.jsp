
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            width: 100%;
            height: 100%;
            background-size: cover;
            background: linear-gradient(rgb(0, 153, 255), #ffffff, #c1deff);
            cursor: url(https://cdn.xfabe.com/image/Arrow.cur), auto;
            font-size: 14px;
            color: rgb(0, 69, 126) !important;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        /*<#ffbdc9>*/
        .container {
            background: #f8f8f8;
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        nav {
            background: #fff;
            border-radius: 50px;
            padding: 10px;
            box-shadow: 0 25px 20px -20px rgba(0, 0, 0, 0.4);
        }
        nav ul li {
            list-style: none;
            display: inline-block;
            padding: 13px 35px;
            margin: 10px;
            font-size: 18px;
            font-weight: 500;
            color: #777;
            cursor: pointer;
            position: relative;
            z-index: 2;
            transition: color 0.5s;
        }
        nav ul li::after {
            content: '';
            background: #f44566;
            width: 100%;
            height: 100%;
            border-radius: 30px;
            position: absolute;
            top: 100%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: -1;
            opacity: 0;
            transition: top 0.5s,opacity 0.5s;
        }
        nav ul li:hover{
            color: #fff;
        }
        nav ul li:hover::after{
            top: 50%;
            opacity: 1;
        }
    </style>
    <title>商城导航</title>
</head>
<body>
<div class="container">
    <nav>
        <ul>
            <li ><a href="${pageContext.request.contextPath}/home">首页</a></li>
            <li ><a href="${pageContext.request.contextPath}/product/allProduct">产品</a></li>
            <li ><a href="${pageContext.request.contextPath}/order/allOrder">订单</a></li>
            <li><a href="${pageContext.request.contextPath}/orderDetail/allorderDetail">订单详情</a></li>
            <li><a href="${pageContext.request.contextPath}/user/topersonalpage">个人</a></li>
        </ul>
    </nav>
</div>
</body>
</html>
