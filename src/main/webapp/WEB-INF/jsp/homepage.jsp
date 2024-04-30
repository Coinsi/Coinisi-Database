
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
<%--    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--引用css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/homepage.css">
    <%--引用js--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/homepage.js">

</head>
<body>

<div class="navbar">
    <header>
        <a href="#" class="logo">我的商城</a>
        <ul>
            <li class="active"><a href="#">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/product/allProduct">商品</a></li>
            <li><a href="${pageContext.request.contextPath}/order/allOrder">订单</a></li>
            <li><a href="#">购物车</a></li>
            <li><a href="${pageContext.request.contextPath}/orderDetail/allorderDetail">订单详情</a></li>
            <li><a href="${pageContext.request.contextPath}/user/topersonalpage">个人</a></li>
        </ul>
    </header>
    <section class="banner1"></section>
    <section class="banner2"></section>
</div>

<div class="container">
    <c:forEach var="product" items="${requestScope.get('list')}">
            <div class="card">
                <input type="hidden"  name="id" value="${product.id}"/>
                <img src="${pageContext.request.contextPath}/img/${product.image}" alt="${product.name}">
                <h5>${product.name}</h5>
                <h5>${product.description}</h5>
                <span>价格：${product.price}元</span>
                <span>数量：${product.stock}件</span>

                <div class="purchasenum">
                    <span>购买数量</span>
                    <i class="minus iconfont icon-subtract"></i>
                    <input type="number" min="1" step="1" value="1">
                    <i class="plus iconfont icon-jiahao"></i>
                </div>
                <button>加入订单</button>
            </div>
        </c:forEach>
</div>

<body/>