<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/user/login" method="post">
	
		<input type="text" id="username" name="username" placeholder="ID"> <br/>
							
		<input type="password" id="password" name="password" placeholder="PassWord"> <br/>
		
		<label><input type="checkbox" name="rememberMe" />	Remember me</label> <br/>

		<button type="submit" value="submit">Login</button>
	</form>

</body>
</html>