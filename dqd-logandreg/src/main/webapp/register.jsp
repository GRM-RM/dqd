<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width" charset="gb2312" />
    <link rel="dns-prefetch" href="//static.soufunimg.com">
    <link rel="dns-prefetch" href="//captcha.fang.com">
    <link rel="dns-prefetch" href="//countpvn.3g.fang.com">
    <title>懂球帝-注册</title>

   <%-- <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/common.css?66" />
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/css1.css?20160706" />
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/css.css?20160706"/>
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/CSS_F3.css?20160706" />
    <link rel="stylesheet" type="text/css" href="https://static.soufunimg.com/passport/pccss/css400.css?66" />

    <script src="https://static.soufunimg.com/passport/commonjs/jquery-1.4.2.min.js"></script>
    <script src="https://static.soufunimg.com/passport/pcjs/nav.js?v=201711082016"></script>
    <script src="https://static.soufunimg.com/passport/pcjs/register_validate.js?v=201705181617" charset="gb2312"></script>
    <script src="https://static.soufunimg.com/passport/pcjs/register.js?v=20171109" charset="gb2312"></script>
--%>
    <script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>
    <script type="application/javascript">
        function getNum() {
            $.ajax({
                type:"post",
                url:"ajaxNum",
                data:"phoneNum="+document.getElementById("strMobil").value,
                success:function (data) {
                    //document.getElementById("strVcode").value=data;
                    $("#smsmsg").html(data.smsmsg);
                    if(data.status==false){
                        $("#img_submit").attr("disabled", true);vcod
                        $("#vcod").attr("disabled", true);
                    }
                    if(data.status==true){
                        $("#img_submit").attr("disabled", false);
                        $("#vcod").attr("disabled", false);
                    }
                }
            });
        }
    </script>
    <script type="text/javascript">

        function check(obj) {
            $.ajax({
                url:"check",
                data:"username="+$("#strUsername").val(),
                success:function (data) {
                    $("#nameMsg").html(data.nameMsg)
                    if(data.status==true&&obj=='btn'){
                            $("#mobileregister").submit();
                    }
                }
            });
        }

        function checkPwd() {
            var pwd1 = $("#pwd1").val();
            var pwd2 = $("#pwd2").val();
            if(pwd1==null||pwd2==null){
                $("#pwdMsg").html('密码不能为空')
                $("#img_submit").attr("disabled", true);
                return;
            }
                if((pwd1!=pwd2)){
                    $("#pwdMsg").html('两次输入密码不一致')
                    $("#img_submit").attr("disabled", true);
                }else{
                    $("#pwdMsg").html('确认密码正确');
                    $("#img_submit").attr("disabled", false);
                }
        }
    </script>
    <script type="application/javascript">
        function checkPhone() {
            $.ajax({
                url:"checkPhone",
                data:"userTel="+$("#strMobil").val(),
                success:function (data) {
                    $("#phoneMsg").html(data.phoneMsg);
                    if(data.status==false){
                        $("#img_submit").attr("disabled", true);
                    }else{
                        $("#img_submit").attr("disabled", false);
                    }

                }
            });
        }
    </script>
</head>
<body>

