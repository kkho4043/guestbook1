<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.GuestDao"%>
<%@page import="com.javaex.vo.GuestVo"%>   
<%@page import="java.util.List"%>
<%  
	int no = Integer.parseInt(request.getParameter("no"));
	String pwd = request.getParameter("pwd");
	String password = request.getParameter("password");
	
	GuestDao guestdao = new GuestDao();
	System.out.println(pwd);
	System.out.println(password);
	if(password.equals(pwd)){
		guestdao.guestDelete(no);
		response.sendRedirect("list.jsp");
	}
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	비밀번호가 틀렸습니다<br>
	<a href= "./deleteform.jsp?no=<%=no%>&pwd=<%=password%>">다시입력하기</a>
	
	<a href= "./list.jsp">리스트로가기</a>
</body>
</html>