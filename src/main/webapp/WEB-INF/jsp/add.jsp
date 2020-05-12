<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
		<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script src="https://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		<script src="resources/js/add.js" type="text/javascript" charset="utf-8"></script>
		<title>添加商品</title>
		<style>
			body{
				background-color:transparent;
			}
		</style>
	</head>
	<body>
		<div class="container navbar navbar-default" style="padding-bottom: 20px;">
			<h3 class="text-center text-info">商品添加</h3>
			<form class="form-horizontal" id="creatGoods_from" enctype="multipart/form-data" method="post">
				<div class="row" style="padding-top: 20px;">
					<div class="form-group">
						<label for="goodsName" class="col-xs-2 col-xs-offset-2 control-label">商品名称:</label>
						<div class="col-xs-6" id="inputname">
							<input type="text" class="form-control" id="goodsName" name="goodsName" placeholder="请输入商品名称">
						</div>
					</div>
				</div>
				<div id="msg_name" class="text-center text-danger"></div>
				<div class="row">
					<div class="form-group">
						<label for="goodsPhoto" class="col-xs-2 col-xs-offset-2 control-label">商品图片:</label>
						<div class="col-xs-4" id="inputpho">
							<input type="file" class="form-control" id="goodsPhoto" name="goodsPhoto">
						</div>
					</div>
				</div>
				<div id="msg_pho" class="text-center text-danger"></div>
				<div class="row">
					<div class="form-group">
						<label for="originalPrice" class="col-xs-2 col-xs-offset-2 control-label ">商品原价:</label>
						<div class="col-xs-6" id="inputorp">
							<input type="number" class="form-control" id="originalPrice" name="originalPrice" placeholder="请输入商品原价" />
						</div>
					</div>
				</div>
				<div id="msg_orp" class="text-center text-danger"></div>
				<div class="row">
					<div class="form-group">
						<label for="goodsPrice" class="col-xs-2 col-xs-offset-2 control-label ">商品价格:</label>
						<div class="col-xs-6" id="inputPrice">
							<input type="number" class="form-control" id="goodsPrice" name="goodsPrice" placeholder="请输入商品价格">
						</div>
					</div>
				</div>
				<div id="msg_price" class="text-center text-danger"></div>
				<div class="row">
					<div class="form-group">
						<label for="describe" class="col-xs-2 col-xs-offset-2 control-label ">商品描述:</label>
						<div class="col-xs-6" id="inputdes">
							<textarea class="form-control" rows="3" id="goodsDescribe" name="goodsDescribe" placeholder="请输入商品描述"></textarea>

						</div>
					</div>
				</div>
				<div id="msg_des" class="text-center text-danger"></div>

				<div class="row">
					<div class="form-group">
						<label class="col-xs-2 col-xs-offset-2 control-label ">商品类别:</label>
						<div class="col-xs-6" id="inputcat1">
							<select class="navbar-left form-control" id="goodsCategory1" name="goodsCategory1" style="width: 150px;">
								<option selected="selected"></option>
								<option>服装</option>
								<option>美妆</option>
								<option>数码</option>
								<option>家居</option>
								<option>食品</option>
								<option>图书</option>
							</select>
						</div>

					</div>
				</div>
				<div id="msg_cat1" class="text-center text-danger"></div>

				<div class="row">
					<div class="form-group">
						<label class="col-xs-2 col-xs-offset-2 control-label ">营销类别:</label>
						<div class="col-xs-6" id="inputdes2">
							<select class="navbar-left form-control" id="goodsCategory2" name="goodsCategory2" style="width: 150px;">
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
						</div>

					</div>
				</div>
				<div id="msg_cat2" class="text-center text-danger"></div>
			</form>
			<div class="row">
				<div class="col-xs-6 col-xs-offset-4">
					<button class="btn btn-success" id="btn" name="btn" onclick="createGoods()">确认添加</button>
				</div>
			</div>
		</div>
	</body>
</html>
