<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Home</title>
<style type="text/css">
.jumbotron {
	margin-top:-3px;
	background-color: #f4511e;
	color: #fff;
	padding: 100px 25px;
	font-family: Montserrat, sans-serif;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}
.logo {
      color: #f4511e;
      font-size: 200px;
  }

</style>
</head>

<body>
<div class="jumbotron text-center">
  <h1>2st Project by Team 2</h1>
  <p>We provide blablabla</p>
  <form class="form-inline">
    <input type="text" class="form-control" size="50" placeholder="insert keyword" required>
    <button type="button" class="btn btn-danger">Subscribe</button>
  </form>
</div>
<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-9">
      <h2>About Team project</h2><br>
      <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt 
          ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
          laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
      	 sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      	 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur
      	 sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
      	 consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
      	 ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div class="col-sm-3">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

</body>
</html>
