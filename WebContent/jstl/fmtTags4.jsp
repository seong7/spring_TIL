<!-- fmtTags4.jsp -->
<%@page import="java.util.Date"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="dayTime" value="<%=new Date()%>"/>
날짜 : <fmt:formatDate value="${dayTime}" type="date" dateStyle="full"/><br/>
시간 : <fmt:formatDate value="${dayTime}" type="time"/><p/>

<fmt:timeZone value="Asia/Hong_Kong">
홍콩 : <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full"/><br/>
</fmt:timeZone>

<fmt:timeZone value="Europe/London">
런던 : <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full"/><br/>
</fmt:timeZone>

<fmt:timeZone value="America/New_York">
뉴욕 : <fmt:formatDate value="${dayTime}" type="both" dateStyle="full" timeStyle="full"/><br/>
</fmt:timeZone>



