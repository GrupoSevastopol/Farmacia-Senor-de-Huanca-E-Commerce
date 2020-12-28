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
    
    public partial class addproduct : System.Web.UI.Page
    {

        private Producto pro = new Producto();

        private void Limpiar()
        {
            txtCodProducto.Text = "";
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtStock.Text = "";
            txtPrecio.Text = "";
            txtReferencia.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string codproducto = txtCodProducto.Text;
            string nom = txtNombre.Text.Trim();
            decimal preicon = decimal.Parse(txtPrecio.Text.Trim());
            int stock = int.Parse(txtStock.Text.Trim());
            string desc = txtDescripcion.Text.Trim(); 
            string refe = txtReferencia.Text.Trim();
            string ima = txtImagen.Text.Trim();
            //pro.CodProducto = codproducto;
            pro.Nombre = nom;
            pro.Precio = preicon ;
            pro.Stock = stock;
            pro.Descripcion = desc;
            pro.Referencia = refe;
            pro.Imagen = ima;
            if (pro.Agregar())
            {
                Response.Write("<script>alert('Se ha agregado correctamente');</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error: no se ha agregado correctamente');</script>");
            }
        }

        protected void actualizar_Click(object sender, EventArgs e)
        {
            int codproducto = int.Parse(txtCodProducto.Text);
            string nom = txtNombre.Text.Trim();
            decimal preicon = decimal.Parse(txtPrecio.Text.Trim());
            int stock = int.Parse(txtStock.Text.Trim());
            string desc = txtDescripcion.Text.Trim(); 
            string refe = txtReferencia.Text.Trim();
            string ima = txtImagen.Text.Trim();

             pro.CodProducto = codproducto;
            pro.Nombre = nom;
            pro.Precio = preicon;
            pro.Stock = stock;
            pro.Descripcion = desc;
            pro.Referencia = refe;
            pro.Imagen = ima;
            if (pro.Actualizar())
            {
                Response.Write("<script>alert('Se ha actualizado correctamente');</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error: no se ha actualizado correctamente');</script>");
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int codproducto = int.Parse(txtCodProducto.Text);
            pro.CodProducto = codproducto;
            if (pro.Eliminar())
            {
                Response.Write("<script>alert('Se ha Eñliminoo correctamente');</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error: no se ha ELiminado correctamente');</script>");
            }
        }
    }
}