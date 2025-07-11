<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%   
    String user=request.getParameter("uname");
    String pass=request.getParameter("upass");
    if(user.equals("anil") && pass.equals("123")){
    	session.setAttribute("user", user);
    	response.sendRedirect("welcome.jsp");
    }
    else{
    	session.setAttribute("mesg", "invalid login credentials");
    	response.sendRedirect("error.jsp");
    }
    
%>
</body>
</html>