<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" isELIgnored="false" %>
<html>
<body>
<h2>主页</h2>
${USER_SESSION.username}
<h4><a href="/register.jsp">注册</a></h4>
<h4><a href="/login.jsp">登录</a></h4>
<h4><a href="/loginout">退出</a></h4>
<h4><a href="user_modify.jsp">修改信息</a></h4>
</body>
</html>
