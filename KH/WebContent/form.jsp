<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String a = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(int i=0 ; i< cookies.length; i++){
			if(cookies[i].getName().equals("ID")){
				 a = URLDecoder.decode(cookies[i].getValue());
				
			}
			
		}
		
		
	}


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="./B.jsp" method="POST" >
ID :<input type="text" name="ID" height="10" value="<%=a %>" >
PW :<input type="text" name= "PW" height="10">
로그인 저장 <input type="checkbox" name="check" height="10" value="check">
<input type="submit" value="로그인">
</form>

</body>
</html>
