<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="all_js_css.jsp"%>
	<%@include file="temp.jsp"%>
</head>
<title>NOTEPAD</title>
<body>
	<div class="container-fluid p-0 m-0">
    <%@include file="navbar.jsp"%><br>
    <h1> Please fill our note detail</h1>
    <!-- Form -->
    <form action="SaveNoteServlets" method="post">
  <div class="form-group p-3">
    <label for="exampleInputEmail1">Note Title</label>
    <input
    required 
    name="title" 
    type="text" 
    class="form-control" 
    id="exampleInputEmail" 
    aria-describedby="emailHelp" 
    placeholder="Enter title"/>
  </div>
  
  <div class="form-group p-3">
    <label 
    for="content" >Note Content</label><br>
    <textarea 
    required 
    name="content" 
    id="content" 
    placeholder="Write Content" 
    class="form-control" 
    style="height:300px"></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
  
</form>
    </div>
</body>
</html>