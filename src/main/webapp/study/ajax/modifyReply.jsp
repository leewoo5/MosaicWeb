<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>modifyReply.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://cfs7.tistory.com/image/20/tistory/2008/06/05/13/09/4847670792706" alt="1" width="460" height="345">
        <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>
      </div>
      </div>

      <div class="item">
        <img src="http://cfile7.uf.tistory.com/image/131AE4504D0714A41B7804" alt="2" width="460" height="345">
        <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>
      </div>
      </div>
    
      <div class="item">
        <img src="http://cfile9.uf.tistory.com/image/145AB6334CA9FE498D5530" alt="3" width="460" height="345">
        <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>
      </div>
      </div>

      <div class="item">
        <img src="http://blog.joins.com/usr/b/i/biolkka/1/%EB%B3%B4%EA%B0%95%EC%B2%9C%EC%8B%9C%EB%AF%BC%EA%B3%B5%EC%9B%90.JPG" alt="4" width="460" height="345">
        <div class="carousel-caption">
        <h3>Flowers</h3>
        <p>Beatiful flowers in Kolymbari, Crete.</p>
      </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<div class="panel panel-primary">
	<div class="panel-heading">
		<h1>댓글 추가</h1>
	</div>
	<div class="panel-body">
		<div class="form-group">
			<label for="replytext">replytext :</label>
			<input class="form-control" type="text" id="replytext"><br>
		</div>
		
		<div class="form-group">
			<label for="replyer">replyer :</label>
			<input class="form-control" type="text" id="replyer" value="USER01"/>
		</div>
		
		<button id="addReply" class="btn btn-primary">add Reply</button>
	</div>
</div>

<div id="reply" class="panel panel-info">
	<div class="panel-heading">
		<button id="replylist" class="btn btn-primary">댓글 조회</button>
	</div>
	<div class="panel-body">
	
	</div>
	
	<div class="panel-footer text-center">
		<ul class="pagination">
		
		</ul>
	
	</div>

</div>

<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<span class="close" data-dismiss="modal">&times;</span>
				<h2 class="modal-title">댓글 수정 & 삭제</h2>
			</div>
			<div class="modal-body">
				<input id="replyprompt" class="form-control"/>
			</div>
			<div class="modal-footer">
				<div class="btn-group">
					<button id="modify" class="btn btn-primary">수정</button>
					<button id="delete" class="btn btn-warning">삭제</button>
					<button class="btn btn-info" data-dismiss="modal">취소</button>
				</div>
			</div>		
		</div>
	</div>
</div>


<script id="mytemplate" type="text/x-handlebars-template">
	<ul class="list-group">
		{{#each .}}
		<li class="list-group-item">
			 [{{rno}}] {{replyer}} <i class="fa fa-backward fa-spin"></i> {{replytext}}
			 <button class="btn btn-info modify" data-rno="{{rno}}" 
										  		 data-bno="{{bno}}" 
										  		 data-replytext="{{replytext}}"
												 data-toggle="modal"
												 data-target="#myModal"	
												 >
					Modify 
			 </button> 
		</li>
		{{/each}}
	<ul>
</script>

<script type="text/javascript">
	var page = 1;
	
	
	function printBody(list) {
		console.log("printBody(...)...")
		console.dir(list);
		
		//var str = JSON.stringify(list);
		var template = Handlebars.compile($('#mytemplate').html());
		var str = template(list);
		
		$('#reply .panel-body').html(str);
		
		$('.modify').on('click', function () {
			var rno= $(this).attr("data-rno");
			var replytext= $(this).attr("data-replytext");
			$('#replyprompt').val(replytext)
							 .attr('data-rno', rno);
		});
		
	}
	
	function printFooter(pageMaker) {
		console.log("printFooter(...)...")
		console.dir(pageMaker);
		
		//var str = JSON.stringify(pageMaker);
		var str = "";
		
		if (pageMaker.prev)
			str += '<li><a href="#">' + (pageMaker.startPage - 1) + "prev</a></li>";
		
		for(var i=pageMaker.startPage; i<=pageMaker.endPage; i++) {
			str += '<li><a href="#" data-num="' + i + '">' + i + "</a></li>";
		}
		
		if (pageMaker.next)
			str += '<li><a href="#">' + (pageMaker.endPage + 1) + "next</a></li>";
		
		$('#reply .panel-footer .pagination').html(str);
		
		$('.pagination li > a').on('click', function(event) {
			event.preventDefault();
			
			var num = $(this).attr('data-num');
			console.log("num=" + num);
			
			page = num;
			getPage(page);
			
		});
		
	}
	
	function getPage(page) {
		
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
		
		alert("bno=" + bno + ", replytext=" + replytext + ", replyer=" + replyer);
		var options = {
			url : "/replies",
			type : "POST",
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
				console.log(result);
				if (result == "SUCCESS") {
					//self.location = "/sboard/readPage?bno=1";
					getPage(1);
				}
				
				//alert("result = " + result);
			}
		};
		
		$.ajax(options);
	});
	
	$('#replylist').on('click', function() {
		//alert("replyelist clicked...");
		getPage(page);
	});
	
	$('#myModal #modify').on('click', function() {
		var rno = $('#replyprompt').attr('data-rno');
		var replytext = $('#replyprompt').val();
		console.log("rno=" + rno + ", replytext=" + replytext);
		
		$.ajax({
			type : "PUT",
			url : "/replies/" + rno,
			headers : {
				"Content-Type" : "application/json" 				
			},
			processData : false,
			data : JSON.stringify({
				replytext : replytext
			}),
			success : function(result) {
				if (result == "SUCCESS")				
					getPage(page);
				
				alert(result);
			}
		});
		
		$('#myModal').modal('hide');
	});
	
	$('#myModal #delete').on('click', function() {
		var rno = $('#replyprompt').attr('data-rno');
		console.log("rno=" + rno);
		
		$.ajax({
			type : "DELETE",
			url : "/replies/" + rno,
			headers : {
				"Content-Type" : "application/json" 				
			},
			success : function(result) {
				if (result == "SUCCESS")				
					getPage(page);
				
				alert(result);
			}
		});		
		
		$('#myModal').modal('hide');
	})
	
	
	
</script>

</body>
</html>