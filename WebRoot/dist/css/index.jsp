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
    <title>ͼ���б�</title>
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
  <button type="button" class="btn btn-success">ȷ��</button>
  <div align="center">
   	 <h3><font color="blue">ͼ����Ϣ�б�</font></h3>
     <table width="620" class="table"> 
     	<tr>
     		<td align="right"><a href="addBook.jsp">����ͼ��</a></td>
 		</tr>
     </table>
     <table class="table table-striped">
     <tr>
     	<td>ISBN��</td>
        <td>����</td>
        <td><a href="deleteBook">ɾ��</a></td>
        <td>�޸�</td>
     </tr>
     
   <s:iterator value="list" >
	<tr>
     	<td><s:property value="ISBN"/></td>
        <td><s:property value="title"/></td>
        <td><a href="deleteBook">ɾ��</a></td>
        <td>�޸�</td>
     </tr>
   </s:iterator> 
   
    </table>
   </div>
  </body>	
</html>