<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Preview Post</title>
</head>
<body>
	<div>
		<form action="post">
			<input type="hidden" name="username" value="yeli">
			<input type="hidden" name="postid" value=<%= request.getParameter("postid") %>>
			<input type="hidden" name="title" value=<%= request.getParameter("title") %>>
            <input type="hidden" name="body" value=<%= request.getParameter("body") %>>
            <button type="submit" name="action" value="open">Close Preview</button>
		</form>
	</div>
	<div>
		<%= request.getAttribute("ptitle") %>
	</div>
	<div>
		<%= request.getAttribute("pbody")%>
	</div>

</body>
</html>