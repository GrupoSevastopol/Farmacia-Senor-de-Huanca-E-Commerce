using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ConceptosBaicos.clasesTrabajo
{
    public class Categoria
    {
        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security = true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public string CodCategoria
        { get; set; }
        public string Nombre
        { get; set; }

        public DataTable Listar()
        {
            string consulta = "select * from TCategoria";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TCategoria values('" + CodCategoria + "','" + Nombre + "')";
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
                string consulta = "delete from TCategoria where CodCategoria = '" + CodCategoria + "'";
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
                string consulta = "update TCategoria set Nombre = '" + Nombre + "' where CodCategoria = '" + CodCategoria + "'";
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

        public static List<Categoria> ListarC()
        {
            List<Categoria> lista = new List<Categoria>();
            string consulta = "SELECT * FROM TCategoria";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            Categoria c;
            SqlDataReader lector;
            try
            {

                lector = comando.ExecuteReader();

                while (lector.Read())
                {
                    c = new Categoria();
                    c.CodCategoria = (string)(lector[0]);
                    c.Nombre = (string)(lector[1]);
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
