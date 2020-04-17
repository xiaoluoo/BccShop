$(function() {
	goodsTips();
});

// 清除输入框数据
function clearGoods() {
	$("#goodsName").val("");
	$("#goodsPhoto").val("");
	$("#originalPrice").val("");
	$("#goodsPrice").val("");
	$("#goodsDescribe").val("");
	$("#goodsCategory1").val("");
	$("#goodsCategory2").val("");
}

//实时检查表单
function goodsTips() {
	// 商品名称
	$("#goodsName").blur(function() {
		if ($("#goodsName").val() == null || $("goodsName").val() == "") {
			$("#inputname").addClass("has-error");
			$("#msg_name").html("商品名称不能为空");

		} else if ($("#goodsName").val().length < 2 ||
			$("#goodsName").val().length > 16) {
			$("#inputname").addClass("has-error");
			$("#msg_name").html("商品名称长度为2-16位字符串");

		} else {
			$("#msg_name").html("");
			$("#inputname").removeClass("has-error");
			$("#inputname").addClass("has-success");

		}
	});

	// 商品图片
	$("#goodsPhoto").blur(function() {
		if ($("#goodsPhoto").val() == null || $("#goodsPhoto").val() == "") {
			$("#inputpho").addClass("has-error");
			$("#msg_pho").html("请选择商品图片");

		} else {
			$("#msg_pho").html("");
			$("#inputpho").removeClass("has-error");
			$("#inputpho").addClass("has-success");

		}
	});
	// 商品原价
	$("#originalPrice").blur(function() {
		if ($("#originalPrice").val() == null ||
			$("#originalPrice").val() == "" ||
			$("#originalPrice").val() == 0) {
			$("#inputorp").addClass("has-error");
			$("#msg_orp").html("商品原价不能为空");

		} else {
			$("#msg_orp").html("");
			$("#inputorp").removeClass("has-error");
			$("#inputorp").addClass("has-success");

		}
	});

	$("#goodsPrice").blur(function() {
		if ($("#goodsPrice").val() == null || $("#goodsPrice").val() == "" ||
			$("#goodsPrice").val() == 0) {
			$("#inputPrice").addClass("has-error");
			$("#msg_price").html("商品原价不能为空");

		} else {

			$("#msg_price").html("");
			$("#inputPrice").removeClass("has-error");
			$("#inputPrice").addClass("has-success");

		}
	});

	$("#goodsDescribe").blur(function() {
		if ($("#goodsDescribe").val() == null ||
			$("#goodsDescribe").val() == "") {
			$("#inputdes").addClass("has-error");
			$("#msg_des").html("商品描述不能为空");

		} else {
			$("#msg_des").html("");
			$("#inputdes").removeClass("has-error");
			$("#inputdes").addClass("has-success");

		}
	});

	$("#goodsCategory1").blur(function() {
		if ($("#goodsCategory1").val() == null ||
			$("#goodsCategory1").val() == "") {
			$("#inputcat1").addClass("has-error");
			$("#msg_cat1").html("商品类别不能为空");


		} else {
			$("#msg_cat1").html("");
			$("#inputcat1").removeClass("has-error");
			$("#inputcat1").addClass("has-success");

		}
	});

	// 营销类别
	$("#goodsCategory2").blur(function() {
		if ($("#goodsCategory2").val() == null ||
			$("#goodsCategory2").val() == "") {

			$("#inputdes2").addClass("has-error");
			$("#msg_cat2").html("营销类别不能为空");


		} else {
			$("#msg_cat2").html("");
			$("#inputdes2").removeClass("has-error");
			$("#inputdes2").addClass("has-success");

		}
	});
}

// 检查表单
function checkGoods() {
	var check;
	// 商品名称
	if ($("#goodsName").val() == null || $("goodsName").val() == "") {
		$("#inputname").addClass("has-error");
		$("#msg_name").html("商品名称不能为空");
		check = false;
	} else if ($("#goodsName").val().length < 2 ||
		$("#goodsName").val().length > 16) {
		$("#inputname").addClass("has-error");
		$("#msg_name").html("商品名称长度为2-16位字符串");
		check = false;
	} else {
		$("#msg_name").html("");
		$("#inputname").removeClass("has-error");
		$("#inputname").addClass("has-success");
		check = true;
	}


	// 商品图片
	if ($("#goodsPhoto").val() == null || $("#goodsPhoto").val() == "") {
		$("#inputpho").addClass("has-error");
		$("#msg_pho").html("请选择商品图片");
		check = false;
	} else {
		$("#msg_pho").html("");
		$("#inputpho").removeClass("has-error");
		$("#inputpho").addClass("has-success");
		check = true;
	}

	// 商品原价
	if ($("#originalPrice").val() == null ||
		$("#originalPrice").val() == "" ||
		$("#originalPrice").val() == 0) {
		$("#inputorp").addClass("has-error");
		$("#msg_orp").html("商品原价不能为空");
		check = false;
	} else {
		$("#msg_orp").html("");
		$("#inputorp").removeClass("has-error");
		$("#inputorp").addClass("has-success");
		check = true;
	}

	if ($("#goodsPrice").val() == null || $("#goodsPrice").val() == "" ||
		$("#goodsPrice").val() == 0) {
		$("#inputPrice").addClass("has-error");
		$("#msg_price").html("商品原价不能为空");
		check = false;
	} else {

		$("#msg_price").html("");
		$("#inputPrice").removeClass("has-error");
		$("#inputPrice").addClass("has-success");
		check = true;
	}

	if ($("#goodsDescribe").val() == null ||
		$("#goodsDescribe").val() == "") {
		$("#inputdes").addClass("has-error");
		$("#msg_des").html("商品描述不能为空");
		check = false;
	} else {
		$("#msg_des").html("");
		$("#inputdes").removeClass("has-error");
		$("#inputdes").addClass("has-success");
		check = true;
	}

	if ($("#goodsCategory1").val() == null ||
		$("#goodsCategory1").val() == "") {
		$("#inputcat1").addClass("has-error");
		$("#msg_cat1").html("商品类别不能为空");
		check = false;

	} else {
		$("#msg_cat1").html("");
		$("#inputcat1").removeClass("has-error");
		$("#inputcat1").addClass("has-success");
		check = true;
	}
	// 营销类别
	if ($("#goodsCategory2").val() == null ||
		$("#goodsCategory2").val() == "") {

		$("#inputdes2").addClass("has-error");
		$("#msg_cat2").html("营销类别不能为空");
		check = false;

	} else {
		$("#msg_cat2").html("");
		$("#inputdes2").removeClass("has-error");
		$("#inputdes2").addClass("has-success");
		check = true;
	}

	return check;
}

// 创建商品
function createGoods() {
	if (checkGoods()) {

		// 获取上传图片包
		var formdata = new FormData($("#creatGoods_from")[0])
		formdata.append("cat1", $("#goodsCategory1").val());
		formdata.append("cat2", $("#goodsCategory2").val());
		$.ajax({
			url: 'goodsInsert', // 上传接口
			type: 'POST',
			data: formdata,
			async: false,
			cache: false,
			contentType: false,
			processData: false,
			success: function(res) {
				if (res == "OK") {
					alert("插入成功");
					clearGoods();
					window.parent.location.reload();
				}
				if (res == "NO") {
					alert("插入失败");
					clearGoods();
					window.parent.location.reload();
				}
				console.log(res)
			},
			error: function(res) {
				console.log("发生错误")
			}
		})


	};


}
