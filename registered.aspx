<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="registered.aspx.cs" Inherits="Festacon.registered" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio</a></li>
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
				
                    <asp:TextBox  ID="txtDNI" runat="server" placeholder="DNI"></asp:TextBox>
					<asp:TextBox  ID="txtNombres" runat="server" placeholder="Nombres"></asp:TextBox>
					<asp:TextBox  ID="txtApellidos" runat="server" placeholder="Apellidos"></asp:TextBox>
					<asp:TextBox  ID="txtDireccion" runat="server" placeholder="Direccion" OnTextChanged="txtDireccion_TextChanged"></asp:TextBox>
					<asp:TextBox  ID="txtTelefono" runat="server" placeholder="Telefono"></asp:TextBox>
					<asp:TextBox  ID="txtCelular" runat="server" placeholder="Celular"></asp:TextBox>
					
				
				<div class="register-check-box">
					<div class="check">
						<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Subscribete</label>
					</div>
				</div>
				<h6>Informacion de cuenta</h6>
				
					<asp:TextBox  ID="txtCorreo" runat="server" placeholder="Correo Electronico"></asp:TextBox>
					<asp:TextBox  ID="txtContra" runat="server" placeholder="Contraseña"  type="password"></asp:TextBox>
					<asp:TextBox  ID="txtConfirmacion" runat="server" placeholder="Contraseña"  type="password"></asp:TextBox>
					<div class="register-check-box">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Acepto los terminos y condiciones</label>
						</div>
					</div>
					<asp:Button ID="btnRegistro" text="Registrarse" runat="server" OnClick="btnRegistro_Click"> </asp:Button>
				
			</div>
			<div class="register-home">
				<a href="index.aspx">Inicio</a>
			</div>
		</div>
	</div>
   
<!-- //register -->



</asp:Content>