<div class="newnav20141104">
	<div class="newnav20141104nr">
		<div class="s1"><a href="http://www.fang.com/"></a></div>
		<div class="s2"  onMouseOver="this.className='s2 on2014'" onMouseOut="this.className='s2'" id="dsy_H01_01">
    <form id="mobileregister" action="reg" method="post" style="background: #efefef;">

        <div class="logoBox" style="min-width: 1200px;">
            <input type="hidden" name="backurl" id="backurl" value="http://www.fang.com/" />
            <input type="hidden" name="iswait" id="iswait" value="1" />
            <input type="hidden" name="service"  id="service" value="soufun-passport-web" />
            <input type="hidden" name="host" id="host" value="" />
            <div class="logo">
                <a href="#">
                    <img src="" /></a>
            </div>
            <span class="word">注册通行证</span>

        </div>

        <div class="main" style="height: 612px;">
            <div class="leftList">
                <ul class="formList">
                    <li id="usernameregion" style="position: relative; z-index: 2;">
                        <label><em class="red">*</em> 用户名：</label><input type="text" id="strUsername" name="username" class="inputStyle" onblur="check('name')" value="${user.username}"/>
                        <span id="nameMsg" style="color: red;"></span>

                    </li>
                    <li style="position: relative;">
                        <label><em class="red">*</em> 请设置密码：</label><input type="password" class="inputStyle" id="pwd1" name="password" />
                        <span style="color: red;">${error.getFieldError("password").defaultMessage}</span>
                    </li>
                    <li style="position: relative;">
                        <label><em class="red">*</em> 请确认密码：</label><input type="password" class="inputStyle" id="pwd2" name="passwo" onblur="checkPwd()"/>
                        <span id="pwdMsg" style="color: red;"></span>
                    </li>

                    <li style="position: relative;">
                        <label><em class="red">*</em> 手机号码：</label>
                        <input type="text" class="inputStyle" id="strMobil" name="userTel" maxlength="13" value="${user.userTel}" onblur="checkPhone()" />
                        <span style="color: red;" id="phoneMsg">${error.getFieldError("userTel").defaultMessage}</span>
                    </li>

                    <li style="position: relative;">
                        <label><em class="red">*</em> 手机验证码：</label>
                        <input type="text" class="inputStyle width2" id="strVcode" name="vcode_phone" />
                        <input type="button" value="获取短信验证码" class="yzmBtn" id="vcod" onclick="getNum()" />
                        <span id="checkmsg"></span>

                        <div class="" id="div_strVcode" style="position: absolute; top: 0; left: 62%;"></div>

                        <!--验证弹出 begin -->
                        <div class="yzbox2" id="div_mathcode" style="display: none;">
                            <div class="yzboxa">
                                <div class="yzboxa01">
                                    <div class="s1">
                                        <script type="text/javascript">
                                            //获取验证码
                                            var v_rand = Math.round(Math.random() * 10000);
                                            document.write("<img id='imgcode' name='imgcode' onClick='refresh_code();return false;' style='cursor:pointer;width:70px;height:30px'>");

                                        </script>
                                    </div>
                                    <div class="s2">
                                        <input type="text" value="" maxlength="4" class="yzboxa01inp" id="txt_mathcode" />
                                        <input type="button" class="yzboxa01but" value="确认" id="btn_mathcode" />
                                    </div>
                                </div>

                            </div>
                            <div class="yzboxb">
                            </div>
                        </div>
                        <!--验证弹出 end-->
                    </li>


                    <span id="smsmsg" style="color: red;">${checkmsg}</span>
                    <li id="li_submit" >
                        <label></label>
                        <input type="button" value="立即注册" class="btnStyle" id="img_submit" onclick="check('btn')" />
                    </li>

                    <li class="noMar gray9">
                        <label></label>
                        <input type="checkbox" checked="checked" id="agree" name="agree" />我同意<a href="/Register/ServiceInfo" class="blue">《注册协议》</a>
                    </li>
                </ul>
            </div>

            
            <div class="rightLogin">
    <ul class="rightList">
        <li>已有通行证账号，请直接登录</li>
        <li class="btnBox">
            <input id="rightLogin" type ="button" value="登 录" class="btnStyle" /></li>
        <li>您还可以用其他方式直接登录：</li>
        <li class="other">
            <a href="/passport/QQLogin.aspx?type=pc&service=soufun-passport-web&backurl=">
                <img src="" width="15" height="16" alt="腾讯QQ登录">
                QQ登录</a>
             <a href="passport/weixinlogin.aspx?service=soufun-passport-web&type=pc&backurl=">
                 <img src="" width="15" height="14" alt="微信登录" />
                  微信登录</a>
             <br />
            <br />
            <a href="/passport/weiboLogin.aspx?Service=soufun-passport-web&Type=pc&backurl=">
                <img src="" width="15" height="16" alt="新浪微博登录">
                微博登录</a>
            <a href="/passport/BaiduLogin.aspx?Service=soufun-passport-web&Type=pc&backurl=">
                <img src="" width="15" alt="百度登录">
                百度登录</a>
        </li>
    </ul>
    <ul class="rightJjr">
        <li style="color:gray;">如果您是经纪人，请点击这里注册</li>
        <li>
            <input type="button" value="搜房帮入口" class="btnStyle" onclick="window.open('http://agent.fang.com/AgentRegister.aspx')" /></li>
    </ul>
    <ul class="rightJjr rightList">
        <li>
            <input type="button" value="装修帮入口" class="btnStyle" style="background-color:#ffd800;border:3px solid #ffd800;border-bottom:3px solid #b9bb7d" onclick="" /></li>
    </ul>
</div>
        </div>
    </form>
   </div>
    </div>
</div>