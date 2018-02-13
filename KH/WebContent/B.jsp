<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	if(request.getParameter("check") != null){
	Cookie cookie = new Cookie("ID",URLEncoder.encode(request.getParameter("ID")));
	
	response.addCookie(cookie);
	
	}else{
		
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키가 생성 되었다.</title>
</head>
<body>

</body>
</html>