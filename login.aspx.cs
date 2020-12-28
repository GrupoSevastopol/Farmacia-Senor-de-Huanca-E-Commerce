using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using CapaDatos;
namespace Festacon
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.CodUsuario = Login1.UserName;
            usuario.Contrasena = Login1.Password;
            if (usuario.Login())
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
            } else
            {
                Login1.FailureText = "Incorrecto";
            }
        }

       
    }
}