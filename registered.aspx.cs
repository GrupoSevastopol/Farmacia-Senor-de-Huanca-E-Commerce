using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using ConceptosBaicos.clasesTrabajo;
using CapaDatos;
namespace Festacon
{
    public partial class registered : System.Web.UI.Page
    {

        private Cliente cliente = new Cliente();
        private Usuario usuario = new Usuario();

        private void Limpiar()
        {
            txtDNI.Text = "";
            txtNombres.Text = "";
            txtApellidos.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtCelular.Text = "";
            txtCorreo.Text = "";
            txtContra.Text = "";
            txtConfirmacion.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtDireccion_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            cliente.DNI = txtDNI.Text;
            cliente.Nombres = txtNombres.Text;
            cliente.Apellidos = txtApellidos.Text;
            cliente.Direccion = txtDireccion.Text;
            cliente.Telefono = txtTelefono.Text;
            cliente.Celular = txtCelular.Text;
            cliente.CodUsuario = txtCorreo.Text;
            usuario.CodUsuario = txtCorreo.Text;
            usuario.Contrasena = txtContra.Text;
            if (usuario.Agregar())
            {
                cliente.Agregar();
                Limpiar();
            } else
            {
                Response.Write("<script>alert('Error: no se ha agregado correctamente');</script>");
            }
    
        }
    }
}