<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>信息修改</title>
    <script type="application/javascript" src="/js/jquery-1.10.1.min.js"></script>
</head>
<body>
    <form action="/update" method="post" id="f1">
                <input type="hidden" name="id" value="${USER_SESSION.id}" readonly><br><br>
         用户名:<input type="text" name="username" value="${USER_SESSION.username}" readonly><br><br>
         联系电话:<input type="text" name="userTel" value="${USER_SESSION.userTel}" readonly><br><br>
         生日:<input type="date" name="birthday" value="${USER_SESSION.birthday}"><br><br>
        个性签名:<textarea name="description" rows="3" cols="20">${USER_SESSION.description}</textarea><br><br>
        <input type="hidden" name="avatar"id="avatar" value="">
            <input type="file" name="file" id="file"/>
            <input type="button" onclick="upload()" value="上传头像"><br><br>
        <input type="submit" value="提交">
    </form>


    <div><img id="imgBox" src="" style="width: auto; height: auto; max-width: 300px; max-height: 300px; }" /></div>
    <script type="text/javascript">
        function upload(){
            var formdata=new FormData( );
            if(!$("#file").val()){
                return;
            }
            formdata.append("key1","efg");
            formdata.append("file" , $("#file")[0].files[0]);//获取文件法
            $.ajax({
                url: '/uploadPic',
                type: 'POST',
                data: formdata,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (json) {
                    $("#imgBox").attr("src", json);
                    $("#avatar").val(json);
                }
            });
        }
    </script>

</body>
</html>
