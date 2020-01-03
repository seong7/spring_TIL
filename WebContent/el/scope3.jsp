<!-- scope3.jsp -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%
		session.setAttribute("id", "DJJUng");
		application.setAttribute("siteName", "google.com");

%>
id : ${sessionScope.id} <br/>
siteName : ${applicationScope.siteName} <br/>