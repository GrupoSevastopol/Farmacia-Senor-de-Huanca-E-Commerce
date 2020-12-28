using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace CapaDatos
{
    public class Factura
    {

        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security = true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public Factura(int cod)
        {
            CodFactura = cod;
        }
        public Factura()
        {

        }
        public int CodFactura { get; set; }
        public int Numero { get; set; }

        public int COdCliente { get; set; }
        public string Fecha { get; set; }
        public int CodPago { get; set; }
        public decimal Subtotal { get; set; }

        public decimal IGV { get; set; }
        public decimal Total { get; set; }
        public int Estado { get; set; }

        public DataTable Listar()
        {
            string consulta = "select * from TFactura";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TFactura (Numero, CodCliente, Fecha, CodPago, Subtotal, IGV, Total, Estado) values('" + Numero + "','" + COdCliente + "','" + Fecha + "','" + CodPago + "','" + Subtotal + "','" + IGV + "','" + Total + "', '"+Estado+"')";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                // Ejecutar la instruccion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch { return false; }
            finally { conexion.Close(); }
        }
        public bool Eliminar()
        {
            try
            {
                string consulta = "delete from TFactura where CodFacturacion = '" + CodFactura + "'";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                // Ejecutar la instruccion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch { return false; }
            finally { conexion.Close(); }
        }

        public static List<Factura> ListarC()
        {
            List<Factura> lista = new List<Factura>();
            string consulta = "SELECT * FROM TFactura";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            Factura c;
            SqlDataReader lector;
            try
            {

                lector = comando.ExecuteReader();

                while (lector.Read())
                {
                    c = new Factura();
                    c.CodFactura = (int)(lector[0]);
                    c.Numero = (int)(lector[1]);
                    c.COdCliente = (int)(lector[2]);
                    c.Fecha = (string)(lector[3]);
                    c.CodPago = (int)(lector[4]);
                    c.Subtotal = (decimal)(lector[5]);
                    c.IGV = (decimal)(lector[6]);
                    c.Total = (decimal)(lector[7]);
                    c.Estado = (int)(lector[8]);
                    lista.Add(c);
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return lista;
        }



        public string contador;
        public List<Factura> UltimoCod()
        {
            SqlCommand sqlcmd = new SqlCommand("select count(CodFactura),max (CodFactura) from TFactura", conexion);
            sqlcmd.CommandType = CommandType.Text;
            conexion.Open();
            SqlDataReader PaTable = sqlcmd.ExecuteReader();
            List<Factura> Coleccion = new List<Factura>();
            while (PaTable.Read())
            {
                this.contador = Convert.ToString(PaTable.GetInt32(0));
                if (contador == "0")
                {
                    Coleccion.Add(new Factura(PaTable.GetInt32(0)));

                }
                else
                {
                    Coleccion.Add(new Factura(int.Parse(PaTable.GetString(1))));

                }
            }
            conexion.Close();
            return Coleccion;
        }

        public string Insertar(Factura prod)
        {
            string rpta = "";
            try
            {
                prod.Agregar();
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return rpta;
        }


    }
}
