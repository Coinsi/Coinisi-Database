<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <title>修改产品</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- 引入 Bootstrap -->
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <!-- 添加自定义样式 -->
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
      <li><a href="${pageContext.request.contextPath}/product/allProduct">产品列表</a></li>
      <li class="active"><a href="#">修改订单</a></li>
    </ul>
  </div>
</nav>

<div class="container">

  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="page-header">
        <h1>
          修改订单
          <small>请填写以下信息</small>
        </h1>
      </div>
    </div>
  </div>
  <form action="${pageContext.request.contextPath}/product/updateProduct" method="post">
    <div class="form-group">
      <input type="hidden" name="id" class="form-control" value="${product.id}"/>
    </div>

    <div class="form-group">
      <label>商品名称</label>
      <input type="text" name="name" class="form-control"  value="${product.name}"  required>
    </div>

    <div class="form-group">
      <label>商品描述</label>
      <input type="text" name="description" class="form-control"  value="${product.description}"  required>
    </div>

    <div class="form-group">
      <label>商品价格</label>
      <input type="number" name="price" class="form-control"  value="${product.price}"  min="0" step="0.01" required>
    </div>

    <div class="form-group">
      <label >商品数量</label>
      <input type="number" name="stock"class="form-control" value="${product.stock}"  min="0" step="1" required>
    </div>

    <div class="form-group">
      <label>商品图片</label>
      <input type="text" name="image" class="form-control" value="${product.image}" >
    </div>
    <input type="submit" value="提交">
  </form>

</div>

<!-- 添加页脚 -->
<div class="footer">
  ©2023 by 我的商城. Proudly created by rain.
</div>

</body>
</html>
