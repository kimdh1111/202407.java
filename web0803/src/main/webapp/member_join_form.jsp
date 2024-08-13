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
.wrapper h1{
	font-size: 36px;
	text-align: center;
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
<title>회원가입</title>
</head>
<body>
<div class="wrapper">
<form action="member_join.jsp" method="post">
	<h1>Join</h1>
	<div class="input-box">
		
		
			
			<input type="text" name="id"  placeholder="Id"required>
		
	</div>
	<div class="input-box">
		
			
			<input type="password" name="pw"  placeholder="Password"required>
		
	</div>
	<div class="input-box">
		
			
			<input type="text" name="name" placeholder="Username"required>
		
	</div>
	
	<input type="submit" value="등록" class="btn">
	<div class="register-link">
				<a href="index.jsp">홈페이지</a>
	</div>   
</form>
</div>
</body>
</html>