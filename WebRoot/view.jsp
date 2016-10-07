<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.zzy.dao.*,com.zzy.bean.Book"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">
<link rel="stylesheet" href="dist/css/bootstrap.min.css">
<link rel="stylesheet" href="dist/css/bootstrap-theme.min.css">
<script src="dist/js/jquery-3.1.1.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
    <title>书城</title>
  </head>  
  
  <body>

<div class="container" style="width:60%; margin-top:20px">
<%@ include file="booklist.jsp" %>

<%@ include file="addBook.jsp" %>

<%@ include file="searchBook.jsp" %>
</div>
  </body>	
</html>