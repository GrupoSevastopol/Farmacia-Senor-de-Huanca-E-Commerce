using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace CapaDatos
{
    class DetalleVenta
    {

        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security=true";
        private static SqlConnection conexion = new SqlConnection(cadena);

    
        public int CodDetalleVenta { get; set;  }
        public int Cantidad { get; set; }
        public decimal Precio { get; set; }
        public decimal Subtotal { get; set; }
        public string CodProducto { get; set; }
        public string CodVenta { get; set; }

        public DataTable Listar()
        {
            string consulta = "select * from TDetalleVenta";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TDetalleVenta values('" + CodDetalleVenta + "','" + Cantidad + "','" + Precio + "','" + Subtotal + "','" + CodProducto + "','" + CodVenta + "')";
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
                string consulta = "delete from TDetalleVenta where CodDetalleVenta = '" + CodDetalleVenta + "'";
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
        public bool Actualizar()
        {
            try
            {
                string consulta = "update TDetalleVenta set Cantidad = '" + Cantidad + "',Precio = '" + Precio + "'" +
                    "',Subtotal = '" + Subtotal + "' ,CodProducto = '" + CodProducto + "',CodVenta '" + CodVenta + "' where CodDetalleVenta = '" + CodDetalleVenta + "'";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                //Ejecutar la instruccion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
            finally
            {
                conexion.Close();
            }
        }

        public static List<DetalleVenta> ListarC()
        {
            List<DetalleVenta> lista = new List<DetalleVenta>();
            string consulta = "SELECT * FROM TDetalleVenta";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            DetalleVenta c;
            SqlDataReader lector;
            try
            {

                lector = comando.ExecuteReader();

                while (lector.Read())
                {
                    c = new DetalleVenta();
                    c.CodDetalleVenta = (int)(lector[0]);
                    c.Cantidad = (int)(lector[1]);
                    c.Precio = (decimal)(lector[2]);
                    c.Subtotal = (decimal)(lector[3]);
                    c.CodProducto = (string)(lector[4]);
                    c.CodVenta = (string)(lector[5]);
                    lista.Add(c);
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex.Message);
            }
            return lista;
        }

    }
}
