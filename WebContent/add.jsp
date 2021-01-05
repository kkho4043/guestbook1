<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.GuestDao"%>
<%@page import="com.javaex.vo.GuestVo"%>   
<%@page import="java.util.List"%>
<%
	String name = request.getParameter("name"); 
	String pwd = request.getParameter("pwd");
	String content = request.getParameter("content");
	
	GuestVo guestVo = new GuestVo(name,pwd,content);
	
	GuestDao guestdao = new GuestDao();
	
	guestdao.guestInsert(guestVo);
	
	response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>