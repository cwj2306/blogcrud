<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/user/join" method="post" onsubmit="return validateCheck()">

		<input type="text" id="username" name="username" placeholder="아이디" required="required"> <br/>
			
		<a style="cursor: pointer;" class="blog_btn" href="#" onclick="usernameCheck()">중복확인</a> <br/>

		<span id="username_input" style="font-size: 12px;"></span> <br/>

		<input type="password" id="password" name="password" placeholder="비밀번호" required="required"	 maxlength="20"> <br/>

		<input type="password" id="passwordCheck" name="passwordCheck" placeholder="비밀번호 확인" required="required" maxlength="20"> <br/>

		<input type="email" name="email" placeholder="이메일" required="required" maxlength="40"> <br/>

		<button type="submit" value="submit" >Join</button>

	</form>
	
	<script>
		
		var usernameOverlapCheck = false;
		//아이디 중복 확인
		function usernameCheck(){
			var username = document.querySelector("#username").value;
			
			fetch("/user/overlap/"+username).then(function(r){
				return r.text();
			}).then(function(r){
				var status = r; //ok 중복되지 않음.
				var et = document.querySelector("#username_input");
	
				if(status === "ok"){
					et.style.color="green";
					et.innerHTML = "사용 가능한 아이디 입니다.";
					usernameOverlapCheck = true;
				}else{
					et.style.color="red";
					et.innerHTML = "사용할 수 없는 아이디 입니다.";
					usernameOverlapCheck = false;
				}
			});
			
		}

		function validateCheck(){
			var password = document.querySelector('#password').value;
			var passwordCheck = document.querySelector('#passwordCheck').value;
			
			if (password === passwordCheck) {
				return true;
			}else{
				alert('비밀번호를 정확히 입력해주세요');
				return false;
			}
		}
		
	</script>
	
	
</body>
</html>