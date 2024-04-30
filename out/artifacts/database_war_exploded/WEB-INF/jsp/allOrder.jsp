<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单列表</title>
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
            <li class="active"><a href="#">订单列表</a></li>
            <li><a href="${pageContext.request.contextPath}/order/toAddOrder">新增订单</a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>订单列表 —— 显示所有订单</small>
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
                    <th>订单编号</th>
                    <th>用户编号</th>
                    <th>订单状态</th>
                    <th>订单数量</th>
                    <th>订单时间</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="order" items="${requestScope.get('list')}">
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.userId}</td>
                        <td>${order.orderStatus}</td>
                        <td>${order.total}</td>
                        <td>${order.orderTime}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/order/toUpdateOrder/?id=${order.getId()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/order/del/${order.getId()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
