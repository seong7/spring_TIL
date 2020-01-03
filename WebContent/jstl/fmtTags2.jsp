<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix= "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix= "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:set var="now" value="<%=new java.util.Date() %>"/>  <!--  now 선언  -->

<fmt:setLocale value="kr_ko"/>
금액 : <fmt:formatNumber value="1000000" type="currency" currencySymbol="\"/><br/>
일시 : <fmt:formatDate value="${now}" type = "both" dateStyle="full" timeStyle="full"/><p/>


<fmt:setLocale value="en_us"/>
금액 : <fmt:formatNumber value="1000000" type="currency"/><br/>
일시 : <fmt:formatDate value="${now}" type = "both" dateStyle="full" timeStyle="full"/><p/>


<fmt:setLocale value="ja_jp"/>
금액 : <fmt:formatNumber value="1000000" type="currency"/><br/>
일시 : <fmt:formatDate value="${now}" type = "both" dateStyle="full" timeStyle="full"/><p/>