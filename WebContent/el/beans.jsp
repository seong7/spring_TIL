<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="bean" class="el.ElBean"/>
<jsp:setProperty property="siteName" name="bean"/>
빈즈액션태그 : <jsp:getProperty property="siteName" name="bean"/><br/>
표현식 : <%=bean.getSiteName()%><br/>
EL방식 : ${bean.siteName}