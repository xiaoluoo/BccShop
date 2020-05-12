<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script src="https://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="resources/css/login.css" />
		<script src="resources/js/login.js"></script>
		<title>并夕夕登录</title>
	</head>
	<body>

		<!--头部-->
		<div class="container navbar-default">
			<div class="row">
				<div class="col-md-4">
					<img src="resources/img/logo.png" height="90px;" class="img-rounded" alt="logo">
				</div>
				<div class="col-md-4" style="padding-left: 100px;">
					<img src="resources/img/join.png" height="90px;" class="img-rounded" alt="join" data-toggle="modal" data-target="#RegisterModal"
					 style="cursor: pointer;">
				</div>
				<div class="col-md-4" style="margin-top: 18px;">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> 帮助</a></li>
						<li><a href="main"><span class="glyphicon glyphicon-log-in"></span> 首页</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!--正文-->
		<div style="background-color: #F5CC73;">
			<div class="container">
				<div class="row">
					<div class="col-md-5 navbar-left" style="margin-top: 50px;">
						<div class="img" style="margin: 50px 0px 100px 0px;">
							<img src="resources/img/login_pic.png">
						</div>
					</div>
					<div class="col-md-7" style="margin-top: 50px;">
						<div class="row">
							<h3 class="text-center">并夕夕用户登录</h3>
							<div class="text-center text-danger" id="login_error">${msg}</div>
						</div>
						<!-- 表单 -->
						<form class="form-horizontal" id="user_login" method="post">
							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-md-offset-2">
										<label for="login_userName" class=" navbar-right control-label">用&nbsp&nbsp户&nbsp名:</label>
									</div>

									<div class="col-md-5" id="login_inputName">
										<input type="text" name="userName" class="form-control" id="login_userName" placeholder="请输入用户名">
									</div>
									<div id="msg-name" class="text-center text-danger"></div>
								</div>

							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-md-offset-2">
										<label for="login_password" class="navbar-right control-label">密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码:</label>
									</div>
									<div class="col-md-5" id="login_inputPsd">
										<input type="password" name="password" class="form-control" id="login_password" placeholder="请输入密码">
									</div>
									<div id="msg-psd" class="text-center text-danger"></div>
								</div>

							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-2 col-md-offset-2">
										<label class="navbar-right control-label">选择身份:</label>
									</div>
									<div class="col-md-4" id="login_inputIden">
										<select name="identity" class="navbar-left form-control" id="login_identity" style="width: 150px;">
											<option>用户</option>
											<option>商家</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class=" col-md-6 col-md-offset-4" id="login_inputAgree">
										<div class="checkbox">
											<label> <input type="checkbox" id="login_agree" name="agree">本人已阅读并同意<a href="resources/html/agree.html">《用户协议》</a>
											</label>
										</div>
									</div>
									<div id="msg-agree" class="text-center text-danger"></div>
								</div>

							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-4 col-md-offset-5 ">
										<button  type="button" class="btn btn-info" style="width: 150px;" onclick="userLogin()">登录</button>
									</div>
								</div>
							</div>


						</form>
						<div class="row">
							<div class="col-md-2 col-md-offset-3">
								<p class="text-center text-info" data-toggle="modal" data-target="#RegisterModal" style="cursor: pointer;">新用户注册</p>
							</div>
							<div class="col-md-2 col-md-offset-3">
								<p class="text-center text-info">忘记密码</p>
							</div>
						</div>
					</div>
					<!-- col-md-7 -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- 注册模拟框 -->
		<div class="modal fade" id="RegisterModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<form class="form-horizontal" id="new_user_from">
					<div class="modal-content">
						<div class="modal-header">
							<div class="row">
								<div class="col-md-3">
									<img src="resources/img/logo.png" height="80px;" class="img-rounded" alt="logo">
								</div>
								<div class="col-md-6">
									<h4 class=" text-center text-success" style="margin-top: 30px;">
										夕夕，期待你的加入啊！</h4>
								</div>
								<div class="col-md-2">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="margin-top: 30px;">&times;</button>
								</div>
							</div>

						</div>
						<!-- style="background-color: #FFEAB2;" -->
						<div class="modal-body">
							<div class="row" style="padding-top: 30px;">
								<div class="form-group">
									<label for="userName" class="col-md-2 col-md-offset-2 control-label">用户名</label>
									<div class="col-md-6" id="inputname">
										<input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户名">
									</div>
								</div>
							</div>
							<div id="msg_name" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<label for="firstPassword" class="col-md-2 col-md-offset-2 control-label ">密码</label>
									<div class="col-md-6" id="inputPsd1">
										<input type="password" class="form-control" id="firstPassword" placeholder="输入密码">
									</div>
								</div>
							</div>
							<div id="msg_fpsd" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<label for="password" class="col-md-2 col-md-offset-2 control-label ">确认密码</label>
									<div class="col-md-6" id="inputPsd2">
										<input type="password" class="form-control" id="password" name="password" placeholder="请再次输入密码">
									</div>
								</div>
							</div>
							<div id="msg_psd" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<label for="realName" class="col-md-2 col-md-offset-2 control-label ">真实姓名</label>
									<div class="col-md-6" id="inputRname">
										<input type="text" class="form-control" id="realName" name="realName" placeholder="请输入真实姓名">
									</div>
								</div>
							</div>
							<div id="msg_rname" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<label for="idCard" class="col-md-2 col-md-offset-2 control-label ">身份证号</label>
									<div class="col-md-6" id="inputId">
										<input type="text" class="form-control" id="idCard" name="idCard" placeholder="请输入身份证号">
									</div>
								</div>
							</div>
							<div id="msg_id" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<label for="mobile" class="col-md-2 col-md-offset-2 control-label ">手机号</label>
									<div class="col-md-6" id="inputMobile">
										<input type="text" class="form-control" id="mobile" name="mobile" placeholder="请输入手机号">
									</div>
								</div>
							</div>
							<div id="msg_mobile" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-2 col-md-offset-2 control-label ">性别</label>
									<div class="col-md-6" id="inputSex">
										<select name="sex" class="navbar-left form-control" id="sex" name="sex" style="width: 150px;">
											<option>男</option>
											<option>女</option>
										</select>
									</div>
								</div>
							</div>
							<div id="msg_sex" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-2 col-md-offset-2 control-label ">身份</label>
									<div class="col-md-6" id="inputIden">
										<select name="identity" class="navbar-left form-control" id="identity" name="identity" style="width: 150px;">
											<option>用户</option>
											<option>商家</option>
										</select>
									</div>
								</div>
							</div>
							<div id="msg_iden" class="text-center text-danger"></div>
							<div class="row">
								<div class="form-group">
									<div class=" col-md-6 col-md-offset-4">
										<div class="checkbox" id="inputAgree">
											<label> <input type="checkbox" id="agree" name="agree">本人已阅读并同意<a href="resources/html/agree.html">《用户协议》</a>
											</label>
										</div>
									</div>
								</div>
							</div>
							<div id="msg_agree" class="text-center text-danger"></div>
						</div>
						<div class="modal-footer">
							<div class=" col-md-6 col-md-offset-2">
								<div class="form-group">
									<button type="button" class="btn btn-success" style="width: 200px;" onclick="createUser()">立即注册</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->

		<!-- 尾部 -->
		<div class="container">
			<div class="row" style=" padding: 10px 10px 10px 10px;margin-top: 20px;">
				<div class="col-md-3">
					<div class="glyphicon glyphicon-tasks" style="color: rgb(255, 140, 60); font-size: 30px; margin-left: 40px;"></div>

				</div>
				<div class="col-md-3">
					<div class="glyphicon glyphicon-gift" style="color: rgb(255, 140, 60); font-size: 30px; margin-left: 40px;"></div>
				</div>
				<div class="col-md-3">
					<div class="glyphicon glyphicon-thumbs-up" style="color: rgb(255, 140, 60); font-size: 30px; margin-left: 40px;"></div>
				</div>
				<div class="col-md-3">
					<div class="glyphicon glyphicon-yen" style="color: rgb(255, 140, 60); font-size: 30px; margin-left: 40px;"></div>
				</div>
			</div>
			<div class="row">
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
					<h5 class="">天天低价，畅选无忧</h5>
				</div>
			</div>
			<div class="row navbar-default" style="padding: 5px 5px 5px 5px;margin-top: 20px;">
				<div class="col-md-4">
					<img src="resources/img/logo1.png" class="img-rounded" alt="logo1" height="100px">
					<div class="row">
						<small>Copyright © 2004 - 2019 bcc.com 版权所有</small>
					</div>

				</div>
				<div class="col-md-4">
					<div class="row" style="font-weight: bold;">
						<small>版权信息</small>
					</div>
					<div class="row" style="margin-top: 5px;">
						<small>京公网安备 10000000000号</small>
					</div>
					<div class="row" style="margin-top: 5px;">
						<small>新出发并零 字第大188007号</small>
					</div>
					<div class="row" style="margin-top: 5px;">
						<small>违法和不良信息举报电话：110011001100</small>
					</div>
					<div class="row" style="margin-top: 5px;">
						<small>(京)网械平台备字(2018)第00001号营业执照</small>
					</div>
				</div>
				<div class="col-md-4" style="padding-left: 100px;">
					<small style="font-weight: bold;">并夕夕商城客户端下载</small>
					<div class="row">
						<div class="col-md-4" style="margin-top: 10px;">
							<div class="row">
								<a href="#"><img src="resources/img/android.png" class="img-rounded" alt="android">
								</a>
							</div>
							<div class="row" style="margin-top: 10px;">
								<a href="#">
									<img src="resources/img/ios.png" class="img-rounded" alt="ios">
								</a>
							</div>
						</div>
						<div class="col-md-4">
							<img src="resources/img/erweima.png" class="img-rounded" alt="erweima">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
