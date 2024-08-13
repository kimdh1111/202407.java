<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// DB접속
String sql = "";
String URL = "jdbc:mysql://localhost:3307/spring5fs";
Connection conn = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.cj.jdbc.Driver");
conn = DriverManager.getConnection(URL, "root", "mysql");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
   	 	*{
   	 		margin: 0;
   	 		padding: 0;
   	 		
   	 		box-sizing: border-box;
   	 		font-familly: sans-serif;
   	 	}
   	 	
   	 	body{
   	 		min-height: 100vh;
   	 		background: url(img/image1.jpg);
   	 		background-size: 2000px 1000px;
   	 		display: flex;
   	 		justify-content: center;
   	 		align-items: center;
   	 	}
   	 	table{
   	 		width: 100%;
   	 	}
   	 	table, th, td{
   	 		border-collapse: collapse;
   	 		padding: 1rem;
   	 	}
   	 	main.table{
   	 		width: 82vw;
   	 		height: 90vh;
   	 		background-color: #fff5;
   	 		
   	 		backdrop-filter: blur(7px);
   	 		box-shadow: 0 .4rem .8rem #0005;
   	 		border-radius: .8rem;
   	 		
   	 		overflow: hidden;
   	 	}
   	 	.table__header{
   	 		width: 100%;
   	 		height: 10%;
   	 		background-color: #fff4;
   	 		padding: .8rem 1rem;
   	 		
   	 	}
   	 	.table__header h1{
   	 		padding: 10px;
   	 		font-size: 30px;
   	 	}
   	 	.table__body{
   	 		width: 95%;
   	 		max-height: calc(89% - .8rem);
   	 		background-color: #fffb;
   	 		
   	 		margin: .8rem auto;
   	 		border-radius: .6rem;
   	 		
   	 		overflow: auto;
   	 	}
  		
       	tbody th {
       		position: sticky;
       		top: 0;
       		left: 0;
       		background-color: #d5d1defe;
       	}
       	
       	tbody td{
       		
       		text-align: center;
       		
       		
       	}
       	
       	tbody tr:hover{
       		background-color: #fff6;
       	}
       	tbody tr:nth-child(even){
       		background-color: #0000000b;
       	}
       	.btn {
       		position: absolute;
       		right: 50px;
       		bottom: 0;
       		padding: 10px;
       		margin: 10px 10px 20px 10px;
       	}
       	.btn1 {
       		position: absolute;
       		right: 0;
       		bottom: 0;
       		padding: 10px;
       		margin: 10px 10px 20px 10px;
       	}
      
       
       	input[type=button]{
       		padding: 10px;
       		background-color: #c6b8ff;
       		color: #fff;
       		border-radius: 10px;
       	}
    </style>
</head>
<body>
<main class="table">
	<section class="table__header">
		<h1>게시판</h1>
	</section>
	<section class="table__body">
		<table>
			<thead>
			<tbody>
			
			    <tr>
			        <th class="num"    >번호    </th>
			        <th class="title"  >제목    </th>
			        <th class="writer" >작성자  </th>
			        <th class="regtime">작성일시</th>
			        <th                >조회수  </th>
			    </tr>
		    </tbody>
<%
sql = "select * from board";
pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();

while(rs.next()){
	String num = rs.getString("num");
	String title = rs.getString("title");
	String writer = rs.getString("writer");
	String regtime = rs.getString("regtime");
	String hits = rs.getString("hits");

%>
			
				<tr>
			        <td><%=num %></td>
			        <td style="text-align:left;">
			            <a href="view.jsp?num=<%=num %>"><%=title %></a>
			        </td>
			        <td><%=writer %></td>
			        <td><%=regtime %></td>
			        <td><%=hits %></td>
			    </tr>
		  
<%
}
%>

</thead>
</table>
</section>
<br>
<div class="btn">
<input type="button" value="글쓰기" onclick="location.href='write.jsp'">
</div>
<div class="btn1">
<input type="button" value="홈" onclick="location.href='index.jsp'">
</div>
</main>

</body>
</html>