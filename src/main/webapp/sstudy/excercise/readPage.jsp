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

<div class="container">
  <div class="panel panel-primary">
		<div class="panel-heading">
			<h2>게시물 작성</h2>
		</div>
		<div class="panel-body">
			<label for="title">제목 입력</label>
			<input id="title" class="form-control"/>
		</div>
		<div class="panel-body">
			<label for="text">내용 입력</label>
			<textarea id="text" class="form-control" rows="20" ></textarea>
		</div>
		<div class="panel-footer">
			<button class="btn-primary">Summit</button>
		</div>
	</div>
</div>
</body>
</html>