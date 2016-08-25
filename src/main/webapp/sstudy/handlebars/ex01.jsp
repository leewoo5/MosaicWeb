<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 핸들바 이해하기 -->
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex01.jsp</title>

<!-- handlebars -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!-- 2. 수정하고싶은 부분을 템플릿으로 지정한다. -->
<!-- 이번 연습에서는 버튼 클릭으로 템플릿 부분을 화면에 추가하는 예제를 연습한다. -->
<!-- 폰트 어섬과 제이쿼리 사용했다. -->
<script id="mytemplate" type="text/x-handlebars-template">
	<li><i class="fa fa-backward fa-spin"></i> {{empno}} {{ename}} {{loc}}</li>
</script>

</head>
<body>
<!--3. 버튼을 만든다 css는 부트스트랩을 사용한다.  -->
	<button id="btn1" class="btn btn-primary">append</button>

<!--4. 화면에 반복출력하기 위해서 리스트를 만들어준다.  -->
<ol id="emps"></ol>


<script type="text/javascript">
// 	5. 미리 만들어 놓은 버튼에 이벤트를 설정한다.
	$('#btn1').on('click', function(){
	
// 	6. 제이쿼리로 템플릿을 찾아서 변수에 저장한다.
	var template = $('#mytemplate');
// 	7. 템플릿을 컴파일 해준다. 템플릿은 스크립트 코드이므로 html로 변환한 템플릿을 컴파일해준다.
	var ctemplate = Handlebars.compile(template.html());
// 	8. 템플릿에 입력할 데이터를 지정한다.
	var emp = {
		empno : 10,
		ename : "hong",
		loc   : "seoul"
	};
// 	9. 템플릿에 데이터를 넣어준다.
	var html = ctemplate(emp);
	
// 	$('#emps').html(html);
	$('#emps').append(html);
	});
	
</script>
</body>
</html>










































