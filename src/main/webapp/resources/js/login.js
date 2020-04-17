/*表单验证*/
$(function() {
	clearLmsg();
	$("msg") == "";
	loginTips();
	registerTips();
});

//登录实时提示
function loginTips() {
	//用户名
	$("#login_userName").blur(function() {
		var userName = $("#login_userName").val();
		if (userName == null || userName == "") {
			$("#login_userName").focus();
			$("#login_inputName").addClass("has-error");
			$("#msg-name").html("用户名不能为空");
		} else if (userName.length < 3 | userName.length > 16) {
			$("#login_userName").focus();
			$("#login_inputName").addClass("has-error");
			$("#msg-name").html("用户名长度为3-16位字符串");
		} else {
			// 验证成功显示效果
			$("#msg-name").html("");
			$("#login_inputName").removeClass("has-error");
			$("#login_inputName").addClass("has-success");
		}


	});

	// 密码
	$("#login_password").blur(function() {
		var password = $("#login_password").val();
		if (password == null || password == "") {
			$("#login_password").focus();
			$("#login_inputPsd").addClass("has-error");
			$("#msg-psd").html("密码不能为空");
		} else if (password.length < 3 | password.length > 16) {
			$("#login_password").focus();
			$("#login_inputPsd").addClass("has-error");
			$("#msg-psd").html("密码长度为3-16位字符串");
		} else {
			$("#msg-psd").html("");
			$("#login_inputPsd").removeClass("has-error");
			$("#login_inputPsd").addClass("has-success");

		}
	});
}
//注册表单实时提示
function registerTips() {
	//用户名
	$("#userName").blur(function() {
		if ($("#userName").val() == null || $("#userName").val() == "") {
			$("#inputname").addClass("has-error");
			$("#msg_name").html("用户名不能为空");
		} else if ($("#userName").val().length < 3 || $("#userName").val().length > 16) {
			$("#inputname").addClass("has-error");
			$("#msg_name").html("用户名长度为3-16位字符串");
		} else {
			$("#msg_name").html("");
			$("#inputname").removeClass("has-error");
			$("#inputname").addClass("has-success");
		}
	});

	//密码
	$("#firstPassword").blur(function() {
		if ($("#firstPassword").val() == null ||
			$("#firstPassword").val() == "") {
			$("#inputPsd1").addClass("has-error");
			$("#msg_fpsd").html("密码不能为空");
		} else if ($("#firstPassword").val().length < 3 |
			$("#firstPassword").val().length > 16) {
			$("#inputPsd1").addClass("has-error");
			$("#msg_fpsd").html("密码长度为3-16位字符串");
		} else {
			$("#msg_fpsd").html("");
			$("#inputPsd1").removeClass("has-error");
			$("#inputPsd1").addClass("has-success");
		}
	});

	//确认密码
	$("#password").blur(function() {
		if ($("#password").val() == null || $("#password").val() == "") {
			$("#inputPsd2").addClass("has-error");
			$("#msg_psd").html("确认密码不能为空");
		} else if ($("#password").val().length < 3 | $("#password").val().length > 16) {
			$("#inputPsd2").addClass("has-error");
			$("#msg_psd").html("密码长度为3-16位字符串");
		} else if ($("#firstPassword").val() != $("#password").val()) {
			$("#password").focus();
			$("#inputPsd2").addClass("has-error");
			$("#msg_psd").html("两次密码不一致");
		} else {
			$("#msg_psd").html("");
			$("#inputPsd2").removeClass("has-error");
			$("#inputPsd2").addClass("has-success");
		}
	});

	//真实姓名
	$("#realName").blur(function() {
		if ($("#realName").val() == null || $("#realName").val() == "") {
			$("#inputRname").addClass("has-error");
			$("#msg_rname").html("真实姓名不能为空");

		} else if ($("#realName").val().length < 2 | $("#realName").val().length > 10) {
			$("#inputRname").addClass("has-error");
			$("#msg_rname").html("真实姓名为2-10位字符串");
		} else {
			$("#msg_rname").html("");
			$("#inputRname").removeClass("has-error");
			$("#inputRname").addClass("has-success");
		}
	});

	//身份证号
	$("#idCard").blur(function() {
		if ($("#idCard").val() == null || $("#idCard").val() == "") {

			$("#inputId").addClass("has-error");
			$("#msg_id").html("身份证不能为空");

		} else if ($("#idCard").val().length != 18) {
			$("#inputId").addClass("has-error");
			$("#msg_id").html("身份证为18位字符串");
		} else {
			$("#msg_id").html("");
			$("#inputId").removeClass("has-error");
			$("#inputId").addClass("has-success");
		}
	});

	//手机号
	$("#mobile").blur(function() {
		if ($("#mobile").val() == null || $("#mobile").val() == "") {
			$("#inputMobile").addClass("has-error");
			$("#msg_mobile").html("手机号不能为空");

		} else if ($("#mobile").val().length != 11) {
			$("#inputMobile").addClass("has-error");
			$("#msg_mobile").html("手机号码为11位字符串");
		} else {
			$("#msg_mobile").html("");
			$("#inputMobile").removeClass("has-error");
			$("#inputMobile").addClass("has-success");
		}
	});

}
//检查登录表单
function checkLogin() {
	var userName = $("#login_userName").val();
	var password = $("#login_password").val();
	// 用户名验证
	function checkName() {
		if (userName == null || userName == "") {
			$("#login_userName").focus();
			$("#login_inputName").addClass("has-error");
			$("#msg-name").html("用户名不能为空");
			return  false;
		} else if (userName.length < 3 | userName.length > 16) {
			$("#login_userName").focus();
			$("#login_inputName").addClass("has-error");
			$("#msg-name").html("用户名长度为3-16位字符串");
			return  false;
		} else {
			// 验证成功显示效果
			$("#msg-name").html("");
			$("#login_inputName").removeClass("has-error");
			$("#login_inputName").addClass("has-success");
			return true;
		}

	}
	function checkPsd() {
		if (password == null || password == "") {
			$("#login_password").focus();
			$("#login_inputPsd").addClass("has-error");
			$("#msg-psd").html("密码不能为空");
			return false;
		} else if (password.length < 3 | password.length > 16) {
			$("#login_password").focus();
			$("#login_inputPsd").addClass("has-error");
			$("#msg-psd").html("密码长度为3-16位字符串");
			return false;
		} else {
			$("#msg-psd").html("");
			$("#login_inputPsd").removeClass("has-error");
			$("#login_inputPsd").addClass("has-success");
			return true;
		}
	}
	// 用户协议验证
	function checkAgr() {
		if ($("#login_agree").prop("checked") == false) {
			$("#login_agree").focus();
			$("#login_inputAgree").addClass("has-error");
			$("#msg-agree").html("请勾选用户协议");
			return false;
		} else {
			$("#msg-agree").html("");
			$("#login_inputAgree").removeClass("has-error");
			$("#login_inputAgree").addClass("has-success");
			return true
		}
	}
	return checkName()&&checkPsd()&&checkAgr();
}
//用户登录
function userLogin() {
if (checkLogin()) {
	$.ajax({
		type:"post",
		url:"user/login",
		async: false,
		data:$("#user_login").serialize(),
		success:function (ajaxResult) {
			if(ajaxResult.success == 'Ok'){
				alert(ajaxResult.message);
				if (ajaxResult.object =='用户'){
					window.location.href="main";
				}else{
					window.location.href="backstage";
				}
			}else{
				alert(ajaxResult.message);
			}
		},
		error:function (result) {
			alert("未知错误");
		}
	});
	}
	clearLoginUser();
}
// 清除提示栏数据
function clearLmsg() {
	$("#msg-name").html("");
	$("#msg-psd").html("");
	$("#msg-agree").html("");
}

