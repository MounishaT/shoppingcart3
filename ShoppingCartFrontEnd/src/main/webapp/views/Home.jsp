
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>vero chic</title>
<style>
</style>

</head>

<style>

</style>
	<div>
		<div data-role="header" data-position="fixed">
			<h1><marquee>Welcome to Vero Chic</marquee></h1>
			${SuccessMessage}
			<table>
				

				<%-- <tr>
					<c:if test="${loggedOut==true}">
					</c:if>
					<td>${logOutMsg}</td>
				</tr> --%>
				<%-- 
				<tr>
					<c:if test="${not empty cartSize}">
						<td align="right"><a href="myCart">My cart</a>(${cartSize})</td>
					</c:if>
				</tr> --%>

			</table>
		</div>

		<%-- <div >
			<ul id=menu>
				<c:if test="${not empty List}">
					<c:forEach items="${category.List}" var="category ">
						<li><a href="${category.name}">${category.name}</a>
						
							
					</c:forEach>
				</c:if>
			</ul>
			<br> <br> <br> --%>
		<%-- --
			<div>
				<c:if test="${!empty selectedProduct.name}">
					<table>
						<tr>
							<th align="left" width="80">Product ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Product Description</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="200">Product Category</th>
							<th align="left" width="200">Product Supplier</th>
						</tr>
						<tr>
							<td align="left">${SelectedProduct.id}</td>
							<td align="left">${SelectedProduct.name}</td>
							<td align="left">${SelectedProduct.description}</td>
							<td align="left">${SelectedProduct.price}</td>
							<td align="left">${SelectedProduct.category.name}</td>
							<td align="left">${SelectedProduct.supplier.name}</td>
						</tr>
					</table>
				</c:if>
			</div>
 --%>

		


		
	
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Vero Chic</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-fire">VeroChic</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home"><span class="glyphicon glyphicon-home">Home</a></li>
      
       <li><a href="AboutUs"><span class="glyphicon glyphicon-envelope">AboutUs</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-phone-alt">Contact</a></li>
       <li><a href="#"><span class="glyphicon glyphicon-tags">Brands</a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
     <tr>
					<c:choose>
						<c:when test="${empty loggedInUser}">
							<td ><a href="Login"><span class="glyphicon glyphicon-log-in"></span><button type="button" class="btn btn-primary">Login</button></a></td>&nbsp;&nbsp;
							<td><a href="Registration"><span class="glyphicon glyphicon-user"></span><button type="button" class="btn btn-primary">Register</button></a></td>
						</c:when>

						<c:when test="${not empty loggedInUser}">
							<td>Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout"><button type="button" class="btn btn-primary">Logout</button></a></td>
						</c:when>
					</c:choose>
				</tr>
				
    </ul>
    
  </div>
  
  
</nav>
  ${message}

		<div id="Registration">

			<c:if test="${userClickedRegisterHere==true}">
				<jsp:include page="Registration.jsp"></jsp:include>
			</c:if>
		</div>


		${failureMessage}
		<div id="Login">

			<c:if test="${userClickedLoginHere==true}">
				<jsp:include page="Login.jsp"></jsp:include>
			</c:if>
		</div>
<div class="container">
  
</div>
<div id="admin">
			<c:if test="${isAdmin==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
			
			</c:if>
			<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
									<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/category.jsp" %>		
			</c:if>
			</div>
				
			<div id="product">
			<c:if test="${isAdminClickedproducts==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/Product.jsp" %>	
			</c:if>
			</div>			
			
			<div id="suppliers">
			<c:if test="${isAdminClickedsuppliers==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/supplier.jsp" %>	
			</c:if>
			</div>

		</div>
	<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>
</head>
<body>
<c:if test="${carousel==true }"></c:if>
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
        <img src="G:\pics\third.gif" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="G:\pics\start.gif" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="G:\pics\first.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="G:\pics\second.jpg" alt="Flower" width="460" height="345">
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

</body>
</html>

	
</body>
</html>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>

<div class="w3-container">
 
</div>

<div class="w3-container w3-teal">
  
  <p><a href="#" class="button">Privacy</a>
  <a href="#" class="button">Terms</a>
  <a href="#" class="button">Help</a>
  <a href="#" class="button">Track-Order</a>
  <a href="#" class="button">Send-Feedback</a></p>
</div>

</body>
</html>


