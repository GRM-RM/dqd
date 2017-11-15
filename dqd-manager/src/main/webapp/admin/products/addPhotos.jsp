<%--
  Created by IntelliJ IDEA.
  User: wangshuai
  Date: 2017/10/28
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form id="form1" action="/upload.html" method="post" enctype="multipart/form-data">
    <input type="hidden" value="${pro_Id}" name="id" />
    <p>
        <input type="file" name="file" />
    </p>
    <p id="btnadd">
        <input type="button" value="添加多个" onclick="addfile()" />
    </p>
    <p>
        <input type="submit" value="添加图片" />
    </p>
</form>
<c:forEach items="${names}" var="name">
    <img src="${name}" width="100px" height="80px" />
</c:forEach>

<input type="button" onclick="history.go(-2)" value="返回" />


<script type="text/javascript">

    function addfile() {

        var newp = document.createElement("p");
        var newfile = document.createElement("input");
        newfile.type="file";
        newfile.name="file";

        var newa = document.createElement("a");
        newa.innerHTML="删除";
        newa.href="javascript:void(0)";
        newa.setAttribute("onclick","del(this)");

        newp.appendChild(newfile);
        newp.appendChild(newa);

        var btnadd = document.getElementById("btnadd");
        var form1 = document.getElementById("form1");
        form1.insertBefore(newp,btnadd);
    }
    function del(obj) {
        var form1 = document.getElementById("form1");
        form1.removeChild(obj.parentNode);
    }

</script>

</body>
</html>
