<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>新增订单</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/add1.css">
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
            <li><a href="${pageContext.request.contextPath}/order/allOrder">订单列表</a></li>
            <li class="active"><a href="#">新增订单</a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    新增订单
                    <small>请填写以下信息</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/order/allOrder" method="post">
        <div class="form-group">
            <label >用户编号</label>
            <input type="text" name="userId" class="form-control" placeholder="请输入用户编号" required>
        </div>
        <div class="form-group">
            <label>订单状态</label>
            <input type="text" name="orderStatus" class="form-control" min="0" step="0.01" placeholder="请输入订单状态" required>
        </div>

        <div class="form-group">
            <label >订单总计</label>
            <input type="text" name="total" class="form-control" min="0" step="1" placeholder="请输入订单数量" required>
        </div>
        <div class="form-group">
            <label>订单时间</label>
            <input type="text" name="orderTime" class="form-control" placeholder="请输入订单时间" required>
        <input type="submit" value="添加">
        </div>
    </form>

</div>
<!-- 添加页脚 -->
<div class="footer">
    ©2023 by 我的商城. Proudly created by rain.
</div>

</body>
</html>