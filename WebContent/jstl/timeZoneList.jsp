<%@page import = "java.util.TimeZone" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix= "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix= "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%
		String timeZone[] = TimeZone.getAvailableIDs();
		for(String tz : timeZone){
			out.println(tz + "<br/>");
		}
%>