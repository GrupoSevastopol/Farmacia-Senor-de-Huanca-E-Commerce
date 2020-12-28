<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Festacon.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio</a></li>
				<li class="active">Productos</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!--- products --->
	<div class="products">
		<div class="container">
			<div class="col-md-4 products-left">
				<div class="categories">
					<h2>Categorias</h2>
					<ul class="cate">
						<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Acidez</a></li>
							<!--
							<ul>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Cuts & Sprouts</a></li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Flowers</a></li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fresh Herbs & Seasonings</a></li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fresh Vegetables</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>International Vegetables</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Organic Fruits & Vegetables</a></li>
							</ul>
							-->
						<li><a href="catAnalgesico.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Analgesicos</a></li>
							<!--
							<ul>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Dals & Pulses</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Dry Fruits</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Edible Oils & Ghee</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Flours & Sooji</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Masalas & Spices</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Organic Staples</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Rice & Rice Products</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Salt, Sugar & Jaggery</a></li>
							</ul>
							-->
						<li><a href="catAntinflamatorio.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Antinflamatorios</a></li>
							<!--
							<ul>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Baby Care</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Cosmetics</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Deos & Perfumes</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Skin Care</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sanitary Needs</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Oral Care</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Personal Hygiene</a> </li>
								<li><a href="products.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Shaving Needs</a></li>
							</ul>
							-->
						<li><a href="catCongestion.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Congestion nasal</a></li>
						<li><a href="catPreparacion.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Preparaciones para tos y resfriado</a></li>
						<li><a href="catProblemasEstomacales.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Problemas estomacales</a></li>
					</ul>
				</div>																																												
			</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>


	 <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron"  style="background-color:white">
				<table class="table-responsive">
				<tbody>     
                    <tr>
                        <td>
                            <h3>Lista de Productos</h>                                                       
                            <asp:Label ID="lblAgregado" runat="server" Text="Label"></asp:Label>
                        </td>
                    
                    </tr>               
					<tr>
						<td>							

						    <asp:DataList ID="DataList1" runat="server" DataKeyField="codproducto" DataSourceID="SqlDataSource1" RepeatColumns="3" CssClass="table table-responsive" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                                <ItemTemplate>
                                   
                                    <br />
                                    <br />
                                    Código :
                                    <asp:Label ID="codproductoLabel" runat="server" Text='<%# Eval("CodProducto") %>' />
                                    <br />
                                    NOMBRE :
                                    <asp:Label ID="desproductoLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                    <br />
                                    PRECIO :
                                    <asp:Label ID="codcategoriaLabel" runat="server" Text='<%# Eval("Precio") %>' />
                                    <br />
                                    STOCK :
                                    <asp:Label ID="preproductoLabel" runat="server" Text='<%# Eval("Stock") %>' />
                                    <br />
                                    DESCRIPCION :
                                    <asp:Label ID="canproductoLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                    <br />
                                    REFERENCIA:
                                    <asp:Label ID="referencia" runat="server" Text='<%# Eval("Referencia") %>' />
                                    <br />
									 <asp:Image ID="Imagen" width="140" height="120" runat="server" src='<%#Eval("Imagen") %>' CssClass="img-fluid" />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CommandName="Seleccionar" Text="Agregar al Carrito" CssClass="btn btn-success" OnClick="Button1_Click" />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>

						    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security=true" SelectCommand="SELECT * FROM [TProducto]"></asp:SqlDataSource>

						</td>
                        						
					</tr>

					
				</tbody>
			</table>
			</div>
		</div>
	</div>
</div>



</asp:Content>


