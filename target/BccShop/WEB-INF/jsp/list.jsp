<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>显示商品</title>

    <link rel="stylesheet" type="text/css" href=" resources/css/bootstrap.css"/>
    <script src="resources/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
    <script src="resources/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
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