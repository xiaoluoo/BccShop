<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>显示商品</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <script src="resources/js/list.js" type="text/javascript" charset="utf-8"></script>
    <style>
        body {
            background-color: transparent;
        }

        a:link {
            color: #000000;
        }

        a:visited {
            color: #000000;
        }
    </style>
</head>
<body>
<div class="container navbar navbar-default" style="padding-bottom: 20px;">
    <div class="row">
        <div class="col-md-8 col-lg-offset-2">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>商品ID</th>
                    <th>商品名称</th>
                    <th>商品价格</th>
                    <th>商品类别</th>
                    <th>营销类别</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${goodslist}" var="goods" varStatus="sta">
                    <tr>
                        <td>${goods.goodsId}</td>
                        <td>${goods.goodsName}</td>
                        <td>${goods.goodsPrice}</td>
                        <c:set value="${goods.goodsCategory}" var="cate"/>
                        <c:forEach items="${cate}" var="cate">
                            <td>${cate.categoryName}</td>
                        </c:forEach>
                        <td>
                            <span onclick="find(${goods.goodsId})" class="btn glyphicon glyphicon-search"></span>
                            <span onclick="delet(${goods.goodsId})" class="btn glyphicon glyphicon-trash"></span>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>

    </div>
</div>
</body>
</html>