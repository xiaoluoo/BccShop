<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>并夕夕官方网站</title>
    <link href="resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="resources/js/jquery-1.12.4.js"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/bootstrap.js"></script>
    <style>
        tr th {
            text-align: center;
            margin: auto;
        }

        tr td {
            text-align: center;
            margin: auto;
            margin-top: auto;
        }

        body {
            color: #666;
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3" style="padding-top: 10px;">
            <p class="text-success">欢迎来到夕夕的世界！</p>
        </div>
        <div class="col-md-6" style="padding-top: 10px;">
            <p id="hello" class="text-info"></p>
        </div>
        <div class="col-md-3" style="margin-top: 10px;">
            <a href="#"><span id="user" class="glyphicon glyphicon-user"
                              style="color: #306060; font-size: 20px; margin-left: 30px;">${USER_SESSION.userName}</span>
            </a> <a href="logout"> <span id="pleLogout">退出</span>
        </a>
        </div>
    </div>
</div>
<div class="container" style="background-color: #ffda73;">
    <div class="row">
        <div class="col-md-3">
            <img src="resources/img/logo.png" height="80px;" class="img-rounded"
                 alt="logo">
        </div>
        <div class="col-md-6">
            <div style="padding-top: 25px;">
                <form class="bs-example bs-example-form" action="goods" role="form"
                      method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" id="name" name="name">
                        <span class="input-group-btn">
								<button class="btn btn-default" type="submit">Go!</button>
							</span>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-3">
            <div style="padding-top: 30px;">

                <!-- Button trigger modal -->
                <span class=" glyphicon glyphicon-shopping-cart"
                      style="color: #A68425; font-size: 20px;" data-toggle="modal"
                      data-target="#myModal">购物车</span>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                     aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title  text-info text-center"
                                    id="myModalLabel">我的购物车</h4>

                            </div>
                            <div class="modal-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th class="active">商品图片</th>
                                            <th class="active">商品名称</th>
                                            <th class="active">商品价格</th>
                                            <th class="active">商品数量</th>
                                        </tr>

                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="danger"><img src="resources/img/logo.png"
                                                                    width="50px" height="30px" alt="商品图片"></td>
                                            <td class="danger">怡宝</td>
                                            <td class="danger">2.0</td>
                                            <td class="danger"><input type="number" id="number"
                                                                      value="1" class="form-control"
                                                                      style="width: 80px;"></td>
                                        </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default btn-sm"
                                        data-dismiss="modal">返回首页
                                </button>
                                <button type="button" class="btn btn-success btn-sm">立即购买</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#">全部类别</a></li>
            <li><a href="#">服装</a></li>
            <li><a href="#">美妆</a></li>
            <li><a href="#">数码</a></li>
            <li><a href="#">家居</a></li>
            <li><a href="#">食品</a></li>
            <li><a href="#">图书</a></li>
        </ul>
    </div>
</div>
<div class="container ">
    <div class="row" style="margin: 20px -200px;">
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <a href="#"> <img src="resources/img/H5.jpg"
                                      class="img-rounded">
                    </a>
                    <div class="carousel-caption"></div>
                </div>
                <div class="item">
                    <a href="#"> <img src="resources/img/H2.jpg"
                                      class="img-rounded">
                    </a>
                    <div class="carousel-caption"></div>
                </div>
                <div class="item">
                    <a href="#"> <img src="resources/img/H4.jpg"
                                      class="img-rounded">
                    </a>
                    <div class="carousel-caption"></div>
                </div>
                <div class="item">
                    <a href="#"> <img src="resources/img/H1.jpg"
                                      class="img-rounded">
                    </a>
                    <div class="carousel-caption"></div>
                </div>
                <div class="item">
                    <a href="#"> <img src="resources/img/H3.jpg"
                                      class="img-rounded">
                    </a>
                    <div class="carousel-caption"></div>
                </div>
                <!-- 轮播（Carousel）导航 -->

            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row ">
        <div class="col-md-2">
            <a href="#"> <img src="resources/img/3_1.jpg" alt="图片出小差了"
                              class="img-rounded">
            </a>
        </div>
        <div class="col-md-8 bg-success" style="padding: 15px 20px 10px 5px">
            <div class="row ">
                <div id="myCarousel1" class="carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel1" data-slide-to="1"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_1.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_2.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_3.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_4.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_6.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_7.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="#"> <img src="resources/img/2_8.jpg" alt="图片出小差了"
                                                  class="img-rounded">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- 轮播（Carousel）导航 -->

                </div>

                <div class="row" style="margin: 10px 50px;">
                    <h4 class="text-center">夕夕,好想给你全部吖！</h4>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <a href="#"> <img src="resources/img/3_2.jpg" alt="图片出小差了"
                              class="img-rounded">
            </a>
        </div>
    </div>

</div>
<div class="container">

    <div class="row" style="margin-top: 20px;">
        <a href="#"> <img src="resources/img/4_1.jpg" alt="图片出小差了"
                          class="img-rounded">
        </a>
    </div>
</div>
<!-- 推荐商品 -->
<div class="container">
    <!-- 超值返利 -->
    <div class="row" style="margin-top: 20px;">
        <div class="col-md-3" style="">
            <img src="resources/img/chaozhi.png" alt="图片出小差了"
                 class=" img-thumbnail">
        </div>
        <div class="col-md-9 bg-success" style="">
            <div class="row" style="margin: 32px 5px 32px 5px;">
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- 限时抢购 -->
    <div class="row" style="margin-top: 20px;">
        <div class="col-md-3" style="">
            <img src="resources/img/qianggou.png" alt="图片出小差了"
                 class=" img-thumbnail">
        </div>
        <div class="col-md-9 bg-success" style="">
            <div class="row" style="margin: 32px 5px 32px 5px;">
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="row" style="margin-top: 10px;">
        <a href="#"> <img src="resources/img/5_1.png" alt="图片出小差了"
            class="img-rounded">
        </a>
    </div> -->
    <!-- 新客专享 -->
    <div class="row" style="margin-top: 20px;">
        <div class="col-md-3" style="">
            <img src="resources/img/xinyonghu.png" alt="图片出小差了"
                 class=" img-thumbnail">
        </div>
        <div class="col-md-9 bg-success" style="">
            <div class="row" style="margin: 32px 5px 32px 5px;">
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#"> <img src="resources/img/2_5.jpg" alt="图片出小差了"
                                      class="img-rounded  img-thumbnail">
                    </a>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- 尾部 -->
<div class="container" style="margin-top: 30px;">
    <div class="row">
        <div class="col-md-3">
            <div class="glyphicon glyphicon-tasks"
                 style="color: rgb(255, 140, 60); font-size: 40px; margin-left: 40px;"></div>

        </div>
        <div class="col-md-3">
            <div class="glyphicon glyphicon-gift"
                 style="color: rgb(255, 140, 60); font-size: 40px; margin-left: 40px;"></div>
        </div>
        <div class="col-md-3">
            <div class="glyphicon glyphicon-thumbs-up"
                 style="color: rgb(255, 140, 60); font-size: 40px; margin-left: 40px;"></div>
        </div>
        <div class="col-md-3">
            <div class="glyphicon glyphicon-yen"
                 style="color: rgb(255, 140, 60); font-size: 40px; margin-left: 40px;"></div>
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-md-3">
            <h5 class="">品类齐全，轻松购物</h5>
        </div>
        <div class="col-md-3">
            <h5 class="">多仓直发，极速配送</h5>
        </div>
        <div class="col-md-3">
            <h5 class="">正品行货，精致服务</h5>
        </div>
        <div class="col-md-3">
            <h5 class="       ">天天低价，畅选无忧</h5>
        </div>
    </div>
    <div class="row" style="margin-top: 50px;">
        <div class="col-md-4">
            <img src="resources/img/logo1.png" class="img-rounded" alt="logo1">
            <div class="row">
                <small>Copyright © 2004 - 2019 bcc.com 版权所有</small>
            </div>

        </div>
        <div class="col-md-4">
            <div class="row" style="margin-top: 10px; font-weight: bold;">
                <small>版权信息</small>
            </div>
            <div class="row" style="margin-top: 10px;">
                <small>京公网安备 10000000000号</small>
            </div>
            <div class="row" style="margin-top: 10px;">
                <small>新出发并零 字第大188007号</small>
            </div>
            <div class="row" style="margin-top: 10px;">
                <small>违法和不良信息举报电话：110011001100</small>
            </div>
            <div class="row" style="margin-top: 10px;">
                <small>(京)网械平台备字(2018)第00001号营业执照</small>
            </div>
        </div>
        <div class="col-md-4">
            <small style="font-weight: bold;">并夕夕商城客户端下载</small>
            <div class="row">
                <div class="col-md-4" style="margin-top: 30px;">
                    <div class="row">
                        <a href="#"><img src="resources/img/android.png"
                                         class="img-rounded" alt="android"> </a>
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <a href="#"> <img src="resources/img/ios.png"
                                          class="img-rounded" alt="ios">
                        </a>
                    </div>
                </div>
                <div class="col-md-4" style="margin-top: 20px;">
                    <img src="resources/img/erweima.png" class="img-rounded"
                         alt="erweima">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>