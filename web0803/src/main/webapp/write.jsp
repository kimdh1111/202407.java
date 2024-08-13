<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
       		right: 60px;
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
       	input[type=submit]{
       		padding: 10px;
       		background-color: #c6b8ff;
       		color: #fff;
       		border-radius: 10px;
       	}
       	input[type=text], textarea { width:100%; }
       	
    </style>
</head>
<body>

<form method="post" action="insert.jsp">
   	<main class="table">
	<section class="table__header">
		<h1>게시판</h1>
	</section>
	<section class="table__body">
		<table>
			<thead>
				<tbody>
	    
			        <tr>
			            <th>제목</th>
			            <td><input type="text" name="title"  maxlength="80"
			                       value="">
			            </td>
			        </tr>
			        <tr>
			            <th>작성자</th>
			            <td><input type="text" name="writer" maxlength="20"
			                       value="">
			            </td>
			        </tr>
			        <tr>
			            <th>내용</th>
			            <td><textarea name="content" rows="10"></textarea>
			            </td>
			        </tr>
	        	</tbody>
	    	</thead>
		</table>
	</section>
    <br>
    <div class="btn">
    <input type="submit" value="저장">
    </div>
    <div class="btn1">
    <input type="button" value="취소" onclick="history.back()">
    </div>
</main>
</form>

</body>
</html>