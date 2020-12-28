<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/MainP.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Festacon.Intranet.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div align="center">
        <p class="perfil">DNI</p>
        
        <p><asp:TextBox ID="txtDniP" runat="server" CssClass="login-form-grids" BackColor="#FBFED6"></asp:TextBox></p>
        <p class="perfil">Nombres</p>
        <p><asp:TextBox ID="txtNombresP" runat="server" CssClass="login-form-grids" BackColor="#FBFED6"></asp:TextBox></p>
        <p class="perfil">Apellidos</p>
        <p><asp:TextBox ID="txtApellidosP" runat="server" CssClass="login-form-grids" BackColor="#FBFED6"></asp:TextBox></p>

    
        <p class="perfil">Direccion</p>
        <p><asp:TextBox ID="txtDireccionP" runat="server" CssClass="login-form-grids" BackColor="#FBFED6"></asp:TextBox></p>
        <p class="perfil">Telefono</p>
        <p><asp:TextBox ID="txtTelefonoP" runat="server" CssClass="login-form-grids" BackColor="#FBFED6"></asp:TextBox></p>
        <p class="perfil">Celular</p>
        <p><asp:TextBox ID="txtCelularP" runat="server" CssClass="login-form-grids" BackColor="#FBFED6"></asp:TextBox></p>
        <p class="perfil">Correo</p>
        <p><asp:TextBox ID="txtCorreoP" runat="server" CssClass="login-form-grids" BackColor="#FBFED6"></asp:TextBox></p>
        
    </div>

    <div align="center">
        <asp:LoginName ID="loginUsuario" runat="server" />
        <asp:LoginStatus ID="loginStatus" runat="server" />
    </div>
    

</asp:Content>
