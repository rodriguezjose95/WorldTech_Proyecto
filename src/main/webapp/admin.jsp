<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Login</title>
	<%@include file='layouts/layouts.jsp'%>
</head>
<body class="bg-light">
	<br><br><br><br><br>
		<div class="login-sistem">
			<div class="card bg-info">
				<div class="card card-header">
					<h3 class="text-white text-center">WorldTech Sistem</h3>
				</div>
				<div class="card card-body bg-white">
					<form action="" method="post" class="w-75 m-auto">
						<input type="text" class="form-control form-control-sm" name="usuario" placeholder="Usuario" style="margin-bottom: 10px;" required>
						<div class="input-group" style="margin-bottom: 10px;">
							<input type="password" class="form-control form-control-sm" name="password" id="password" placeholder="Contraseña" required style="position: relative;">
							<div class="input-group-prepend">
								<a type="button" class="btn-eyes fa fa-eye" id="btn-verpass"></a>
							</div>
						</div>
						<input type="submit" class="btn btn-info btn-sm" id="btnlogin" value="Entrar">
					</form>
				</div>
			</div>
		</div>
	
	<script type="text/javascript">
	$(document).ready(function(){	
		$('#btn-verpass').click(function(){
			if($(this).hasClass('fa fa-eye')){
				$('#password').removeAttr('type');
				$('#btn-verpass').addClass('fa-eye-slash').removeClass('fa-eye');
			}
			else{
				$('#password').attr('type','password');
				$('#btn-verpass').addClass('fa-eye').removeClass('fa-eye-slash');
			}
    	});
	});
	
</script>
</body>
</html>

