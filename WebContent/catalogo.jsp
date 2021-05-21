<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Productos"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Catalogo</title>
<%@include file='layouts/layouts.jsp'%>
</head>
<body>
	<%@include file='layouts/header.jsp'%>
	
	<div class="products fix-menu">
		<div class="container-products">
			<h1 class="lg-title">Computadoras de Escritorio</h1>
			<p class="texto-light">Disfruta de las mejores ofertas en todo Computadoras</p>

			<div class="product-items">
			
			<%
				ArrayList<Productos> lstProductos = (ArrayList<Productos>) request.getAttribute("lstProductos");
				if (lstProductos != null) {
					for (Productos x : lstProductos) {
			%>		
			
				<div class="product">
					<div class="product-content">
						<div class="product-img">
							<img src="img/COMPUTADORAS/Amd/pc-amd-r3.jpg" alt="sin imagen">
						</div>
						<div class="product-btns">
							<button type="button" class="btn-cart">
								Add to cart
								<span><i class="fas fa-plus"></i></span>
							</button>
							<button type="button" class="btn-buy">
								Buy Now
								<span><i class="fas fa-shopping-cart"></i></span>
							</button>
						</div>
					</div>
					<div class="product-info">
						<div class="product-info-top">
							<h2 class="sm-title"><%=x.getSubcategoria() %></h2>
							<div class="rating">
								<span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span>
							</div>
						</div>
						<a href="#" class="product-name"><%=x.getProducto() %></a>
						<p class="product-price">S/. <%=x.getPrecio_venta() %></p>
						<p class="product-price">S/. <%=x.getPrecio_final() %></p>
					</div>
					<div class="off-info">
						<h2 class="sm-title"><%=x.getDscto() %>% off</h2>
					</div>
				</div>
				
			<%			
					}
				}
			%>
				
			</div>
		</div>
	</div>
	
	<%@include file='layouts/footer.jsp'%>
</body>
</html>