//清除登录界面数据
function clearLoginUser() {
	$("#login_userName").val("");
	$("#login_password").val("");
	$("#login_identity").val("用户");
	$("#login_agree").attr("checked", false);
}
// 清除输入框数据
function clearUser() {
	$("#userName").val("");
	$("#firstPassword").val("");
	$("#password").val("");
	$("#realName").val("");
	$("#idCard").val("");
	$("#mobile").val("");
	$("#sex").val("男");
	$("#identity").val("用户");
	$("#agree").attr("checked", false);
}

// 检查注册表单
function checkUser() {
	// 用户名
	function checkName(){
		if ($("#userName").val() == null || $("#userName").val() == "") {
			$("#inputname").addClass("has-error");
			$("#msg_name").html("用户名不能为空");
			return  false;
		} else if ($("#userName").val().length < 3 || $("#userName").val().length > 16) {
			$("#inputname").addClass("has-error");
			$("#msg_name").html("用户名长度为3-16位字符串");
			return  false;
		} else {
			$("#msg_name").html("");
			$("#inputname").removeClass("has-error");
			$("#inputname").addClass("has-success");
			return true;
		}
	}
	// 密码
	function checkPsd() {
		if ($("#firstPassword").val() == null ||
			$("#firstPassword").val() == "") {
			$("#inputPsd1").addClass("has-error");
			$("#msg_fpsd").html("密码不能为空");
			return   false;
		} else if ($("#firstPassword").val().length < 3 |
			$("#firstPassword").val().length > 16) {
			$("#inputPsd1").addClass("has-error");
			$("#msg_fpsd").html("密码长度为3-16位字符串");
			return   false;
		} else {

			$("#msg_fpsd").html("");
			$("#inputPsd1").removeClass("has-error");
			$("#inputPsd1").addClass("has-success");
			return true;
		}

	}

	// 确认密码
	function checkPsd1() {
		if ($("#password").val() == null || $("#password").val() == "") {
			$("#inputPsd2").addClass("has-error");
			$("#msg_psd").html("确认密码不能为空");
			return false;
		} else if ($("#password").val().length < 3 | $("#password").val().length > 16) {
			$("#inputPsd2").addClass("has-error");
			$("#msg_psd").html("密码长度为3-16位字符串");
			return false;
		} else if ($("#firstPassword").val() != $("#password").val()) {
			$("#password").focus();
			$("#inputPsd2").addClass("has-error");
			$("#msg_psd").html("两次密码不一致");
			return false;

		} else {

			$("#msg_psd").html("");
			$("#inputPsd2").removeClass("has-error");
			$("#inputPsd2").addClass("has-success");
			return true;
		}
	}

	// 真实姓名
	function checkrName() {
		if ($("#realName").val() == null || $("#realName").val() == "") {
			$("#inputRname").addClass("has-error");
			$("#msg_rname").html("真实姓名不能为空");
			return false;

		} else if ($("#realName").val().length < 2 | $("#realName").val().length > 10) {
			$("#inputRname").addClass("has-error");
			$("#msg_rname").html("真实姓名为2-10位字符串");
			return false;
		} else {

			$("#msg_rname").html("");
			$("#inputRname").removeClass("has-error");
			$("#inputRname").addClass("has-success");
			return true;
		}
	}

	// 身份证
	function checkId() {
		if ($("#idCard").val() == null || $("#idCard").val() == "") {

			$("#inputId").addClass("has-error");
			$("#msg_id").html("身份证不能为空");
			return false;

		} else if ($("#idCard").val().length != 18) {
			$("#inputId").addClass("has-error");
			$("#msg_id").html("身份证为18位字符串");
			return false;
		} else {
			$("#msg_id").html("");
			$("#inputId").removeClass("has-error");
			$("#inputId").addClass("has-success");
			return true;
		}
	}



	// 手机号码
	function checkMob() {
		if ($("#mobile").val() == null || $("#mobile").val() == "") {
			$("#inputMobile").addClass("has-error");
			$("#msg_mobile").html("手机号不能为空");
			return false;

		} else if ($("#mobile").val().length != 11) {
			$("#inputMobile").addClass("has-error");
			$("#msg_mobile").html("手机号码为11位字符串");
			return false;
		} else {
			$("#msg_mobile").html("");
			$("#inputMobile").removeClass("has-error");
			$("#inputMobile").addClass("has-success");
			return true;
		}

	}


	// 用户协议
	function checkagr() {
		if ($("#agree").prop("checked") == false) {
			$("#inputAgree").addClass("has-error");
			$("#msg_agree").html("请勾选用户协议");
			return false;
		} else {
			$("#msg_agree").html("");
			$("#inputAgree").removeClass("has-error");
			$("#inputAgree").addClass("has-success");
			return true;
		}
	}

	return checkName()&&checkPsd()&&checkPsd1()&&checkrName()&&checkId()&&checkMob()&&checkagr();

}

// 创建用户
function createUser() {
	if (checkUser()) {
		$.post("user/register", $("#new_user_from").serialize(),
			function(data) {
				if (data == "OK") {
					alert("用户注册成功");
					$("#RegisterModal").modal('hide');
				} else if (data == "Repeat") {
					alert("用户名已存在");
					window.location.reload();
				} else {
					alert("用户注册失败");
					window.location.reload();
				}
			});
		clearUser();
	};

}
