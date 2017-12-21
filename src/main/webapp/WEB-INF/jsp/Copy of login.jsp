<%@page pageEncoding="UTF-8" %>
<html>
    <head>
        <base href="">
        <title>用户登录</title>
        <style type="text/css">
        </style>
        
 
    </head>
    <body>
        <img src="${APP_PATH}/imgs/logo.png">
        <h1 id="errorMsg" style="color:red;"></h1>
        <form action="${APP_PATH}/user/dologin.htm" method="post">
        <table>
            <tr>
                <td>登陆账号</td>
                <td><input type="text" value="${param.loginacct}" name="loginacct"></td>
            </tr>
            <tr>
                <td>登陆密码</td>
                <td><input type="password" name="userpswd" value="${param.userpswd}" ></td>
            </tr>
            <tr>
                <td><input type="button" id="loginBtn" value="提交"></td>
                <td><input type="reset"></td>
            </tr>
        </table>
        </form>
        <script type="text/javascript" src="${APP_PATH}/js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript">
        //$(document).ready();
        //$(function(){
            $("#loginBtn").click(function(){
            	
            	// 验证表单数据

            	// 获取表单元素对象
            	
            	// 登陆账号
            	var floginacct = $('input[name="loginacct"]');
            	
            	// 判断对象的取值是否为空
            	var val = floginacct.val();
            	
            	// java中的trim方法只能去掉字符串首尾的半角空格，但是全角空格去不掉。在中文，日文，韩文项目中尤其注意。
            	//$.trim();
            	
            	if ( val == "" ) {
            		alert("登陆账号不能为空，请输入");
            		// 设置页面焦点
            		floginacct.focus();
            		return false;
            	}
            	
            	// 登陆密码
            	var fuserpswd = $('input[name="userpswd"]');
            	
            	// 判断对象的取值是否为空
            	val = fuserpswd.val();
            	
            	if ( val == "" ) {
            		alert("登陆密码不能为空，请输入");
            		// 设置页面焦点
            		fuserpswd.focus();
            		return false;
            	}
            	
            	//alert("提交表单");
            	//$("form").submit( );
            	
            	// 为了使页面不发生闪烁效果，可以采用AJAX进行数据异步提交
            	
            	// JS中的大括号表示一个对象  {},对象中的属性和属性值使用冒号隔开 { name : '123', age : 20 }
            	// JS中的中括号表示一个集合  [];
            	
            	// JSON : JavaScript Object Notation
            	// JSON字符串 ： "{ name : '123', age : 20 }"
            	$.ajax({
            		url : "${APP_PATH}/user/dologin.do", // 提交的服务器地址，等同于表单的action属性
            		type : "POST", // 提交的数据类型，等同于表单的method属性
            		async : true, // 异步状态：默认为true,表示异步，如果为false,表示同步
            		data : { // ajax提交的数据，数据可以采用name-value方式
            			"loginacct" : floginacct.val(),
            			"userpswd"  : fuserpswd.val()
            		},
            		//dataType : "json", // 返回数据的类型，默认为text,也可以为json，xml,html
            		beforeSend : function(){ // 发送请求之前的数据处理，完全可以在这个位置增加表单验证
            			// 发送请求之前的操作可以放置当前位置
            			return true;
            		},
            		success : function(result){ // 表示HTTP操作成功的回调方法
            			// 当前请求成功时（状态码为200），可以将数据处理放置在当前位置
            			if ( result.success ) {
            				window.location.href = "${APP_PATH}/main.htm";
            			} else {
            				$("#errorMsg").text("用户信息不存在，请重新输入");
            			}
            		},
            		error : function() { // 表示HTTP操作失败的回调方法
            			// 当前请求失败时（状态码为404， 500），可以将数据处理放置在当前位置
            		}
            	});
            });
        //});
        </script>
    </body>
</html>