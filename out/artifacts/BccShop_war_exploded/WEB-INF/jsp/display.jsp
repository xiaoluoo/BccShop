<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path = request.getSession().getServletContext().getRealPath("/resources/img/");%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/>
    <script src="resources/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <script src="resources/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
    <style>
        body {
            background-color: #f8f8f8;
        }
    </style>
    <script type="text/javascript">

    </script>
</head>
<body>
<div class="container navbar navbar-default" style="padding: 50px 300px;">
    <div class="row" style="">
        <div class="col-md-3 col-md-offset-3">
            <div class="row">
                <img src="resources/img/${goods.goodsPhoto}" class="img-thumbnail">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 col-md-offset-3">
            <div class="row" style="margin-top: 50px;">
                <span style="font-weight: bolder;">商品名称：</span>
                <span>${goods.goodsName}</span>
            </div>
            <div class="row">
                <span style="font-weight: bolder;">原价：</span>
                <span>${goods.originalPrice}</span>
            </div>
            <div class="row">
                <span style="font-weight: bolder;">现价：</span>
                <span>${goods.goodsPrice}</span>
            </div>
            <div class="row">
                <span style="font-weight: bolder;">描述：</span>
                <span>${goods.goodsDescribe}</span>
            </div>
            <div class="row">
                <span style="font-weight: bolder;">商品类别：</span>
                <span>${goods.goodsCategory[0].categoryName}</span>
            </div>
            <div class="row">
                <span style="font-weight: bolder;">营销类别：</span>
                <span>${goods.goodsCategory[1].categoryName}</span>
            </div>
        </div>
    </div>
</div>
</body>
</html>
