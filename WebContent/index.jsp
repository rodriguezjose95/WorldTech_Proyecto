<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido a WorldTech</title>
<%@include file='layouts/layouts.jsp'%>
</head>
<body>
	<%@include file='layouts/header.jsp'%>
	<div id="carouselExampleIndicators" class="carousel slide fix-menu"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100"
					src="img/Encabezado/banner-weblicencias.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/Encabezado/bannner-xiaomi.png"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/Encabezado/banner-consolas.jpg"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Atras</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Siguiente</span>
		</a>
	</div>

	

	<%@include file='layouts/footer.jsp'%>
</body>
</html>