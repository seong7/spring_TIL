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
<h2>SQL Tag2</h2>
<!--  sql:update  태그로 실행해야함 -->
<sql:update var="lists" dataSource="${db}">
	update tblMember set name=? where id=?
	<sql:param value="${'강호동' }"/>
	<sql:param value="${'aaa' }"/>
</sql:update>
업데이트 하였습니다.
<a href="sqlTag1_select.jsp">SELECT</a>