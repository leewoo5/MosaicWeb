<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>myboard.jsp</title>
<!-- <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" /> -->
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" -->
<!-- 	rel="stylesheet" type="text/css" /> -->
<!-- <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script> -->
<!-- <script	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script> -->
<!-- <!-- Bootstrap 3.3.2 JS -->
<!-- <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> -->
</head>
<body>

<form id='registerForm' method="post">
	<div class="panel-body">
		<div class="form-group">
			<label for="inputTitle">Title</label>
			<input id="inputTitle" type="text" name='title' class="form-control" placeholder="Enter Title">
		</div>
		<div class="form-group">
			<label for="inputContent">Content</label>
			<textarea id="inputContent" class="form-control" name="content"	rows="20" placeholder="Enter ..."></textarea>
		</div>
		<div class="form-group">
			<label for="inputWriter">Writer</label>
			<input id="inputWriter"	type="text" name="writer" class="form-control">
		</div>
	</div>
	<div class="box-footer">
		<div>
			<hr>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
	</form>

<script type="text/javascript">
$("#registerForm").submit(
		function(event) {
			event.preventDefault();
			
			var that = $(this);
			
			var str = "";
			
			that.append(str);
			
			that.get(0).submit();
			
			alert(that);
		});
	
</script>

</body>
</html>
























