<!-- elMethod.jsp -->
<%@ page import = "el.ElMethod" %>
<%@ page contentType="text/html; charset=EUC-KR"%>

<%@ taglib prefix="m" uri="/WEB-INF/tlds/Functions.tld" %>  <!-- directive (������)   taglib -->
<%
		int num = 123456789;
%>

JSP ��� : <%=ElMethod.comma(num)%><br/>
TLD ��� : ${m:comma(123456789)}    <!-- directive (������)  taglib �� �̿��� tld ������ �ҷ��� ���λ翡 ����. -->