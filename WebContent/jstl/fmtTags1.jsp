<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix= "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!--  Locale 지정  (한국- 'ko_kr' == ko:국가코드 | kr:언어코드  -->
<fmt:setLocale value="ko_kr" />
<fmt:requestEncoding value="EUC-KR"/>  
<!--  위는 이와 동일   request.setCharacterEncoding("EUC-KR"); -->
name : ${param.name }
<form method="post"> <!-- action 지정안하면 동일페이지로 reload 됨 --> 
	name : <input name = "name" value="홍길동">
	<input type="submit">
</form>