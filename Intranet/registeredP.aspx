<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MainP.Master" AutoEventWireup="true" CodeBehind="registeredP.aspx.cs" Inherits="Festacon.Intranet.registeredP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="indexP.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio</a></li>
				<li class="active">Pagina de registro</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
		<div class="container">
			<h2>Registrate aqui</h2>
			<div class="login-form-grids">
				<h5>Informacion de perfil</h5>
				<form action="#" method="post">
					<input type="text" placeholder="Primer nombre..." required=" " >
					<input type="text" placeholder="Segundo nombre..." required=" " >
				</form>
				<div class="register-check-box">
					<div class="check">
						<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Subscribete</label>
					</div>
				</div>
				<h6>Informacion de cuenta</h6>
					<form action="#" method="post">
					<input type="email" placeholder="Correo electronico" required=" " >
					<input type="password" placeholder="Contraseña" required=" " >
					<input type="password" placeholder="Confirmacion de contraseña" required=" " >
					<div class="register-check-box">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Acepto los terminos y condiciones</label>
						</div>
					</div>
					<input type="submit" value="Registrarse">
				</form>
			</div>
			<div class="register-home">
				<a href="indexP.aspx">Inicio</a>
			</div>
		</div>
	</div>
<!-- //register -->

</asp:Content>
