<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file='layouts/layouts.jsp'%>
<title>Contactenos</title>
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
				<img class="d-block w-100" src="img/encabezados/banner-weblicencias.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/encabezados/bannner-xiaomi.png"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/encabezados/banner-consolas.jpg"
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


<div class="row" id="contact">
<div class="container mt-5" >

    <div class="row" style="height:550px;">
      <div class="col-md-6 maps" >
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7803.71071161229!2d-77.04629162781997!3d-12.053471523521855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8c66039e27f%3A0xf87b9752d3eeb99c!2sGaleria%20COMPUPLAZA!5e0!3m2!1ses-419!2spe!4v1621369947770!5m2!1ses-419!2spe" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
      <div class="col-md-6">
        <h2 class="text-uppercase mt-3 font-weight-bold text-white">CONTACTENOS</h2>
        <form action="">
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <input type="text" class="form-control mt-2" placeholder="Nombres" required>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <input type="text" class="form-control mt-2" placeholder="Apellidos" required>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <input type="email" class="form-control mt-2" placeholder="Email" required>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <input type="number" class="form-control mt-2" placeholder="Telefono" required>
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Comentario" rows="3" required></textarea>
              </div>
            </div>
            <div class="col-12">
            <div class="form-group">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                <label class="form-check-label" for="invalidCheck2">
                  Aceptar Terminos y Condiciónes
                </label>
              </div>
            </div>
            </div>
            <div class="col-12">
              <button class="btn btn-light" type="submit">Enviar</button>
            </div>
          </div>
        </form>
        
        <div class="text-white">
        <h2 class="text-uppercase mt-4 font-weight-bold">WorldTech</h2>

        <i class="fas fa-phone mt-3"></i> <a href="tel:+">01 2345678</a><br>
        <i class="fa fa-envelope mt-3"></i> <a href="">info@worldtech.pe</a><br>
        <i class="fas fa-globe mt-3"></i>Av. Inca Garcilaso de la Vega 1251, Cercado de Lima 15001<br>
        <div class="my-4">
        <a href=""><i class="fab fa-facebook fa-3x pr-4"></i></a>
        <a href=""><i class="fab fa-linkedin fa-3x pr-4"></i></a>
        <a href=""><i class="fab fa-telegram fa-3x"></i></a>
        </div>
        </div>
      </div>

    </div>
</div>
</div>


<%@include file='layouts/footer.jsp'%>

</div>

</body>
</html>