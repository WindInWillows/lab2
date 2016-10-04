<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加作者</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
	<s:form action="addAuthor" method="get">
		<s:textfield label="姓名" name="author.name"></s:textfield>
		<s:textfield label="年龄" name="author.age"></s:textfield>
		<s:textfield label="国籍" name="author.country"></s:textfield>
		<s:submit value="添加作者"></s:submit>
	</s:form>
  </body>
</html>
