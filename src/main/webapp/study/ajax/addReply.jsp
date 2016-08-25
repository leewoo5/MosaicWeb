<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addReply.jsp</title>

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

</head>
<body>
<div class="panel panel-primary">
	<div class="panel-heading">
		<h1>댓글 추가</h1>
	</div>
		<div class="panel-body">
			<div>
				<label for="replytext">ReplyText : </label> <input
					class="form-control" type="text" id="replytext" />
			</div>
			<br>
			<div>
				<label for="replyer">Replyer : </label> <input class="form-control"
					type="text" id="replyer" value="USER01" />
			</div>
			<br>
			<button id="addReply" class="btn btn-primary">Add Reply</button>
		</div>
	</div>



<!-- 이벤트 컨트롤 -->
<script type="text/javascript">
	$('#addReply').on('click', function(){
		var bno = 1;
		var replytext = $('#replytext').val();
		var replyer = $('#replyer').val();
		
		alert("bno=" + bno + "replytext=" + replytext + "replyer=" + replyer);
		
		var options = {
			url : "/replies",
			type : "POST",
			contentType : "application/json",
			//headers : {
				//"Content-Type" : "application/json"  
			//},
			processData : false,
			//자바스크립트 객체가 아니라 json 스트링타입의 데이터가 넘어가야 하므로 json으로 변환 해준다. 
			data : JSON.stringify({
				bno : bno,
				replytext : replytext,
				replyer : replyer
			}),
			success : function(result) {
				console.log(result);
				
				if(result == "SUCCESS"){
					self.location = "/sboard/readPage?bno=1";
				}
				alert("result=" + result);
			}
		};
		
		$.ajax(options);
		
	});

</script>
	
</body>
</html>










































