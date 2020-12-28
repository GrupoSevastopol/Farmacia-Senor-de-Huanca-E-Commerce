<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MainP.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="Festacon.Intranet.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron" id="b">
        <h1>Agregar Productos</h1>
       

    </div>
    <div class="container">
        <div class="col-md-12">
            
            <p><asp:Label ID="Label6" runat="server" Text="CodProducto"></asp:Label></p>
            <p><asp:TextBox CssClass="producto" ID="txtCodProducto" runat="server"></asp:TextBox></p>

            <p><asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label></p>
            <p><asp:TextBox CssClass="producto" ID="txtNombre" runat="server"></asp:TextBox></p>
     
            
                <p><asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label></p>
                <p><asp:TextBox CssClass="producto" ID="txtPrecio" runat="server"></asp:TextBox></p>
            
            
                <p><asp:Label ID="Label3" runat="server" Text="Stock"></asp:Label></p>
                <p><asp:TextBox CssClass="producto" ID="txtStock" runat="server"></asp:TextBox></p>
             
                <p><asp:Label ID="Label4" runat="server" Text="Descripcion"></asp:Label></p>
                <p><asp:TextBox CssClass="producto" ID="txtDescripcion" runat="server"></asp:TextBox></p>
            
                <p><asp:Label ID="Label5" runat="server" Text="Referencia"></asp:Label></p>
                <p><asp:TextBox CssClass="producto" ID="txtReferencia" runat="server"></asp:TextBox></p>
            <p>Imagen</p>
            <p>
                <asp:TextBox ID="txtImagen" runat="server" Width="520px"></asp:TextBox>
            </p>
          
          
                <p><asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Agregar Producto" OnClick="Button1_Click"> </asp:Button></p>
            <p>
                <asp:Button ID="actualizar" runat="server" OnClick="actualizar_Click" Text="ACTUALIZAR" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                &nbsp;<asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="ELIMINAR" />
            </p>
        
            
        </div>
    
        

    </div>

</asp:Content>
