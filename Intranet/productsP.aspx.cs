using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CapaDatos;


namespace Festacon.Intranet
{
    public partial class productsP : System.Web.UI.Page
    {


        DataTable dtb;
        DataTable carrito = new DataTable();

        public void CargarDetalle()
        {
            if (Session["pedido"] == null)
            {
                dtb = new DataTable("Carrito");
                dtb.Columns.Add("CodProducto", System.Type.GetType("System.String"));
                dtb.Columns.Add("Nombre", System.Type.GetType("System.String"));
                dtb.Columns.Add("Precio", System.Type.GetType("System.Double"));
                dtb.Columns.Add("Stock", System.Type.GetType("System.Int32"));
                dtb.Columns.Add("Descripcion", System.Type.GetType("System.String"));
                dtb.Columns.Add("Referencia", System.Type.GetType("System.String"));
                dtb.Columns.Add("Imagen", System.Type.GetType("System.String"));
                Session["pedido"] = dtb;
                Session["prueba"] = dtb;
            }
            else
            {
                Session["pedido"] = Session["prueba"];
            }


        }

        public void AgregarItem(string cod, string des, double precio)
        {
            double total;
            int cantidad = 1;
            total = precio * cantidad;
            carrito = (DataTable)Session["pedido"];
            DataRow fila = carrito.NewRow();
            fila[0] = cod;
            fila[1] = des;
            fila[2] = precio;
            fila[3] = (int)cantidad;
            fila[4] = total;
            carrito.Rows.Add(fila);
            Session["pedido"] = carrito;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CargarDetalle();
                lblAgregado.Text = "";
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object sender, DataListCommandEventArgs e)
        {
            string cod;
            string des = null, nom = null;
            double precio = 0;
            if (e.CommandName == "Seleccionar")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;

                cod = ((Label)this.DataList1.SelectedItem.FindControl("codproductoLabel")).Text;
                des = ((Label)this.DataList1.SelectedItem.FindControl("desproductoLabel")).Text;
                precio = double.Parse(((Label)this.DataList1.SelectedItem.FindControl("codcategoriaLabel")).Text);
                AgregarItem(cod, des, precio);

                lblAgregado.Text = "Producto Agregado: " + nom + " " + des;
                //Session["prueba"] = "Sesión usuario prueba";
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}