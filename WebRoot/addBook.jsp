
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <div class="modal fade" id="addBookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="addBookModalLabel"  >新增图书</h4>
      </div>
      <div class="modal-body">
		  <div class="addBook">
		  	<form class="form-horizontal" role="form" action="addBook" method="get">
		  	  
		  	  <div class="form-group">
			    <label for="inputTitle" class="col-sm-2 control-label">标题</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="book.title" placeholder="Title">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputAuthor" class="col-sm-2 control-label">作者</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="book.author" placeholder="Author">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputISBN" class="col-sm-2 control-label">ISBN</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="book.ISBN" placeholder="ISBN">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputPublisher" class="col-sm-2 control-label">出版商</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="book.publisher" placeholder="Publisher">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputDate" class="col-sm-2 control-label">出版日期</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="book.publishDate" placeholder="PublishDate">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPrice" class="col-sm-2 control-label">价格</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="book.price" placeholder="Price">
			    </div>
			  </div>			  
		  	</form>
		  	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" >重置</button>
        <button id="btn-submit" type="button" class="btn btn-primary" data-dismiss="modal">提交</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		$("#btn-submit").click(function(){
			if(validateAuthor(name)) {
				$.post();
			}
			else {
				append(obj);
			}
		});
	});
	
	var validateAuthor = function(name) {
		$.post(
					
		);
	};
	
	var validateInput = function(input) {
		
	};
</script>