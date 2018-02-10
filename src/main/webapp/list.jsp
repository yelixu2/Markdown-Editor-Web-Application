<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
	<title>List Page</title>
</head>
<body>
	<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/CS144" user = "cs144"  password = ""/>
    <sql:query dataSource = "${snapshot}" var = "result">
        SELECT * FROM Posts;
    </sql:query>
	<div>
		<form action="post">
			<input type="hidden" name="username" value=<%= request.getParameter("username") %>>
            <input type="hidden" name="postid" value=0>
            <button type="submit" name="action" value="open">New Post</button>
		</form>
	</div>
	<table>
		<thead>
			<tr>
				<th>Title</th>
				<th>Created</th>
				<th>Modified</th>
				<th>&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var = "row" items = "${result.rows}">
			<div>
            	<tr>
            		<form action="post">
            			<input type="hidden" name="username" value="${row.username}">
            			<input type="hidden" name="postid" value="${row.postid}">
            			<td><c:out value = "${row.title}"/></td>
                		<td><c:out value = "${row.created}"/></td>
                		<td><c:out value = "${row.modified}"/></td>
    		    		<td><button name="action" value="open">Open</button></td>
    					<td><button name="action" value="delete">Delete</button></td>
    				</form>
            	</tr>
            </div>
         	</c:forEach>	
		</tbody>
	</table>

</body>
</html>