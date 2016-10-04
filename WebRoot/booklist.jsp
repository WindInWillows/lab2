   <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <div class="showBook" align="center">
   	 <h3>图书信息列表</h3>
		<%@include file="menu.jsp" %>
     <table class="table table-striped table-hover " width="640">
     <thead>
     <tr>
     	<td>ISBN号</td>
        <td>书名</td>
        <td>查看详情</td>
        <td>删除</td>
        <td>修改</td>
     </tr>
     </thead>
     <tbody>
   <s:iterator value="list" >
	<tr>
     	<td><span ><s:property value="ISBN"/></span></td>
        <td><span data-toggle="tooltip" data-placement="left" title="查看图书"><s:property value="title"/></span></td>
        <td><span name="ico-detail" class="glyphicon glyphicon-zoom-in" data-toggle="tooltip" data-placement="left" title="查看图书"></span></td>
        <td><span name="ico-del" class="glyphicon glyphicon-remove" data-toggle="tooltip" data-placement="left" title="删除图书"></span></td>
        <td><span class="glyphicon glyphicon-edit" data-toggle="tooltip" data-placement="left" title="编辑图书"> </span></td>
     </tr>
   </s:iterator>
   </tbody>
    </table>
   </div>
   
<div class="alert alert-success alert-dismissible" role="alert" id="del-alert" style="display:none;" >
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Warning!</strong> The book has been deleted!
</div>

   <script type="text/javascript">
   	$(document).ready(function(){
   		$("span[name='ico-del']").click(function(){
   			var isbn = $(this).parent("td").prev().prev().prev().children("span").text();
   			var obj = $(this);
   			$.post("deleteBook",
				{
					bookisbn : isbn,
				},
				function(data,status){
					if(status == "success"){
						obj.parent().parent().remove();
						$("#del-alert").show();
					}
				}
			);
   		});
   		
   		$("span[name='ico-detail']").click(function() {
   			var isbn = $(this).parent("td").prev().prev().children("span").text();
   			window.location.href = "viewBookDetail?bookisbn="+isbn;
   		});
   	});

   </script>