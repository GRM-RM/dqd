<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/admin/js/jquery-1.11.3.min.js"></script>
<link href="${pageContext.request.contextPath}/admin/css/Style.css"
	rel="stylesheet" type="text/css" />
<script language="javascript"
	src="${pageContext.request.contextPath}/admin/js/public.js"></script>
<script type="text/javascript">
	function addProduct() {
		window.location.href = "${pageContext.request.contextPath}/admin/products/add.jsp";
	}
 
	
</script>
</HEAD>
<body>
	<br>
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/products/list.html"
		method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>查
							询 条 件</strong>
					</td>
				</tr>
				<tr>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									商品编号</td>
								<td class="ta_01" bgColor="#ffffff"><input type="text"
									name="id" size="15" value="" id="Form1_userName1" class="bg" />
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									类别：</td>
								<td class="ta_01" bgColor="#ffffff"><select name="type_Id"
									id="category">
										<option value="" selected="selected">--选择商品类别--</option>
									<option value="1" ${products.type.id==1?"selected":""}>手机</option>
									<option value="2" ${products.type.id==2?"selected":""}>玩音乐</option>
									<option value="3" ${products.type.id==3?"selected":""}>电脑</option>
									<option value="4" ${products.type.id==4?"selected":""}>家用电器</option>
									<option value="5" ${products.type.id==5?"selected":""}>厨房用具</option>

								</select></td>
							</tr>

							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									商品名称：</td>
								<td class="ta_01" bgColor="#ffffff"><input type="text"
									name="name" size="15" value="" id="Form1_userName" class="bg" />
								</td>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									价格区间(元)：</td>
								<td class="ta_01" bgColor="#ffffff"><input type="text"
									name="minPrice" size="10" value="" />- <input type="text"
									name="maxPrice" size="10" value="" /></td>
							</tr>

							<tr>
								<td width="100" height="22" align="center" bgColor="#f5fafe"
									class="ta_01"></td>
								<td class="ta_01" bgColor="#ffffff"><font face="宋体"
									color="red"> &nbsp;</font>
								</td>
								<td align="right" bgColor="#ffffff" class="ta_01"><br>
									<br></td>
								<td align="right" bgColor="#ffffff" class="ta_01">
									<button type="submit" id="search" name="search"
										value="&#26597;&#35810;" class="button_view">
										&#26597;&#35810;</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="reset" name="reset" value="&#37325;&#32622;"
									class="button_view" />
								</td>
							</tr>
						</table>
					</td>

				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>商品列表</strong>
					</TD>
				</tr>
				<tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="&#28155;&#21152;"
							class="button_add" onclick="addProduct()">&#28155;&#21152;
						</button>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr
								style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
								<td align="center" width="24%">商品编号</td>
								<td align="center" width="18%">商品名称</td>
								<td align="center" width="9%">商品价格</td>
								<td align="center" width="9%">商品数量</td>
								<td width="8%" align="center">商品类别</td>
								<td width="8%" align="center">编辑</td>

								<td width="8%" align="center">删除</td>
							</tr>

								<c:choose>
									<c:when test="${pageInfo.list==null }">
										<tr>
											<td>
												没有商品
											</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${pageInfo.list }" var="product" varStatus="vs">
											<tr onmouseover="this.style.backgroundColor = 'white'"
													onmouseout="this.style.backgroundColor = '#F5FAFE';">
													<td style="CURSOR: hand; HEIGHT: 22px" align="center"
														width="23">${product.id }</td>
													<td style="CURSOR: hand; HEIGHT: 22px" align="center"
														width="18%">${product.name }</td>
													<td style="CURSOR: hand; HEIGHT: 22px" align="center"
														width="8%">${product.price }</td>
													<td style="CURSOR: hand; HEIGHT: 22px" align="center"
														width="8%">${product.storage }</td>
													<td style="CURSOR: hand; HEIGHT: 22px" align="center">
														${product.type.name }</td>
													<td align="center" style="HEIGHT: 22px" width="7%"><a
														href="${pageContext.request.contextPath }/products/go_update.html?id=${product.id}">
															<img
															src="${pageContext.request.contextPath}/admin/images/i_edit.gif"
															border="0" style="CURSOR: hand"> </a>
													</td>
				
													<td align="center" style="HEIGHT: 22px" width="7%" ><a
														href="javascript:void(0)" >
															<img
															src="${pageContext.request.contextPath}/admin/images/i_del.gif"
															width="16" height="16" border="0" style="CURSOR: hand" onclick="del(${product.id})">
													</a>
													</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>						
						</table>

						当前页：${pageInfo.pageNum}
						共有：${pageInfo.pages}页
						<a href="/products/list.html?id=${id}&name=${name}&minPrice=${minPrice}&
							maxPrice=${maxPrice}&type_Id=${type_Id}&pageNo=${pageInfo.prePage}">上一页</a>

						<c:forEach begin="${pageInfo.navigateFirstPage}" end="${pageInfo.navigateLastPage}" var="pn" >
							<a href="/products/list.html?id=${id}&name=${name}&minPrice=${minPrice}&
							maxPrice=${maxPrice}&type_Id=${type_Id}&pageNo=${pn}">
								<span style="${pageInfo.pageNum==pn?'font-weight:bold':''}">${pn}</span>
							</a>
						</c:forEach>

						<a href="/products/list.html?id=${id}&name=${name}&minPrice=${minPrice}&
							maxPrice=${maxPrice}&type_Id=${type_Id}&pageNo=${pageInfo.nextPage}">下一页</a>

								<script type="text/javascript">
									function del(id){
  	
									  		if(confirm("确定删除吗？")){
									  			$.ajax({
													type:"get",
													url:"/products/del.html?id="+id,
													async:true,
													success:function(result){
													alert(result.msg);
													window.location.href='${pageContext.request.contextPath}/products/list.html';
													}
												}); 		
									  		}
									  }
	
								</script>
					</td>
				</tr>
			</TBODY>
		</table>
	</form>
</body>
</HTML>

