<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/update.css">
</head>
<body>

<!-- 添加导航栏 -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">我的商城</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/order/allOrder">订单列表</a></li>
            <li class="active"><a href="#">修改订单</a></li>
        </ul>
    </div>
</nav>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/order/updateOrder" method="post">
        <input type="hidden" class="form-control" name="id" value="${order.id}"/>
        <div class="form-group">
            <label >用户编号</label>
            <input type="text" class="form-control" name="id" value="${order.userId}"/>
        </div>
        <div class="form-group">
            <label >用户编号</label>
            <input type="text" class="form-control" name="userId" value="${order.userId}"/>
        </div>
        <div class="form-group">
            <label>订单状态</label>
            <input type="text" class="form-control" name="orderStatus" value="${order.orderStatus}"/>
        </div>
        <div class="form-group">
            <label>订单总计</label>
            <input type="text" class="form-control" name="total" value="${order.total }"/>
        </div>
      <div class="form-group">
          <label>订单时间</label>
          <input type="text" class="form-control" name="orderTime" value="${order.orderTime }"/>
      </div>
        <input type="submit" value="提交"/>
    </form>
    <!-- 添加页脚 -->
    <div class="footer">
        ©2023 by 我的商城. Proudly created by rain.
    </div>
</div>