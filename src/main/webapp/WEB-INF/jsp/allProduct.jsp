
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {

            background-size: cover;
            background-repeat: no-repeat;
        }
        .container {
            margin-top: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        input[type="submit"] {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            background-color: #337ab7;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
        }
        .navbar {
            margin-bottom: 0;
        }
        .navbar-brand {
            font-size: 24px;
        }
        .footer {
            background-color: #f8f8f8;
            padding: 20px;
            text-align: center;
        }
    </style>
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
            <li class="active"><a href="#">产品列表</a></li>
            <li><a href="${pageContext.request.contextPath}/product/toAddProduct">新增产品</a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>产品列表 —— 显示所有产品</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/product/toAddProduct">新增</a>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>产品号</th>
                    <th>产品名</th>
                    <th>产品描述</th>
                    <th>产品价格</th>
                    <th>产品数量</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="product" items="${requestScope.get('list')}">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>${product.stock}</td>

                        <td>
                            <a href="${pageContext.request.contextPath}/product/toUpdateProduct?id=${product.id}">更改</a> |
                            <a href="${pageContext.request.contextPath}/product/del/${product.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- 添加页脚 -->
<div class="footer">
    ©2023 by 我的商城. Proudly created by rain.
</div>
<body/>