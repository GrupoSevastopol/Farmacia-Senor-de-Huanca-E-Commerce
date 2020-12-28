using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using ConceptosBaicos.clasesTrabajo;
using System.Data;
using System.Data.SqlClient;
namespace Festacon.Intranet
{
    public partial class checkout : System.Web.UI.Page
    {


        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security=true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarcarrito();
            Ultimo();
            lblFecha.Text = DateTime.Now.Date.ToString().Substring(0, 10);
        }

        private void Ultimo()
        {
            Factura cnper = new Factura();
            List<Factura> per = cnper.UltimoCod();
            foreach (Factura ma in per)
            {
                int codigo = 0;
                codigo = Convert.ToInt32(ma.CodFactura);
                codigo = codigo + 1;
               
                txtCodigo.Text = ma.CodFactura.ToString();
            }
        }

        public void cargarcarrito()
        {
            GridView1.DataSource = Session["pedido"];
            GridView1.DataBind();
            Button1_Click(Button1, null);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i;
            double total = 0, prec, subtotal = 0, igv;
            string cod, desc;
            int cant;
          
            var items = (DataTable)Session["pedido"];
            //DataRow fila = items.NewRow();
            for (i = 0; i < GridView1.Rows.Count; i++)
            {
                
                cod = (GridView1.Rows[i].Cells[1].Text);
                desc = (GridView1.Rows[i].Cells[2].Text);
                prec = System.Convert.ToDouble(GridView1.Rows[i].Cells[3].Text);
                cant = System.Convert.ToInt16(((TextBox)this.GridView1.Rows[i].Cells[4].FindControl("TextBox1")).Text);
                double prec1 = System.Convert.ToDouble(prec);
                subtotal = cant * prec1;
                GridView1.Rows[i].Cells[5].Text = subtotal.ToString();
                foreach (DataRow dr in items.Rows)
                {
                    if (dr["CodProducto"].ToString() == cod.ToString())
                    {
                        dr["Stock"] = cant;
                        dr["Precio"] = subtotal;
                       
                                        }
                    
                }
                
                total = total + subtotal;
            }

            igv = total * 0.18;
            subtotal = total - igv;

            lblIGV.Text = igv.ToString("0.00");
            lblSubTotal.Text = subtotal.ToString("0.00");
            lblTotal.Text = total.ToString("0.00");


        }

        public double TotalCarrito(DataTable dt)
        {
            double tot = 0;
            foreach (DataRow item in dt.Rows)
            {
                tot += Convert.ToDouble(item[4]);
            }
            return tot;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Borrar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                DataTable ocar = new DataTable();
                ocar = (DataTable)Session["pedido"];
                ocar.Rows[index].Delete();
                lblTotal.Text = TotalCarrito(ocar).ToString();
                GridView1.DataSource = ocar;
                GridView1.DataBind();
                cargarcarrito();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("productsP.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            
                Factura oMatriculaCN = new Factura();
                Factura oMatriculaCE = new Factura();
                oMatriculaCE.CodFactura = int.Parse(txtCodigo.Text);
                oMatriculaCE.Fecha = lblFecha.Text;
                oMatriculaCE.Subtotal = decimal.Parse(lblSubTotal.Text);
                oMatriculaCE.IGV = decimal.Parse(lblIGV.Text);
                oMatriculaCE.Total = decimal.Parse(lblTotal.Text);
                oMatriculaCE.COdCliente = Cliente.Obtener(User.Identity.Name).CodCliente;
                oMatriculaCN.Insertar(oMatriculaCE);

                /*foreach (GridViewRow row in GridView1.Rows)
                {
                    Factura oMatriculaCNN = new Factura();
                    Factura oMatriculaCEE = new Factura();
                    oMatriculaCEE.CodFactura = int.Parse(txtCodigo.Text);
                    oMatriculaCEE. = int.Parse(((TextBox)row.Cells[4].FindControl("TextBox1")).Text);
                    oMatriculaCEE.Precio = decimal.Parse(Convert.ToString(row.Cells[3].Text));
                    oMatriculaCEE.Subtotal = decimal.Parse(Convert.ToString(row.Cells[5].Text));
                    oMatriculaCEE.Codproducto = Convert.ToString(row.Cells[1].Text);
                    oMatriculaCEE.Insertar(oMatriculaCEE);
                }*/

                this.Response.Write("<script language='JavaScript'>window.alert('PROCESO TERMINADO CORRECTAMENTE')</script>");
                Response.Redirect("productsP.aspx");
           


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;
            DataTable dt1 = new DataTable();
            dt1 = (DataTable)Session["pedido"];
            dt1.Rows[index].Delete();

            lblTotal.Text = TotalCarrito(dt1).ToString();
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            Session[User.Identity.Name] = dt1;
            Button1_Click(Button1, null);
        }

        
        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            this.Response.Write("<script language='JavaScript'>window.alert('TARJETA VAILDADA" +
                "USTED A COMPLETADO LA VENTA" +
                "')</script>");
            var items = (DataTable)Session["pedido"];

            /* foreach (DataRow dr in items.Rows)
             {

                 int  result = items.Rows.IndexOf(dr);
                 int index = Convert.ToInt32(result);             
                 DataTable ocar = new DataTable();
                 ocar = (DataTable)Session["pedido"];
                 ocar.Rows[index].Delete();
                 lblTotal.Text = TotalCarrito(ocar).ToString();
                 GridView1.DataSource = ocar;
                 GridView1.DataBind();
                 cargarcarrito();
             } */

        }
    }

}
