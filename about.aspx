<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Festacon.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio</a></li>
				<li class="active">Acerca de nosotros</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- about -->
	<div class="about">
		<div class="container">
			<h3 class="w3_agile_header">Sobre Nosotros</h3>
			<div class="about-agileinfo w3layouts">
				<div class="col-md-8 about-wthree-grids grid-top">
					<h4>Farmacia Señor de Huanca </h4>
					<p class="top">Somos una cadena de farmacias comercializadora de medicamentos, higiene, cuidado personal y productos de belleza</p>
					<p>Nos ofrecemos a brindarle un buen servicio para su salud, con productos de buen calidad. </p>		
					<div class="about-w3agilerow">
						<div class="col-md-4 about-w3imgs">
							<img src="https://diariocorreo.pe/resizer/jn68pV1bHJBPxI0lEAZ896Ab36M=/580x330/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/TFCN4UY5DNHXTOB3HHVXUWVY3E.jpg" alt="" class="img-responsive zoom-img"/>
						</div>
						<div class="col-md-4 about-w3imgs">
							<img src="https://atalayar.com/sites/default/files/styles/foto_/public/noticias/Atalayar_Farmacia%20con%20medicamentos%20PORTADA.jpg?itok=F2Y4oZvv" alt=""  class="img-responsive zoom-img"/>
						</div>
						<div class="col-md-4 about-w3imgs">
							<img src="http://www.auladelafarmacia.com/media/auladelafarmacia/images/2019/06/26/2019062609021048880.jpg" alt=""  class="img-responsive zoom-img"/>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 about-wthree-grids">
					<div class="offic-time">
						<div class="time-top">
							<h4>Presentacion :</h4>
						</div>
						<div class="time-bottom">
							<h5>Señor de Huanca </h5>
						</div>
					</div>
					<div class="testi">
						<h3 class="w3_agile_header">Testimonios</h3>
						<!--//End-slider-script -->
						<script src="js/responsiveslides.min.js"></script>
						 <script>
							// You can also use "$(window).load(function() {"
							$(function () {
							  // Slideshow 5
							  $("#slider5").responsiveSlides({
								auto: true,
								pager: false,
								nav: true,
								speed: 500,
								namespace: "callbacks",
								before: function () {
								  $('.events').append("<li>before event fired.</li>");
								},
								after: function () {
								  $('.events').append("<li>after event fired.</li>");
								}
							  });
						
							});
                         </script>
					
				</div>	
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- about-slid -->
	<div class="about-slid agileits-w3layouts"> 
		<div class="container">
			<div class="about-slid-info"> 
				<h2>Farmacia Señor de Huanca</h2>
                <p>Llamenos al numero 987654321,
					o hablemos al Email SR.HUANCA@gmail.com
                </p>
				<p></p>
			</div>
		</div>
	</div>
	<!-- //about-slid -->
	<!-- about-team -->
	
	
	


    </div>
</asp:Content>
