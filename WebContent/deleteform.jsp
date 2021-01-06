<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.javaex.dao.GuestDao"%>
<%@page import="com.javaex.vo.GuestVo"%>   
<%@page import="java.util.List"%>
 <%
 	String password = request.getParameter("pwd");
 	int no = Integer.parseInt(request.getParameter("no"));
	
 	GuestDao guestDao = new GuestDao();
    List<GuestVo> guestlist = guestDao.getguestList();
    
    System.out.println(no);
	System.out.println(password);
	System.out.println("********");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<form action = "./delete.jsp" method="get" >
			비밀번호: <input type="text" name = "pwd">
			<input type="hidden" name = "no" value="<%=no%>">
			<input type="hidden" name = "password" value="<%=password%>">
			<button type = "submit">변경</button>	
	</form>
	<a href= "./list.jsp">리스트로가기</a>
</body>
</html>