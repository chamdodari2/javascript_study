<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page contentType="text/html; charset=UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  
  
  <%
  
  request.setCharacterEncoding("UTF-8");
  
  
  %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSON형식으로 데이터 주고받기</title>
<script  src="https://code.jquery.com/jquery-3.6.0.min.js" > </script>

<script type="text/javascript">
$(function(){
	$("#sendButton").click(
			function(){
				var params="userId=" + $("#userId").val()+"$userPwd=" +$("#userPwd").val();
			//	alert(params);  찍히는지 테스트용
				 $.ajax({
					type :"GET",
					url :"ajax_ok.jsp" ,//여기서 가져오겠당
					data:params,  //위에도 prams적혀있ㄴ느디 똑같이가져오려나보다
					dataType:"json",   //받는 타입은 json방식(키와벨류)으루
					success:function(args){
						
						console.log(args);
						var str="userId=" + args[0].userId + " , userPwd=" + args[0].userPwd + "<br/>";
						$("#resultDIV").html(str);
					},
					error:function(e){
						
						alert(e.responseText);
						
					}
				}); 
				
			});
	
});

</script>
</head>
<body>
	아이디:<input type="text" id="userId" /><br />
	패스워드 : <input type="text" id ="userPwd" />
	<br />
	<button id="sendButton">전송</button>  
	<br />
	<br />
	<div id="resultDIV"></div>
</body>
</html>