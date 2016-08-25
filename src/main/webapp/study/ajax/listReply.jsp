<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>listReply.jsp</title>

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
			<label for="replytext">ReplyText : </label> 
			<input class="form-control" type="text" id="replytext" />
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
	
<div id="reply" class="panel panel-info">
	<div class="panel-heading">
		<button id="replylist" class="btn-primary">댓글조회</button>
	</div>
	<div class="panel-body">
	</div>
	<div class="panel-footer text-center">
		<ul class="pagination">
			
		</ul>
	</div>
</div>

<!-- 5. 화면에 출력할 Handlebars 템플릿을 정의한다. -->
<script id="mytemplate" type="text/tm">
	<ul class="list-group">
		{{#each .}}
			<li class="list-group-item">
				[{{rno}}]&nbsp;{{replyer}}&nbsp;<i class="fa fa-backward fa-spin"></i>&nbsp;{{replytext}}
				<button class="btn btn-info modify" data-rno="{{rno}}"
											data-bno="{{bno}}"
											data-replytext="{{replytext}}">
				Modify
				</button> 
			</li>
		{{/each}}
	</ul>
</script>

<!-- 이벤트 컨트롤 -->
<script type="text/javascript">
	
	//2. 페이지 번호를 1번으로 정해준다. 
	var page = 1;
	
	//4. printBody() 함수를 정의해준다.
	//   페이지 출력은 Handlebars를 이용한다.
	function printBody(list) {
		console.log("printBody clicked..")
		console.dir(list);
		
// 		var str = JSON.stringify(list);
		var ctemplate = Handlebars.compile($('#mytemplate').html());
		var str = ctemplate(list); 
		
		$('#reply .panel-body').html(str);
		
		$('.modify').on('click', function(){
			var str  = "rno=" + $(this).attr("data-rno");
			 	str += "bno=" + $(this).attr("data-bno");
			 	str += "replytext=" + $(this).attr("data-replytext");
			
			alert(str);
		});
	}
	function printFooter(pageMaker) {
		console.log("printFooter clicked..")
		console.dir(pageMaker);
		
// 		var str = JSON.stringify(pageMaker);
		var str =" ";
		
		pageMaker.prev = true;
		if(pageMaker.prev)
			str += '<li><a href="#">' + (pageMaker.startPage - 1) + "prev</a></li>";
		
		for(var i=pageMaker.startPage; i<=10; i++){
// 		for(var i=pageMaker.startPage; i<pageMaker.endPage; i++){
			str += '<li> <a href="#">' + i + '</a></li>';
		}
		
		pageMaker.next = true;
		if(pageMaker.next)
			str +=  '<li> <a href="#">' + (pageMaker.endPage + 1) + "next</a></li>";

		$('#reply .panel-footer .pagination').html(str);
	}
	
	//3. getPage()함수를 정의해준다.
	//   
	function getPage(page){
		
		$.getJSON("/replies/1/" + page + "?xxx=" + new Date().getTime(), function(result) {
			console.dir(result);
			
			printBody(result.list);
			printFooter(result.pageMaker);
		});
	
	}

	$('#addReply').on('click', function() {
		var bno = 1;
		var replytext = $('#replytext').val();
		var replyer = $('#replyer').val();

		alert("bno=" + bno + "replytext=" + replytext + "replyer=" + replyer);

		var options = {
			url : "/replies",
			type : "POST",
// 			contentType : "application/json",
			headers : {
			"Content-Type" : "application/json"  
			},
			processData : false,
			data : JSON.stringify({
				bno : bno,
				replytext : replytext,
				replyer : replyer
			}),
			success : function(result) {
				console.log(result)

				if (result == "SUCCESS") {
// 					self.location = "/sboard/readPage?bno=1";
				}
				alert("result=" + result);
			}
		}

		$.ajax(options);

	});
	
	/*
	 * 1. 댓글조회 버튼에 getPage()함수로 댓글을 불러와서 화면에 출력하는 이벤트를 건다.
	 *    이때 출력할 페이지는 댓글이 적기 때문에 1번째 페이지로 정해져있는 상황이므로 페이지 번호는 변수를 만들어 getPage()함수의 인자로 넣어준다.
	 */	  
	$('#replylist').on('click', function() {
		alert("replylist clicked..");
		getPage(page);
	});
</script>
	
</body>
</html>










































