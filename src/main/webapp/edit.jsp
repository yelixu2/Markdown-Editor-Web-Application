<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
</head>
<body>
    <div><h1>Edit Post</h1></div>
    <form action="post" method="POST">
        <div>
            <button type="submit" name="action" value="save">Save</button>
            <button type="submit" name="action" value="close">Close</button>
            <button type="submit" name="action" value="preview">Preview</button>
            <button type="submit" name="action" value="delete">Delete</button>
        </div>
        <input type="hidden" name="username" value=<%= request.getParameter("username") %>>
        <input type="hidden" name="postid" value=<%= request.getParameter("postid")%>>
        <div>
            <label for="title">Title</label>
        </div>
        <div>
        	<% if(request.getParameter("postid").equals("0") && request.getParameter("title") == null){ %>
        		<input type="text" id="title" name="title">
        	<%} else if(request.getParameter("title") == null){ %>
        		<input type="text" id="title" name="title" value=<%= request.getAttribute("ptitle") %>>
        	<%} else{%>
                <input type="text" id="title" name="title" value=<%= request.getParameter("title") %>>
            <%}%>
        </div>
        <div>
            <label for="body">Body</label>
        </div>
        <% if(request.getParameter("postid").equals("0") && request.getParameter("body") == null){ %>
        	<textarea style="height: 20rem;" id="body" name="body"></textarea>
        <%} else if(request.getParameter("body") == null){ %>
        	<textarea style="height: 20rem;" id="body" name="body"><%=request.getAttribute("pbody") %></textarea>
        <%} else{%>
            <textarea style="height: 20rem;" id="body" name="body"><%=request.getParameter("body") %></textarea>
        <%}%>
    </form>
</body>
</html>
