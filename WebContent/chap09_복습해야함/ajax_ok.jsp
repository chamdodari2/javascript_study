<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page contentType="text/html; charset=UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  
  
  <%
  
  request.setCharacterEncoding("UTF-8");
  String userId = request.getParameter("userId");
  String userPwd = request.getParameter("userPwd");
  
  StringBuilder sb = new StringBuilder("[{");
  sb.append(String.format("\"userId\":\"%s\"",userId));
  sb.append(",");
  sb.append(String.format("\"userPwd\":\"%s\"",userPwd));
  sb.append("}]");
  
  //클라이언트에게 응답하기
  out.print(sb.toString());
  
  System.out.println(sb);
  
  %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSON형식으로 데이터 주고받기</title>
<script  src="https://code.jquery.com/jquery-3.6.0.min.js" > </script>


</head>
<body>
	
</body>
</html>