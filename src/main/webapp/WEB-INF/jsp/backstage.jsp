<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>并夕夕商家后台</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <script src="resources/js/backstage.js" type="text/javascript"
            charset="utf-8"></script>
    <link rel="stylesheet" type="text/css"
          href="resources/css/backstage.css"/>
    <style>

    </style>
</head>
<body>
<div class="container" id="head">
    <div class="row">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">商家后台</a>
                </div>

                <div class="navbar-text" style="padding-left: 300px;">
                    <p class="text-info" id="hello"></p>
                </div>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>${USER_SESSION.userName}</a></li>
                    <li><a href="main"><span class="glyphicon glyphicon-log-in"></span>返回首页</a></li>
                </ul>
            </div>
        </nav>

    </div>
</div>
<!-- 正文 -->
<div class="" id="bbody">
    <div class="container navbar navbar-default">
        <div class="row" id="body1">
            <div class="col-md-4" style="width:250px;margin-left: 55px;">
                <li class="list-group-item  active">商品管理</li>
                <a href="#" id="list" class="list-group-item">商品列表</a> <a href="#"
                                                                          id="add" class="list-group-item">添加商品</a> <a
                    href="#" id="update" class="list-group-item">修改商品</a>
                <li class="list-group-item" style="height: 380px;background-color:#f8f8f8;"></li>
            </div>
            <div class="col-md-8" id="body2">
                <iframe id="iframe" src="list" width="100%" height="100%" scrolling="no" frameborder="no"></iframe>
            </div>
        </div>
    </div>
</div>

</body>
</html>
