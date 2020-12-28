using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using ConceptosBaicos.clasesTrabajo;

namespace Festacon.Intranet
{
    public partial class profile : System.Web.UI.Page
    {
        private Cliente dao = new Cliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Cliente cliente = Cliente.Obtener(User.Identity.Name);
                txtDniP.Text = cliente.DNI;
                txtNombresP.Text = cliente.Nombres;
                txtApellidosP.Text = cliente.Apellidos;
                txtDireccionP.Text = cliente.Direccion;
                txtTelefonoP.Text = cliente.Telefono;
                txtCelularP.Text = cliente.Celular;
                txtCorreoP.Text = cliente.CodUsuario;
            }
        }
    }
}