  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  
     <table class="table table-hover" >
     	<tr>
     		<td align="right"><span id="ico-add" class="glyphicon glyphicon-plus" data-toggle="tooltip" data-placement="left" title="新增图书"></span></td>
 			<td align="right"><span id="ico-search" class="glyphicon glyphicon-search" data-toggle="tooltip" data-placement="left" title="按作者查找"></span></td>
 			<td align="right"><span id="ico-logout" class="glyphicon glyphicon-log-out" data-toggle="tooltip" data-placement="left" title="退出登录"></span></td>
 		</tr>
     </table>
     <script type="text/javascript">
		$(document).ready(function(){
			$("#ico-search").click(function(){
				$("#searchBookModal").modal("show");
			});
			$("#ico-add").click(function(){
				$("#addBookModal").modal("show");
			});
		});
     </script>