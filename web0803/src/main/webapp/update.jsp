<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String content = request.getParameter("content");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String num = request.getParameter("num");
BoardDAO dao = new BoardDAO();
BoardDTO dto = new BoardDTO(Integer.parseInt(num), writer, title, content, null, 0);
dao.updateBoard(dto);
response.sendRedirect("list.jsp");
%>
