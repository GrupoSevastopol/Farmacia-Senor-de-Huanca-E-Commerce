<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MainP.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Festacon.Intranet.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio</a></li>
				<li class="active">Pagina de pago</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- checkout -->
    <!--
	<div class="checkout">
		<div class="container">
			<h2>Tu carro de compras contiene: <span>3 Productos</span></h2>
			<div class="checkout-right">
				<asp:Table ID="tCarro" runat="server" class="timetable_sub">

						<asp:TableRow>
							<asp:TableCell>Numero Producto</asp:TableCell>	
							<asp:TableCell>Producto</asp:TableCell>
							<asp:TableCell>Cantidad</asp:TableCell>
							<asp:TableCell>Nombre</asp:TableCell>
						
							<asp:TableCell>Precio</asp:TableCell>
							<asp:TableCell>Eliminar</asp:TableCell>
						</asp:TableRow>

					<asp:TableRow class="rem1">
						<asp:TableCell class="invert">1</asp:TableCell>
						<asp:TableCell class="invert-image"><a href="single.aspx"><img src="https://www.perushop.com.pe/wp-content/uploads/2020/04/334030L-300x300.png" alt=" " class="img-responsive" /></a></asp:TableCell>
						<asp:TableCell class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
						</asp:TableCell>
						<asp:TableCell class="invert">Leche Magnesia Phillips 425 Mg/5 Ml Suspensión Oral</asp:TableCell>
						
						<asp:TableCell class="invert">S/.290.00</asp:TableCell>
						<asp:TableCell class="invert">
							<div class="rem">
								<div class="close1"> </div>
							</div>
							
						</asp:TableCell>
					</asp:TableRow>
					<asp:TableRow class="rem2">
						<asp:TableCell class="invert">2</asp:TableCell>
						<asp:TableCell class="invert-image"><a href="single.aspx"><img src="https://dcuk1cxrnzjkh.cloudfront.net/imagesproducto/422980L.jpg" alt=" " class="img-responsive" /></a></asp:TableCell>
						<asp:TableCell class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
						</asp:TableCell>
						<asp:TableCell class="invert">Magal II Suspensión Oral</asp:TableCell>
					
						<asp:TableCell class="invert">$250.00</asp:TableCell>
						<asp:TableCell class="invert">
							<div class="rem">
								<div class="close2"> </div>
							</div>
							
						</asp:TableCell>
					</asp:TableRow>
					<asp:TableRow class="rem3">
						<asp:TableCell class="invert">3</asp:TableCell>
						<asp:TableCell class="invert-image"><a href="single.aspx"><img src="https://dcuk1cxrnzjkh.cloudfront.net/imagesproducto/003613L.jpg" alt=" " class="img-responsive" /></a></asp:TableCell>
						<asp:TableCell class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
						</asp:TableCell>
						<asp:TableCell class="invert">Nocidex 400mg-30mg/ 5mL Suspensión</asp:TableCell>
						
						<asp:TableCell class="invert">$15.00</asp:TableCell>
						<asp:TableCell class="invert">
							<div class="rem">
								<div class="close3"> </div>
							</div>
							
						</asp:TableCell>
					</asp:TableRow>
								
				</asp:Table>
				<script>$(document).ready(function (c) {
                        $('.close1').on('click', function (c) {
                            $('.rem1').fadeOut('slow', function (c) {
                                $('.rem1').remove();
                            });
                        });
                    });
                </script>
				<script>$(document).ready(function (c) {
                        $('.close2').on('click', function (c) {
                            $('.rem2').fadeOut('slow', function (c) {
                                $('.rem2').remove();
                            });
                        });
                    });
                </script>
				<script>$(document).ready(function (c) {
                        $('.close3').on('click', function (c) {
                            $('.rem3').fadeOut('slow', function (c) {
                                $('.rem3').remove();
                            });
                        });
                    });
                </script>
				<script>
                    $('.value-plus').on('click', function () {
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                        divUpd.text(newVal);
                    });

                    $('.value-minus').on('click', function () {
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                        if (newVal >= 1) divUpd.text(newVal);
                    });
                </script>
			</div>
			<div class="checkout-left">	
				<div class="checkout-left-basket">
					<h4>Continua a Pagar</h4>
					<ul>
						<li>Producto 1 <i>-</i> <span>S/.15.00 </span></li>
						<li>Producto 2 <i>-</i> <span>S/.25.00 </span></li>
						<li>Producto 3 <i>-</i> <span>S/.29.00 </span></li>
						<li>Cargos <i>-</i> <span>S/.15.00</span></li>
						<li>Total <i>-</i> <span>S/.84.00</span></li>
					</ul>
				</div>
				<div class="checkout-right-basket">
					<a href="productsP.aspx"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continuar comprando</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

    -->
	<div class="container">
        <div class="row">
            <div class="col">
                <table class="table-responsive">
        <tr>
            <td colspan="3" style="text-align: center">
                <h1>Carrito de compras</h1></td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px">
                <asp:TextBox ID="txtCodigo" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                <strong>Fecha :</strong></td>
            <td style="width: 397px">
                <asp:Label ID="lblFecha" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
    </table>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="table-responsive">

                    <table class="table">
                        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="505px"
                    OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting"
                    OnRowDeleted="GridView1_RowDeleted" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table-responsive">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Editar" />
                        <asp:BoundField DataField="CodProducto" HeaderText="Codigo" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" />
                        <asp:TemplateField HeaderText="Cantidad">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="73px">1</asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Precio" HeaderText="Sub Total" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px; text-align: right">
                SubTotal S/ :&nbsp;
                <asp:Label ID="lblSubTotal" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px; text-align: right">
                IGV S/ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblIGV" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px; text-align: right">
                Total S/ :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 77px">
                &nbsp;</td>
            <td style="width: 397px">
                <asp:Button ID="Button1" runat="server" Text="Actualizar" OnClick="Button1_Click" CssClass="btn btn-primary" Visible="False" />
                <asp:Button ID="Button2" runat="server" Text="Continuar Compras" style="margin-left: 111px"
                    Width="157px" OnClick="Button2_Click" CssClass="btn btn-primary" Visible="True" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" style="margin-left: 34px" Text="Comprar" Width="120px"
                    OnClick="Button3_Click" CssClass="btn btn-primary" />
            </td>
        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

     <div class="container">
            <div class="row" style="margin-bottom: 10px">
                <div class="col-md-12">
                    <h3>MÉTODO DE PAGO</h3>
                    <form action="">
                        <div class="form-group">
                            <div class="col-12 col-sm-4">
                                &nbsp;<label for="nrotarjeta">Número de Tarjeta</label>
                                <asp:TextBox ID="txtnrotarjeta" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                            
                                <label for="fcadu">Fecha de Caducidad</label>
                               <asp:TextBox ID="txtfcadu" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                          
                                <label for="codsegu">Código de Seguridad</label>
                                <asp:TextBox ID="txtcodsegu" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                                <br />
                                <br />
                            </div>
                            <h3>INFORMACIÓN DE FACTURACIÓN</h3>
                            <div class="col-12 col-sm-4" style="margin-top: 4px">
                                &nbsp;<label for="nombre">Nombre</label>
                                <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                                 <label for="apellidos">Apellidos</label>
                                <asp:TextBox ID="txtapellido" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                          
                                &nbsp;
                                 
                         
                            </div>
                            <div class="col-12 col-sm-4" style="margin-top: 4px">                               
                                &nbsp;<label for="codpostal">Código Postal</label>
                                <asp:TextBox ID="txtcodpostal" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                          
                                <label for="dni">DNI</label><asp:TextBox ID="txtDni" runat="server" CssClass="form-control" Enabled="true" ></asp:TextBox>
                           
                                <label for="teléfono">Número de Teléfono</label>
                                <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
                            </div>

                            <div class="col col-xs-2 col-sm-4" style="margin-top: 4px">
                                <asp:Button ID="btnGuardar" runat="server" Text="Continuar Pago" class="btn btn-info" OnClick="btnGuardar_Click"  />
                            </div>
                              <div class="col col-xs-2 col-sm-4" style="margin-top: 4px">
                               <br />
                               <br />
                            </div>
                        </div>
                    </form>
                </div>
            </div>

<!-- //checkout -->

    </div>
</asp:Content>
