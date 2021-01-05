<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "java.util.List" %>    
<%@page import="com.javaex.dao.GuestDao"%>
<%@page import="com.javaex.vo.GuestVo"%>

<%@ page import = "java.sql.DriverManager" %>   

<%
   	GuestDao guestDao = new GuestDao();
    List<GuestVo> guestlist = guestDao.getguestList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>guest book</h1>
	<form action = "./add.jsp" method = "get">
		<table border = "1" width = 500>
			<tr>
				<td>이름</td>
				<td><input type ="text" name = "name"></td>
				<td>비밀번호</td>
				<td><input type ="text" name = "paw"></td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea rows=10 cols=65 name = "content">
					</textarea>
 				</td>
			</tr>
			<tr>
				<td colspan="4"><button>확인</button></td>
			</tr>
			
		</table>
	</form>

	<%
		for(int i = 0; i < guestlist.size();i++) {
			GuestVo vo = guestlist.get(i);
	%>
	<br>
	<table border = 1 width = 500>
		<tr>
			<td><%=vo.getGuestno()%> </td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getDate()%></td>
			<td><a href= "./delete.jsp?no=<%=vo.getGuestno()%>">삭제</a></td>
			
		</tr>
		<tr>
			<td colspan="4"   ><%=vo.getContent()%></td>
		</tr>
	</table>
	<%}%>
	
</body>
</html>

