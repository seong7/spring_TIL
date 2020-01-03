<%@ page contentType="text/html; charset=UTF-8"%>
<%
	int sum = 0;
	for(int i=1; i<11; i++){
		sum += i;
	}
	request.setAttribute("sum", sum); // auto-boxing 되어 저장됨 (int sum -> Integer sum )
		
%>

<jsp:forward page = "scope2.jsp"/>