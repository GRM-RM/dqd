<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="/js/common.js"></script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="easyui-datagrid" id="clubList" title="比赛日程"
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'/match/matchList',method:'get',pageSize:10,toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
            <th data-options="field:'homeName',width:100,height:100,align:'center'">主场球队</th>
        	<th data-options="field:'visitedName',width:160,align:'center'">客场球队</th>
            <th data-options="field:'startTime',width:130,align:'center',formatter:TAOTAO.formatDateTime">开始时间</th>

            <th data-options="field:'homeScore',width:60,align:'center'">主队进球</th>
            <th data-options="field:'visitedScore',width:60,align:'center'">客队进球</th>
            <th data-options="field:'country',width:60,align:'center'">所属联赛</th>
            <th data-options="field:'round',width:60,align:'center'">轮次</th>


        </tr>
    </thead>
</table>
<div id="itemEditWindow" class="easyui-window" title="编辑比赛结果" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/match/matchEdit'" style="width:80%;height:80%;padding:10px;">
</div>
<script>

    function getSelectionsIds(){
        var itemList = $("#clubList");
        var sels = itemList.datagrid("getSelections");
        var ids = [];
        for(var i in sels){
            ids.push(sels[i].id);
        }
        ids = ids.join(",");
        return ids;
    }

    var toolbar = [{
        text:'新增',
        iconCls:'icon-add',
        handler:function(){
            $(".tree-title:contains('新增比赛')").parent().click();
        }
    },{
        text:'编辑',
        iconCls:'icon-edit',
        handler:function(){
            var ids = getSelectionsIds();

            if(ids.length == 0){
                $.messager.alert('提示','必须选择一场比赛才能编辑!');
                return ;
            }
            if(ids.indexOf(',') > 0){
                $.messager.alert('提示','只能选择一场比赛!');
                return ;
            }

            $("#itemEditWindow").window({
                onLoad :function(){
                    //回显数据
                    var data = $("#clubList").datagrid("getSelections")[0];
                    data.priceView = TAOTAO.formatPrice(data.price);

                    $("#itemeEditForm").form("load",data);

                    /*// 加载商品描述
                    $.getJSON('/rest/item/query/item/desc/'+data.id,function(_data){
                        if(_data.status == 200){
                            //UM.getEditor('itemeEditDescEditor').setContent(_data.data.itemDesc, false);
                            itemEditEditor.html(_data.data.itemDesc);
                        }
                    });*/

                    //加载商品规格
//        			$.getJSON('/rest/item/param/item/query/'+data.id,function(_data){
//        				if(_data && _data.status == 200 && _data.data && _data.data.paramData){
//        					$("#itemeEditForm .params").show();
//        					$("#itemeEditForm [name=itemParams]").val(_data.data.paramData);
//        					$("#itemeEditForm [name=itemParamId]").val(_data.data.id);
//
//        					//回显商品规格
//        					 var paramData = JSON.parse(_data.data.paramData);
//
//        					 var html = "<ul>";
//        					 for(var i in paramData){
//        						 var pd = paramData[i];
//        						 html+="<li><table>";
//        						 html+="<tr><td colspan=\"2\" class=\"group\">"+pd.group+"</td></tr>";
//
//        						 for(var j in pd.params){
//        							 var ps = pd.params[j];
//        							 html+="<tr><td class=\"param\"><span>"+ps.k+"</span>: </td><td><input autocomplete=\"off\" type=\"text\" value='"+ps.v+"'/></td></tr>";
//        						 }
//
//        						 html+="</li></table>";
//        					 }
//        					 html+= "</ul>";
//        					 $("#itemeEditForm .params td").eq(1).html(html);
//        				}
//        			});

                    TAOTAO.init({
                        "pics" : data.image,
                        "cid" : data.cid,
//        				fun:function(node){
//        					TAOTAO.changeItemParam(node, "itemeEditForm");
//        				}
                    });
                }
            }).window("open");
        }
    },{
        text:'删除比赛',
        iconCls:'icon-cancel',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','未选中比赛!');
                return ;
            }
            $.messager.confirm('确认','确定删除ID为 '+ids+' 的比赛吗？',function(r){
                if (r){
                    var params = {"ids":ids};
                    $.post("/match/matchDel",params, function(data){
                        if(data.status == 200){
                            $.messager.alert('提示','比赛删除成功!',undefined,function(){
                                $("#clubList").datagrid("reload");
                            });
                        }
                    });
                }
            });
        }
    }];
</script>