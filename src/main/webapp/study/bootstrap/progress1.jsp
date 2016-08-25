<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 핸들바 이해하기 -->
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>progress1.jsp</title>

<!-- bootstrap -->
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- handlebars -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- fontawsome -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function(){
		var template = $('#template');
		var ctemplate = Handlebars.compile(template.html());
		var num;
		var n = 70;
		num = {num : n};
		var result = ctemplate(num);
		$('.progress').html(result);
		
	$('#up').on('click', function(){
		if (n < 100) {
			n= n+10;
			num={num : n }
			var result = ctemplate(num);
			$('.progress').html(result);
		}if(n==100){
			alert("완료 되었습니다.");
		}
	});
	
	$('#down').on('click', function(){
		if (n>0) {
			n= n-10;
			num={num : n }
			var result = ctemplate(num);
			$('.progress').html(result);
		}if(n==0){
			alert("종료 되었습니다.");
		}
	});
	
	
});

</script>

</head>
<body>
<script id="template" type="text/tm">
  <div class="progress-bar" style="width:{{num}}%"></div>
</script>

	<div class="progress">
    	<span class="sr-only">70% Complete</span>
	</div>

	<div class="btn-group">
  		<button id="up" class="btn-info">증가</button>
  		<button id="down" class="btn-success">감소</button>
    </div>
</body>
</html>










































