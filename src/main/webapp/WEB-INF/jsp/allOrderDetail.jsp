<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单细节</title>
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
            <li ><a href="${pageContext.request.contextPath}/payment/allpayment">订单列表</a></li>
            <li class="active"><a href="#">订单详情</a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>订单列表 —— 显示所有订单细节</small>
                </h1>
            </div>
        </div>
    </div>



    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>订单编号</th>
                    <th>产品编号</th>
                    <th>订单数量</th>
                    <th>订单价格</th>

                </tr>
                </thead>

                <tbody>
                <c:forEach var="orderdetail" items="${requestScope.get('list')}">
                    <tr>
                        <td>${orderdetail.orderId}</td>
                        <td>${orderdetail.productId}</td>
                        <td>${orderdetail.quantity}</td>
                        <td>${orderdetail.price}</td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
