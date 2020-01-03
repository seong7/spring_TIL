<%@ page contentType="text/html; charset=UTF-8"%>
<%
		request.setCharacterEncoding("UTF-8");
		
%>
id: ${param.id}<br/>
pwd: ${param["pwd"]}<br/>  <!-- 위 아래 모두 같음 -->