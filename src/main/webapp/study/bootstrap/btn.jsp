<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 핸들바 이해하기 -->
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex01.jsp</title>

<!-- bootstrap -->
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- handlebars -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- fontawsome -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript">
$(document).ready(function(){
	$('.btn').on('click', function(){
		$('#result').html($(this).html());
		
// 		event.preventDefault();
	});
})

</script>

</head>
<body>
<p id="result">

</p>
<ul>
	<li><button class="btn btn-default">default</button></li>
	<li><button class="btn btn-primary">primary</button></li>
	<li><button class="btn btn-group">group</button></li>
	<li><button class="btn btn-info">info</button></li>
	<li><button class="btn btn-warning">warning</button></li>
	<li><button class="btn btn-toolbar">toolbar</button></li>
	<li><a href="/user/login" class="btn btn-success">success</a></li>

</ul>
	
</body>
</html>










































