using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    class Venta
    {

        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security=true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public string CodVenta
        { get; set; }
        public string Fecha
        { get; set; }
        public decimal Subtotal
        { get; set; }
        public decimal IGV
        { get; set; }
        public decimal Total
        { get; set; }
        public int CodCliente
        { get; set; }

        public DataTable Listar()
        {
            string consulta = "select * from TVenta";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TVenta values('" + CodVenta + "','" + Fecha + "','" + Subtotal + "','" + IGV + "','" + Total + "','" + CodCliente + "')";
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
                string consulta = "delete from TVenta where CodVenta = '" + CodVenta + "'";
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
                string consulta = "update TVenta set Fecha = '" + Fecha + "',Subtotal = '" + Subtotal + "'" +
                    "',IGV = '" + IGV + "' ,Total = '" + Total + "',CodCliente '" + CodCliente + "' where CodVenta = '" + CodVenta + "'";
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

        public static List<Venta> ListarC()
        {
            List<Venta> lista = new List<Venta>();
            string consulta = "SELECT * FROM TVenta";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            Venta c;
            SqlDataReader lector;
            try
            {

                lector = comando.ExecuteReader();

                while (lector.Read())
                {
                    c = new Venta();
                    c.CodVenta = (string)(lector[0]);
                    c.Fecha = (string)(lector[1]);
                    c.Subtotal = (decimal)(lector[2]);
                    c.IGV = (decimal)(lector[3]);
                    c.Total = (decimal)(lector[4]);
                    c.CodCliente = (int)(lector[5]);
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
