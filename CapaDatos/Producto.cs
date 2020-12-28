using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace ConceptosBaicos.clasesTrabajo
{
    public class Producto
    {
        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security = true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public int CodProducto
        { get; set; }
        public string Nombre
        { get; set; }
        public decimal Precio
        { get; set; }
        public int Stock
        { get; set; }
        public string Descripcion
        { get; set; }
        public string Referencia
        { get; set; }
        public string Imagen
        { get; set; }

        public string CodCategoria { get; set; }

        public DataTable Listar()
        {
            string consulta = "select * from TProducto";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TProducto  values('" + Nombre + "','" + Precio + "','" + Stock + "','" + Descripcion + "','" + Referencia + "','" + Imagen + "')";
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
                string consulta = "delete from TProducto where CodProducto = '" + CodProducto + "'";
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
                string consulta = "update TProducto set Nombre = '" + Nombre + "' ,Precio = '" + Precio + "' ,Stock = '" + Stock + "' ,Descripcion = '" + Descripcion + "' ,Referencia = '" + Referencia + "' ,Imagen = '" + Imagen + "' where CodProducto = '" + CodProducto + "'";
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

        public static List<Producto> ListarC()
        {
            List<Producto> lista = new List<Producto>();
            string consulta = "SELECT * FROM TProducto";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            Producto c;
            SqlDataReader lector;
            try
            {

                lector = comando.ExecuteReader();

                while (lector.Read())
                {
                    c = new Producto();
                    c.CodProducto = (int)(lector[0]);
                    c.Nombre = (string)(lector[1]);
                    c.Descripcion = (string)(lector[2]);
                    c.Stock = (int)(lector[3]);
                    c.Precio = (decimal)(lector[4]);
                    c.Referencia = (string)(lector[5]);
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