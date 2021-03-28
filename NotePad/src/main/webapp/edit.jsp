<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.helper.FactoryProvider" %>
    <%@ page import="org.hibernate.Session" %>
    <%@ page import="com.entities.Note" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="all_js_css.jsp"%>
	<%@include file="temp.jsp"%>
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp"%><br>
    <h1> Edit your Note</h1><br>
    <%
    int noteId=Integer.parseInt(request.getParameter("id").trim());
	Session s=FactoryProvider.getFactory().openSession();
	Note note=s.get(Note.class,noteId);
    %>
     <form action="UpdateServlet" method="post">
     <input value="<%=note.getId()%>" name="id" type="hidden"/>
  <div class="form-group">
    <label for="exampleInputEmail1">Note Title</label>
    <input
    required 
    name="title" 
    type="text" 
    class="form-control" 
    id="exampleInputEmail" 
    aria-describedby="emailHelp" 
    placeholder="Enter title"
    value="<%=note.getTitle() %>"
    />
  </div>
  
  <div class="form-group">
    <label 
    for="content" >Note Content</label><br>
    <textarea 
    required 
    name="content" 
    id="content" 
    placeholder="Write Content" 
    class="form-control" 
    style="height:300px"><%= note.getContent() %></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Save your note</button>
  </div>
  
</form>
    </div>
</body>
</html>