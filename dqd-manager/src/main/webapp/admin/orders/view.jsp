<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/admin/css/Style.css"
	type="text/css" rel="stylesheet">
<script language="javascript"
	src="${pageContext.request.contextPath}/js/public.js"></script>
</HEAD>
<body>
	<table cellSpacing="1" cellPadding="5" width="100%" align="center"
		bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
		<tr>
			<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
				height="26"><strong><STRONG>订单详细信息</STRONG> </strong></td>
		</tr>

		<tr>
			<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
				订单编号：</td>
			<td class="ta_01" bgColor="#ffffff">${order.id}</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">所属用户：</td>
			<td class="ta_01" bgColor="#ffffff">${order.user.name }</td>
		</tr>

		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">收件人：</td>
			<td class="ta_01" bgColor="#ffffff">${order.receiver_name }</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">联系电话：</td>
			<td class="ta_01" bgColor="#ffffff">${order.receiver_phone }</td>
		</tr>
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">送货地址：</td>
			<td class="ta_01" bgColor="#ffffff">${order.receiver_address}</td>
			<td align="center" bgColor="#f5fafe" class="ta_01">总价：</td>
			<td class="ta_01" bgColor="#ffffff">${order.money }</td>
		</tr>
		<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">下单时间：</td>
			<td class="ta_01" bgColor="#ffffff" colSpan="3">
					<input name="hire_Date" style="border: 0px"
						   value="<fmt:formatDate value="${order.created_time}" pattern="yyyy-MM-dd"/>"/>
			</td>
		</tr>

		<TR>
			<TD class="ta_01" align="center" bgColor="#f5fafe">商品信息</TD>
			<TD class="ta_01" bgColor="#ffffff" colSpan="3">
				<table cellspacing="0" cellpadding="1" rules="all"
					bordercolor="gray" border="1" id="DataGrid1"
					style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
					<tr
						style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
						<td align="center" width="7%">序号</td>
						<td align="center" width="18%">商品编号</td>
						<td align="center" width="10%">商品名称</td>
						<td align="center" width="10%">商品价格</td>
						<td width="7%" align="center">购买数量</td>
						<td width="7%" align="center">商品类别</td>
						<td width="31%" align="center">商品描述</td>
					</tr>

					<c:forEach items="${pageInfo2.list}" var="products" varStatus="vs">
						<tr
							style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #eeeeee">
							<td align="center" width="7%">${vs.count }</td>

							<td align="center" width="18%">${products.id }</td>
							<td align="center" width="10%">${products.name }</td>
							<td align="center" width="10%">${products.price }</td>
							<td width="7%" align="center">${products.nums }</td>
							<td width="7%" align="center">${products.type_Name }</td>
							<td width="31%" align="center">${products.description}</td>
						</tr>
					</c:forEach>

				</table>

				<div  align="center">

				当前页：${pageInfo2.pageNum}
				共有：${pageInfo2.pages}页
				<a href="/order_items/getInfo.html?pageNo=${pageInfo2.prePage}&order_Id=${order.id}">上一页</a>

				<c:forEach begin="${pageInfo2.navigateFirstPage}" end="${pageInfo2.navigateLastPage}" var="pn" >
					<a href="/order_items/getInfo.html?order_Id=${order.id}&pageNo=${pn}">
						<span style="${pageInfo.pageNum==pn?'font-weight:bold':''}">${pn}</span>
					</a>
				</c:forEach>

				<a href="/order_items/getInfo.html?pageNo=${pageInfo.nextPage}&order_Id=${order.id}">下一页</a>
				</div>
			</TD>
		</TR>

		<TR>
			<td align="center" colSpan="4" class="sep1"><img
				src="${pageContext.request.contextPath}/admin/images/shim.gif">
			</td>
		</TR>
		<TR>
			<td class="ta_01" style="WIDTH: 100%" align="right" bgColor="#f5fafe"
				colSpan="4"><FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
				<INPUT class="button_ok" type="button" onclick="history.go(-1)"
				value="返回" /> <span id="Label1"></span></td>
		</TR>
	</table>
</body>
</HTML>