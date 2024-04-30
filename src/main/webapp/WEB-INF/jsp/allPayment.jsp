<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>支付详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- 添加导航栏 -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">我的商城</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/home">首页</a></li>
            <li class="active"><a href="#">支付详情</a></li>
            <li><a href="${pageContext.request.contextPath}/orderDetail/allorderDetail">返回购物车页面</a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>支付列表 —— 显示支付信息</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/order/toAddOrder">新增</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>支付编号</th>
                    <th>订单编号</th>
                    <th>支付方法</th>
                    <th>支付时间</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="payment" items="${requestScope.get('list')}">
                    <tr>
                        <input type="hidden" name="id" value="payment.id">
                        <td>${payment.orderId}</td>
                        <td>${payment.method}</td>
                        <td>${payment.status}</td>
                        <td>${payment.paymentTime}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

