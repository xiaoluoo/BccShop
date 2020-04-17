$(document).ready(function(){
	
    var goodsId = $("#gi").html();
    var goodsName = $("#gn").html();
    var goodsPhoto = $("#po").val();
    var originalPrice = $("#op").html();
    var goodsPrice = $("#gp").html();
 
    var goodsDescribe = $("#gd").html();
    var goodsCategory1 = $("#cat1").html();
    var goodsCategory2 = $("#cat2").html();
    
    $("#goodsId").val(goodsId);
    $("#goodsName").val(goodsName);
    $("#goodsPhoto").val(goodsPhoto);
    $("#originalPrice").val(originalPrice);
    $("#goodsPrice").val(goodsPrice);
    $("#goodsDescribe").val(goodsDescribe);
    $("#goodsCategory1").val(goodsCategory1);
    $("#goodsCategory2").val(goodsCategory2);
}); 

// 创建商品
function updateGoods() {
		var goodsId =    $("#goodsId").val();
		// 获取上传图片包
		var formdata = new FormData($("#creatGoods_from")[0])// FormData对象，来发送二进制文件。
		formdata.append("goodsId",goodsId);
	$.ajax({
			url : 'update',// 上传接口
			type : 'POST',
			data : formdata,
			async:false,
	        cache:false,
	        contentType:false,
	        processData:false,
			success : function(res) {
				if(res=="OK"){
					alert("修改成功");
					parent.location.reload();
				}
				if(res=="NO"){
					alert("修改失败");
					parent.location.reload();
				}
				console.log(res)
			},
			error : function(res) {
				console.log("发生错误")
			}
		});
}
