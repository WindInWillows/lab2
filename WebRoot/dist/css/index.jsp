<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap-theme.min.css">
<script src="<%=basePath%>dist/js/jquery-3.1.1.min.js"></script>
<script src="<%=basePath%>dist/js/bootstrap.min.js"></script>
    <title>图书列表</title>
    <%--
	<style type="text/css">
		a:link, a:visited { color:#000; text-decoration:none; }
		a:hover, a:active { color:#000; text-decoration:underline; }
		a:HOVER{color:red;}		
		.br_TR{
 			background-color:expression(this.rowIndex%2==0?"#CCFFFF":"#FFFFCC");
 			cursor:hand;
		}
		.br_head{
			background-color:#DDFFCC;
		}			
	</style>
  --%>
  </head>  
  <body>
  <button type="button" class="btn btn-success">确定</button>
  <div align="center">
   	 <h3><font color="blue">图书信息列表</font></h3>
     <table width="620" class="table"> 
     	<tr>
     		<td align="right"><a href="addBook.jsp">增加图书</a></td>
 		</tr>
     </table>
     <table class="table table-striped">
     <tr>
     	<td>ISBN号</td>
        <td>书名</td>
        <td><a href="deleteBook">删除</a></td>
        <td>修改</td>
     </tr>
     
   <s:iterator value="list" >
	<tr>
     	<td><s:property value="ISBN"/></td>
        <td><s:property value="title"/></td>
        <td><a href="deleteBook">删除</a></td>
        <td>修改</td>
     </tr>
   </s:iterator> 
   
    </table>
   </div>
  </body>	
</html>