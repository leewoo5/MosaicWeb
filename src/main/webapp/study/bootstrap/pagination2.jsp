<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 핸들바 이해하기 -->
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pagination.jsp</title>

<!-- bootstrap -->
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- handlebars -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- fontawesome -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />

</head>
<body>

	<script id="template" type="text/mytemplate">

		<li><a href="/sboard/list?page=1">&lt;&lt;</a></li>
		
		{{#each .}}
			<li><a href="/sboard/list?page={{num}}">{{num}}</a></li>
		{{/each}}

		<li><a href="/sboard/list?page=1">&gt;&gt;</a></li>

	</script>
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		
		var ctemplate = Handlebars.compile($('#template').html());
		var pages = [
		             {num : 1},
		             {num : 2},
		             {num : 3},
		             {num : 4},
		             {num : 5},
		             {num : 6},
		             {num : 7},
		             {num : 8},
		             {num : 9},
		             {num : 10}
		             ];
		var html = ctemplate(pages);
		console.log(ctemplate());
		
		$('.pagination').html(html);
	});
	
	</script>
	
<div class="text-center">
	<ul class="pagination">
	
	</ul>
</div>	

	
</body>
</html>










































