<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.GuestDao"%>
<%@page import="com.javaex.vo.GuestVo"%>   
<%@page import="java.util.List"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestDao guestdao = new GuestDao();
	guestdao.guestDelete(no);
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