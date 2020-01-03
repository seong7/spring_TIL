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
<h2>SQL Tag3</h2>
<sql:query var="lists" dataSource="${db}">
	select id, name from tblMember
</sql:query>

<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
	</tr>
<c:forEach var="member" items="${lists.rowsByIndex}">
	<tr>
		<c:forEach var="mem" items="${member}">
			<td>${mem }</td>
		</c:forEach>
	</tr>
</c:forEach>
</table><p/>

<h3>수정</h3>
<sql:query var="lists2" dataSource="${db}">
	select id from tblMember
</sql:query>

<form method="post" action="sqlTag4_update.jsp">
	id:
	<select name="id">
		<c:forEach var="member2" items="${lists2.rowsByIndex }">
			<c:forEach var="mem2" items="${member2 }">
				<option value="${mem2 }">${mem2 }</option>
			</c:forEach>
		</c:forEach>
	</select>
	name:
	<input name="newName" type="text" value="장동건">
	<input type="submit" value="수정">
</form>


		<c:forEach var="member2" items="${lists2.rowsByIndex }">
		"${member2}"
		<c:forEach var="mem2" items="${member2 }">
				${mem2 }
			</c:forEach>
		</c:forEach>
