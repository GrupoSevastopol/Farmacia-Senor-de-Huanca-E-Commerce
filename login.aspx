<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Festacon.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio</a></li>
				<li class="active">Pagina de Inicio de sesion</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->


    <div class="login">
		<div class="container">
			<h2>Formulario de Inicio de sesion</h2>



            <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">

                <asp:Login ID="Login1" runat="server" CssClass="login-form-grids" TitleText="" TextLayout="TextOnTop" Width="300px" OnAuthenticate="Login1_Authenticate">
                    
					
                </asp:Login>

		
			</div>


            <h4>Para los clientes nuevos</h4>
            <p><a href="registered.aspx">Registrate aqui</a> (O) vuelve a <a href="index.aspx">Inicio<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
    
</asp:Content>
