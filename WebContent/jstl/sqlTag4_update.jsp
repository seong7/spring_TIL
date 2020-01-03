<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource url="jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=UTF-8" 
 driver="org.gjt.mm.mysql.Driver"
 user="root"
 password="1234"
 var="db"
 scope="application"/>  <!--  application 에 한번 저장되면 서버가 종료될 때까지 유지됨 -->
<!-- <h2>SQL Tag4</h2> -->

<% request.setCharacterEncoding("UTF-8"); %>

<c:set var="id" value="${param.id}"/>
<c:set var="newName" value="${param.newName}"/>

${id }<br/>
${newName }

<sql:update var="lists" dataSource="${db}">
	update tblMember set name=? where id=?
	<sql:param value="${param.newName}"/>
	<sql:param value="${param.id}"/>
</sql:update>

<c:redirect url="sqlTag3_select.jsp"/>				<!--  redirect  : view로 보이지 않음 -->
<!-- 
업데이트 하였습니다.
<a href="sqlTag3_select.jsp">SELECT</a> -->