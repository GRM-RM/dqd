<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript" charset="UTF-8" src="/js/common2.js" ></script>
<div style="padding:10px 10px 10px 10px">
	<form id="itemeEditForm" class="itemForm" method="post">
		<input type="hidden" name="id"/>
		<input type="hidden" name="clubId"/>

	    <table cellpadding="5">
			<tr>
				<td>球员头像:</td>
				<td>
					<a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">上传图片</a>
					<input type="hidden" name="image"/>
					<input type="" name="avatar" value="avatar"/>
				</td>
			</tr>
	        <tr>
	            <td>所属球队:</td>
	            <td>
	            	<a href="javascript:void(0)" class="easyui-linkbutton selectItemCat2">选择球队</a>
	            	<input type="hidden" name="cid" style="width: 280px;"></input>
	            </td>
	        </tr>
	        <tr>
	            <td>球员姓名:</td>
	            <td><input class="easyui-textbox" type="text" name="name" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>进球数:</td>
	            <td><input type="text" name="goals" data-options="multiline:true,validType:'length[0,150]'" ></input></td>
	        </tr>
			<tr>
				<td>助攻:</td>
				<td><input type="text" name="assists" data-options="multiline:true,validType:'length[0,150]'" ></input></td>
			</tr>

	    </table>
	    <input type="hidden" name="itemParams"/>
	    <input type="hidden" name="itemParamId"/>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	</div>
</div>
<script type="text/javascript">
	var itemEditEditor ;
	$(function(){
		//实例化编辑器
		itemEditEditor = TAOTAO.createEditor("#itemeEditForm [name=desc]");
	});
	
	function submitForm(){
		if(!$('#itemeEditForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		$("#itemeEditForm [name=price]").val(eval($("#itemeEditForm [name=priceView]").val()) * 1000);

		
		var paramJson = [];
		$("#itemeEditForm .params li").each(function(i,e){
			var trs = $(e).find("tr");
			var group = trs.eq(0).text();
			var ps = [];
			for(var i = 1;i<trs.length;i++){
				var tr = trs.eq(i);
				ps.push({
					"k" : $.trim(tr.find("td").eq(0).find("span").text()),
					"v" : $.trim(tr.find("input").val())
				});
			}
			paramJson.push({
				"group" : group,
				"params": ps
			});
		});
		paramJson = JSON.stringify(paramJson);
		
		$("#itemeEditForm [name=itemParams]").val(paramJson);
		
		$.post("/player/playerUpdate",$("#itemeEditForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示','修改球员信息成功!','info',function(){
					$("#itemEditWindow").window('close');
					$("#itemList").datagrid("reload");
				});
			}
		});
	}
</script>
