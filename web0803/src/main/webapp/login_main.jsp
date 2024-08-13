<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
*{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: "Poppins", sans-serif;
}
body{
display: flex;

justify-content: center;
align-items: center;
min-height: 100vh;
background: url('img/image2.jpg');
background-size: 2000px 1200px;
background-position: center;
}

.wrapper{
border: 2px solid rgba(255, 255, 255, .2);
padding: 30px 40px;
width: 420px;

border-radius: 10px;
background: transparent;
backdrop-filter: blur(20px);
box-shadow: 0 0 10px rgba(0, 0, 0, .2);
color: #fff;
}
.wrapper h1{
	font-size: 36px;
	text-align: center;
}
.wrapper .input-box{
position: relative;

width: 100%;
height: 50px;
margin: 30px 0;

}
.input-box input {
width: 100%;
height:100%;
background: transparent;
border: none;
outline: none;
border: 2px solid rgba(255, 255, 255, .2);
border-radius: 40px;
font-size: 16px;
color: #fff
padding: 20px 45px 20px 20px;
}
.input-box input::placeholder{
padding: 20px 45px 20px 20px;
color: #fff;
}
.input-box i{
position: absolute;
right: 20px;
top: 50%;
transform: translateY(-50%);
font-size: 20px;

}
.wrapper .btn{
width: 100%;
height: 45px;
background: #fff;
border: none;
outline: none;
margin: 3px 0;
border-radius: 40px;
box-shadow: 0 0 10px rgba(0, 0, 0, .1);
cursor: pointer;
}
.register-link p a:hover{
text-decoration: underline;

}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	if ((String)session.getAttribute("userId") != null) {
		// 로그인 상태일 때의 출력
	
%>
	<div class="wrapper">
		<form action="logout.jsp" method="post">
		
			<h1><%=(String)session.getAttribute("userName") %>님 로그인</h1>
			<div class="input-box">
			<input type="submit" value="로그아웃" class="btn">
			</div>
			<div class="input-box">
			<input type="button" value="회원정보 수정" class="btn"
				   onclick="window.open('member_update_form.jsp', 'popup',
				   						'width=400, height=200')">
			</div>
			<div class="register-link">
				<a href="index.jsp">홈페이지</a>
			</div> 
		</form>
		</div>
		
<%
	} else {
		// 로그인 되지 않은 상태일 때의 출력
%>
	<div class="wrapper">
		<form action="login.jsp" method="post">
		<h1>Login</h1>
			<div class="input-box">
			<input type="text" name="id"  placeholder="Username"required><br>
			</div>
			<div class="input-box">
			<input type="password" name="pw"  placeholder="Password"required><br>
			</div>
			<input type="submit" value="로그인" class="btn">
			<input type="button" value="회원가입" class="btn"
				   onclick="location.href='member_join_form.jsp'">
			<div class="register-link">
				<a href="index.jsp">홈페이지</a>
			</div> 
						
		</form>
	</div>
<%
	}
%>

</body>
</html>