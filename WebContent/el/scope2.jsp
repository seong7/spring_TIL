<%@ page contentType="text/html; charset=EUC-KR"%>
<%
		// scope ���� ���� �޼ҵ� : set / get Attribute ���
		pageContext.setAttribute("msg", "���ڳ� ���� �� ���� ��������.");
		  //page scope�� Ŭ���� : pageContext
%>
msg : ${pageScope.msg}<br/>
msg : ${msg}<br/>              <!-- ���� (msg) �� �ߺ����� �ʴ� �� �� �Ʒ� ���� �� ��� -->


<!--  scope1.jsp ���� request�� ������ ���� sum -->
sum : <%= request.getAttribute("sum") %><br/>
sum : ${requestScope.sum }<br/>   <!-- �� �Ʒ� ���� -->

