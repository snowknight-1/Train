<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'is_register.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<style>
span {
	font-size: 24;
}

body {
	margin: 50px;
}
</style>

</head>

<body>

	<span id="info">${registerinfo}</span>
	<br>
	<br>
	<span id="getcode" style="color:red;">5</span>秒后将自动跳转到页面。

	<script type="text/javascript">
		var timing = 5;
		var interval = setInterval(function() {
			timing = timing - 1;
			if (timing <= 0) {
				if (document.getElementById('info').textContent == '注册成功!') {
					console.log(1);
					window.location.href = "Login.jsp";
				} else {
					window.location.href = "Register.jsp";
				}
				clearInterval(interval);
			} else {
				;
				var x = timing.toString();
				document.getElementById("getcode").innerHTML = x;
			}
		}, 1000);
	</script>
</body>
</html>
