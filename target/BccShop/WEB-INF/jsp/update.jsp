<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href=" resources/css/bootstrap.css"/>
    <script src="resources/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
    <script src="resources/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <script src="resources/js/update.js" type="text/javascript" charset="utf-8"></script>
    <title>添加商品</title>
    <style>
        body {
            background-color: transparent;
        }
    </style>
</head>
<body>
<div class="container navbar navbar-default" style="padding-bottom: 20px;">
    <!-- 顶部文本 -->
    <h3 class="text-center text-info">商品修改</h3>
        <!-- 商品搜索 -->
        <div class="row" style="padding-top: 20px;">
            <form class="bs-example bs-example-form" action="find" role="form" method="get">
                <div class="form-group">
                    <!-- <label for="goodsId" class="col-xs-2 col-xs-offset-3 control-label">商品ID</label> -->
                    <div class="col-xs-5 col-xs-offset-4" id="inputId">
                        <input type="number" class="form-control" id="goodsId" name="goodsId" placeholder="请输入商品ID查找">
                    </div>
                    <div class="hidden" id="gi">${goods.goodsId}</div>
                    <span class="form-group-btn">
										<button class="btn btn-sm btn-info" type="submit">Go!</button>
									</span>
                </div>
            </form>
        </div>
        <!-- 商品信息表单 -->
        <form class="form-horizontal" id="creatGoods_from" enctype="multipart/form-data" method="post">
    <!-- 商品名称 -->
    <div class="row">
        <div class="form-group">
            <label for="goodsName" class="col-xs-2 col-xs-offset-2 control-label">商品名称:</label>
            <div class="col-xs-6" id="inputname">
                <input type="text" class="form-control" id="goodsName" name="goodsName" placeholder="请输入商品名称">
                <div class="hidden" id="gn">${goods.goodsName}</div>
            </div>
        </div>
    </div>
    <!-- 提示 -->
    <div id="msg_name" class="text-center text-danger"></div>

    <!-- 商品图片 -->
    <div class="row">
        <div class="form-group">
            <label for="goodsPhoto" class="col-xs-2 col-xs-offset-2 control-label">商品图片:</label>
            <div class="col-xs-4" id="inputpho">
                <input type="file" class="form-control" id="goodsPhoto" name="goodsPhoto" s>

            </div>
            <div class="hidden" id="p0">${goods.goodsPhoto}</div>
        </div>
    </div>
    <!-- 提示 -->
    <div id="msg_pho" class="text-center text-danger"></div>

    <!-- 商品原价 -->
    <div class="row">
        <div class="form-group">
            <label for="originalPrice" class="col-xs-2 col-xs-offset-2 control-label ">商品原价:</label>
            <div class="col-xs-6" id="inputorp">
                <input type="number" class="form-control" id="originalPrice" name="originalPrice" placeholder="请输入商品原价">
            </div>
            <div class="hidden" id="op">${goods.originalPrice}</div>
        </div>
    </div>
    <div id="msg_orp" class="text-center text-danger"></div>

    <!-- 商品价格 -->
    <div class="row">
        <div class="form-group">
            <label for="goodsPrice" class="col-xs-2 col-xs-offset-2 control-label ">商品价格:</label>
            <div class="col-xs-6" id="inputPrice">
                <input type="number" class="form-control" id="goodsPrice" name="goodsPrice" placeholder="请输入商品价格">
            </div>
            <div class="hidden" id="gp">${goods.goodsPrice}</div>
        </div>
    </div>
    <div id="msg_price" class="text-center text-danger"></div>

    <!-- 商品描述 -->
    <div class="row">
        <div class="form-group">
            <label for="goodsDescribe" class="col-xs-2 col-xs-offset-2 control-label ">商品描述:</label>
            <div class="col-xs-6" id="inputdes">
                <textarea class="form-control" rows="3" id="goodsDescribe" name="goodsDescribe"
                          placeholder="请输入商品描述"></textarea>
                <div class="hidden" id="gd">${goods.goodsDescribe}</div>
            </div>
        </div>
    </div>
    <div id="msg_des" class="text-center text-danger"></div>

    <!-- 商品类别 -->
    <div class="row">
        <div class="form-group">
            <label class="col-xs-2 col-xs-offset-2 control-label ">商品类别:</label>
            <div class="col-xs-6" id="inputcat1">
                <select class="navbar-left form-control" id="goodsCategory1" name="goodsCategory1"
                        style="width: 150px;">
                    <option selected="selected"></option>
                    <option>服装</option>
                    <option>美妆</option>
                    <option>数码</option>
                    <option>家居</option>
                    <option>食品</option>
                    <option>图书</option>
                </select>

                <div class="hidden" id="cat1">${goods.goodsCategory[0].categoryName}</div>

            </div>

        </div>
    </div>
    <div id="msg_cat1" class="text-center text-danger"></div>

    <!-- 营销类别 -->
    <div class="row">
        <div class="form-group">
            <label class="col-xs-2 col-xs-offset-2 control-label ">营销类别:</label>
            <div class="col-xs-6" id="inputdes2">
                <select class="navbar-left form-control" id="goodsCategory2" name="goodsCategory2"
                        style="width: 150px;">
                    <option selected="selected"></option>
                    <option>时尚潮流</option>
                    <option>名店促销</option>
                    <option>潮货汇集</option>
                    <option>感恩回馈</option>
                    <option>品牌盛宴</option>
                    <option>新品爆款</option>
                    <option>名店潮搭</option>
                    <option>精品搭配</option>
                    <option>新客专享</option>
                    <option>超值返利</option>
                    <option>限时抢购</option>
                </select>
                <div class="hidden" id="cat2">${goods.goodsCategory[1].categoryName}</div>
            </div>

        </div>
    </div>
    <div id="msg_cat2" class="text-center text-danger"></div>

    <!-- 提交按钮 -->
    <div class="row">
        <div class="col-xs-6 col-xs-offset-4">
            <button class="btn btn-success" id="btn" name="btn" onclick="updateGoods()">确认修改</button>
        </div>
    </div>

    </form>
</div>
</body>
</html>
