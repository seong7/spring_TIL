<%@ page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
ȣ��Ʈ�� : ${header.host}<br/>
�������� : ${header["user-agent"]}<br/>
����� : ${header["accept-language"]}<br/>