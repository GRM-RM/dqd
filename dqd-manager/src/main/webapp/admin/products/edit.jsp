<%@ page language="java" pageEncoding="UTF-8"%>
<HTML>
<HEAD>
	<meta http-equiv="Content-Language" content="zh-cn">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<LINK href="${pageContext.request.contextPath}/admin/css/Style.css"
		  type="text/css" rel="stylesheet">

	<style type="text/css">
		.crop_preview {
			position: absolute;
			left: 550px;
			top: 100px;
			width: 100px;
			height: 100px;
			overflow: hidden;
		}
	</style>


</HEAD>

<body>
<link href="/admin/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="/admin/css/jquery.Jcrop.css" type="text/css"/>
<script type="text/javascript" src="/admin/js/jquery.Jcrop.min.js"></script>
<script type="text/javascript" src="/admin/js/jquery-1.11.3.min.js"></script>

<script src="/admin/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="/admin/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/admin/kindeditor-4.1.10/lang/zh_CN.js"></script>

<form id="userAction_save_do" name="Form1"
	  action="${pageContext.request.contextPath}/products/update.html" method="post"
	  enctype="multipart/form-data">
	&nbsp;
	<table cellSpacing="1" cellPadding="5" width="100%" align="center"
		   bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
		<tr>
			<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
				height="26"><strong><STRONG>编辑商品</STRONG> </strong>
			</td>
		</tr>


		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">商品名称：</td>
			<td class="ta_01" bgColor="#ffffff">
				<input type="hidden" value="${products.id}" name="id" id="id" />
				<input type="text" name="name" class="bg" id="name"
					   value="${products.name}" onblur="check('name')" />
				<span id="checkMsg" style="color: red;"> &nbsp;*&nbsp; </span>
				<span style="color: red"> ${error.getFieldError("name").defaultMessage}</span>
			</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">商品价格：</td>
			<td class="ta_01" bgColor="#ffffff"><input type="text"
													   name="price" value="${products.price}"
													   class="bg" />&nbsp;*&nbsp; </span>
				<span style="color: red">${error.getFieldError("price").defaultMessage}</span>
			</td>
		</tr>
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">商品数量：</td>
			<td class="ta_01" bgColor="#ffffff"><input type="text"
													   name="storage" value="${products.storage}"
													   class="bg" />&nbsp;*&nbsp; </span>
				<span style="color: red">${error.getFieldError("storage").defaultMessage}</span>
			</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">商品类别：</td>
			<td class="ta_01" bgColor="#ffffff"><select name="type_Id"
														id="type_Id">
				<option value="" selected="selected">--选择商品类别--</option>
				<option value="1" ${products.type.id==1?"selected":""}>手机</option>
				<option value="2" ${products.type.id==2?"selected":""}>家具</option>
				<option value="3" ${products.type.id==3?"selected":""}>饰品</option>

			</select>&nbsp;&nbsp; </span>
				<span id="checkMsg2" style="color: red;"> &nbsp;*&nbsp; </span>

			</td>
		</tr>

		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">商品图片：</td>
			<td class="ta_01" bgColor="#ffffff" colSpan="3">

				<a href="/goAddPhotos.html?id=${products.id}"> <input type="button" value="添加图片"/> </a>

				<script src="/js/jquery-1.11.3.min.js" type="text/javascript"></script>
				<script type="text/javascript" charset="utf-8" src="/kindeditor-4.1.10/kindeditor-all-min.js"></script>
				<script type="text/javascript" charset="utf-8" src="/kindeditor-4.1.10/lang/zh_CN.js"></script>

			</td>
		</tr>

		<TR>
			<TD class="ta_01" align="center" bgColor="#f5fafe">商品描述：</TD>
			<TD class="ta_01" bgColor="#ffffff" colSpan="3">
				<textarea style="width:800px;height:300px;visibility:hidden;" name="description"
						  id="editor">${products.description}</textarea><br/>
			</TD>
		</TR>
		<TR>
			<td align="center" colSpan="4" class="sep1"><img
					src="${pageContext.request.contextPath}/admin/images/shim.gif">
			</td>
		</TR>


		<tr>
			<td class="ta_01" style="WIDTH: 100%" align="center"
				bgColor="#f5fafe" colSpan="4">



				<input type="button" id="btn" onclick="check('btn')" class="button_ok" value="确定">

				<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>



				<input type="reset" value="重置" class="button_cancel">

				<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <INPUT
					class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
				<span id="Label1">

					</span>
			</td>
		</tr>
	</table>
</form>

<script type="text/javascript">
    function check(obj) {
        if ($("#name").val() == "") {
            return;
        }
        $.ajax({
            url: "/products/check2.html",
            dataType: 'json',
            data:{"id":$("#id").val(),"name":$("#name").val(),"type_Id":$("#type_Id").val()},
            method: "post",
            success: function (data) {
                $("#checkMsg").html(data.msg)
                $("#checkMsg2").html(data.msg2)
                if (data.status == true && obj == "btn") {
                    editor.sync();//同步富文本编辑器到textarea
                    $("#userAction_save_do").submit();
                }
            }
        })
    }
</script>

<script type="text/javascript">
    var kingEditorParams = {
        filePostName: "file",//指定上传文件参数名称
        uploadJson: 'upload.html',//指定上传文件请求的url。
        dir: "image"//上传类型，分别为image、flash、media、file
    }
    var editor;
    $(function () {
        editor = KindEditor.create($("#editor"), kingEditorParams);
    })
</script>

</body>
</HTML>