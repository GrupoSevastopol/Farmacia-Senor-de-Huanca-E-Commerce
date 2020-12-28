<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MainP.Master" AutoEventWireup="true" CodeBehind="productsP.aspx.cs" Inherits="Festacon.Intranet.productsP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="indexP.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio</a></li>
				<li class="active">Productos</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!--- products --->
	<!--
	<div class="products">
		<div class="container">
			<div class="col-md-4 products-left">
				<div class="categories">
					<h2>Categorias</h2>
					<ul class="cate">
						<li><a href="productsP.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Acidez</a></li>
						-->	
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
						<!--<li><a href="catAnalgesicoP.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Analgesicos</a></li>-->
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
						<!--<li><a href="catAntinflamatorioP.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Antinflamatorios</a></li>-->
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
						<!--
						<li><a href="catCongestionP.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Congestion nasal</a></li>
						<li><a href="catPreparacionP.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Preparaciones para tos y resfriado</a></li>
						<li><a href="catProblemasEstomacalesP.aspx"><i class="fa fa-arrow-right" aria-hidden="true"></i>Problemas estomacales</a></li>
					</ul>
				</div>																																												
			</div>
			<div class="col-md-8 products-right">
				<div class="products-right-grid">
					<div class="products-right-grids">
						<div class="sorting">
							<select id="country" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Orden por defecto</option>
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Ordenar por popularidad</option> 
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Ordenar por rating</option>					
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Ordenar por precio</option>								
							</select>
						</div>
						<div class="sorting-left">
							<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Items por pagina 9</option>
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Items por pagina 18</option> 
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Items por pagina 32</option>					
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Todo</option>								
							</select>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="agile_top_brands_grids">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img class="img-responsive" title=" " alt=" " src="https://www.perushop.com.pe/wp-content/uploads/2020/04/334030L-300x300.png"></a>		
												<p>Leche Magnesia Phillips 425 Mg/5 Ml Suspensión Oral</p>-->
												<!--<h4>S/17.10 <span>S/55.00</span></h4>-->
											<!--</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="Fortune Sunflower Oil">
														<input type="hidden" name="amount" value="35.99">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<asp:Button runat="server" type="submit" name="submit" Text="Añadir al carro" class="button" OnClick="Unnamed1_Click"></asp:Button>
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					-->
					<!--<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img class="img-responsive" title=" " alt=" " src="https://dcuk1cxrnzjkh.cloudfront.net/imagesproducto/422980L.jpg"></a>		
												<p>Magal II Suspensión Oral </p>-->
												<!--<h4>S/15.10 <span>S/45.00</span></h4>-->
											
										<!--</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="basmati rise">
														<input type="hidden" name="amount" value="30.99">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<asp:Button runat="server" type="submit" name="submit" Text="Añadir al carro" class="button"></asp:Button>
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					-->
	<!--
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img src="https://dcuk1cxrnzjkh.cloudfront.net/imagesproducto/003613L.jpg" alt=" " class="img-responsive"></a>
												<p>Nocidex 400mg-30mg/ 5mL Suspensión</p>-->
												<!--<h4>S/22.20 span>S/105.00</span></h4>-->
											<!--</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="Pepsi soft drink">
														<input type="hidden" name="amount" value="80.00">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<asp:Button runat="server" type="submit" name="submit" Text="Añadir al carro" class="button"></asp:Button>
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
												-->
						<!--<div class="clearfix"> </div>
				</div>
				<div class="agile_top_brands_grids">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img class="img-responsive" title=" " alt=" " src="https://dcuk1cxrnzjkh.cloudfront.net/imagesproducto/132019L.jpg"></a>		
												<p>Sal de Andrews Efervescente </p>-->
												<!--<h4>S/48.00 <span>S/55.00</span></h4><!--
											<!--</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="Fortune Sunflower Oil">
														<input type="hidden" name="amount" value="35.99">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<asp:Button runat="server" type="submit" name="submit" Text="Añadir al carro" class="button"></asp:Button>
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>-->
					<!--
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img title=" " alt=" " src="images/gu5.png"></a>		
												<p>Parryss-sugar</p>
												<h4>S/30.99 <span>S/45.00</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="basmati rise">
														<input type="hidden" name="amount" value="30.99">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<input type="submit" name="submit" value="Añadir al carro" class="button">
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img src="images/pc6.png" alt=" " class="img-responsive"></a>
												<p>Saffola-gold</p>
												<h4>S/80.99 <span>S/105.00</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="Pepsi soft drink">
														<input type="hidden" name="amount" value="80.00">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<input type="submit" name="submit" value="Añadir al carro" class="button">
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
						<div class="clearfix"> </div>
				</div>
				<div class="agile_top_brands_grids">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img title=" " alt=" " src="images/gu4.png"></a>		
												<p>Sampann-toor-dal</p>
												<h4>S/35.99 <span>S/55.00</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="Fortune Sunflower Oil">
														<input type="hidden" name="amount" value="35.99">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<input type="submit" name="submit" value="Añadir al carro" class="button">
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img title=" " alt=" " src="images/5.png"></a>		
												<p>Parryss-sugar</p>
												<h4>S/30.99 <span>S/45.00</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="basmati rise">
														<input type="hidden" name="amount" value="30.99">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<input type="submit" name="submit" value="Añadir al carro" class="button">
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid_pos">
									<img src="../../images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single.aspx"><img src="images/6.png" alt=" " class="img-responsive"></a>
												<p>Saffola-gold</p>
												<h4>S/80.99 <span>S/105.00</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="#" method="post">
													<fieldset>
														<input type="hidden" name="cmd" value="_cart">
														<input type="hidden" name="add" value="1">
														<input type="hidden" name="business" value=" ">
														<input type="hidden" name="item_name" value="Pepsi soft drink">
														<input type="hidden" name="amount" value="80.00">
														<input type="hidden" name="discount_amount" value="1.00">
														<input type="hidden" name="currency_code" value="USD">
														<input type="hidden" name="return" value=" ">
														<input type="hidden" name="cancel_return" value=" ">
														<input type="submit" name="submit" value="Añadir al carro" class="button">
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					-->
						<!--<div class="clearfix"> </div>
				</div>
				<nav class="numbering">
					<ul class="pagination paging">
						<li>
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
						<li><a href="#">2</a></li>
	
						<li>
							<a href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>

			</div>
			<div class="clearfix"> </div>
		</div>
	</div>-->

	 <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron"  style="background-color:white">
				<table class="table-responsive">

				<tbody>     
                    <tr>
						 <td>
                                                                     
                            <asp:Label ID="lblAgregado" runat="server" Text=""></asp:Label>
                        </td>

                        <td>
                            <h3>Lista de Productos</h3>                                                       
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </td>
                    
                    </tr>               
					<tr>
						<td>							

						    
						    <asp:DataList ID="DataList1" runat="server" DataKeyField="codproducto" DataSourceID="SqlDataSource1" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" CssClass="table table-responsive" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" >
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
