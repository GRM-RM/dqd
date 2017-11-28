<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    姓名:${USER_SESSION.username}<br>
    头像:<img src="${USER_SESSION.avatar}" alt="头像" style="width: 200px;height: 100px; vertical-align:top;">
</body>
</html>
