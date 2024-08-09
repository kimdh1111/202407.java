
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	Class.forName("com.mysql.cj.jdbc.Driver");
	try(
		Connection conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3307/spring5fs", "root", "mysql");
		Statement stmt = conn.createStatement();
			
		ResultSet rs = stmt.executeQuery(String.format(
					"select * from member where id='%s'",
					(String)session.getAttribute("userId")));
	){
		rs.next();
%>
		<form action="member_update.jsp" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" readonly
							   value="<%=rs.getString("id") %>"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"
							   value="<%=rs.getString("pw") %>"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"
							   value="<%=rs.getString("name") %>"></td>
				</tr>
			</table>
			<input type="submit" value="저장">
		</form>
		
<%
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>