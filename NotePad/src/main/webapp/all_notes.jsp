<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="com.entities.Note" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NOTEPAD</title>
<%@include file="all_js_css.jsp" %>
	<%@include file="temp.jsp"%>
</head>
<body>

    <div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp"%><br>
    <h1 class="text-uppercase mx-3"> ALL NOTES:</h1>
    
    <div class="row">
    <div class="col-12">
    <%
    Session s=FactoryProvider.getFactory().openSession();
    Query q=s.createQuery("from Note");
    List<Note> list=q.list();
    for (Note note:list){ 
    %>
    	<div class="card mt-3 mx-5 " >
		  <img class="card-img-top m-4 mx-auto" src="img/icon.jpg" style="max-width:100px;" alt="Card image cap">
		  <div class="card-body px-5">
		    <h5 class="card-title"><%= note.getTitle() %></h5>
		    <p class="card-text"><%= note.getContent() %></p>
		    <p class="text-info"><%=note.getAddedDate() %></p>
		    <div class="container text-center">
		    <a href="edit.jsp?id=<%= note.getId() %>" class="btn btn-primary">Update</a>
		    <a href="DeleteServlet?id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
		    </div>
		    
		  </div>
		</div>
    <%}
    s.close();
    %>
    </div>
    </div>
    
    
    </div>
    
</body>
</html>