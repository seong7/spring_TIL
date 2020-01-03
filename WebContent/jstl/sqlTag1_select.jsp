<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource url="jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=UTF-8" 
 driver="org.gjt.mm.mysql.Driver"
 user="root"
 password="1234"
 var="db"/>  
<h2>SQL Tag1</h2>
<sql:query var="lists" dataSource="${db}">
	select id, name from tblMember
</sql:query>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
	</tr>
													<!-- 레코드 수만큼 반복  -->
<c:forEach var="member" items="${lists.rowsByIndex}"> 
	<tr>
									<!-- 필드 (column) 수만큼 반복  -->
		<c:forEach var="mem" items="${member}">
			<td>${mem }</td>
		</c:forEach>
	</tr>
</c:forEach>
</table><p/>
<a href="sqlTag2_update.jsp">UPDATE</a>