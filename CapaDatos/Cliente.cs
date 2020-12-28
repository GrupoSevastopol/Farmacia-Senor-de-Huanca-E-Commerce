using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ConceptosBaicos.clasesTrabajo
{
    public class Cliente
    {
        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security=true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public int CodCliente
        { get; set; }
        public string DNI
        { get; set; }
        public string Nombres
        { get; set; }
        public string Apellidos
        { get; set; }

        public string Direccion
        { get; set; }
        public string Telefono
        { get; set; }
        public string Celular
        { get; set; }

        public string CodUsuario { get; set; }

        public DataTable Listar()
        {
            string consulta = "select * from TCliente";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TCliente (DNI, Nombres, Apellidos, Direccion, Telefono, Celular, CodUsuario) values('" + DNI + "','" + Nombres + "','" + Apellidos + "','" + Direccion + "'" +
                        ",'" + Telefono + "','" + Celular + "', '"+CodUsuario+"')";
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
                string consulta = "delete from TCliente where CodCliente = '" + CodCliente + "'";
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
               
                string consulta = "update TCliente set  DNI = '" + DNI + "',Nombres = '" + Nombres + "',Apellidos = '" + Apellidos + "'" +
                    ", Direccion = '" + Direccion + "' ,Telefono = '" + Telefono + "' " +
                    ", Celular = '" + Celular + "' where CodCliente = '" + CodCliente + "'";
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

        public static Cliente Obtener(string usuario)
        {
            Cliente nuevo = new Cliente();
            conexion.Open();
            string consulta = "select * from TCliente where CodUsuario = '"+usuario+"'";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            SqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {
                nuevo.DNI = reader["DNI"].ToString();
                nuevo.Nombres = reader["Nombres"].ToString();
                nuevo.Apellidos = reader["Apellidos"].ToString();
                nuevo.Direccion = reader["Direccion"].ToString();
                nuevo.Telefono = reader["Telefono"].ToString();
                nuevo.Celular = reader["Celular"].ToString();
                nuevo.CodUsuario = reader["CodUsuario"].ToString();
            }
            conexion.Close();
            return nuevo;
        }

        public static List<Cliente> ListarC()
        {
            List<Cliente> lista = new List<Cliente>();
            string consulta = "SELECT * FROM TCliente";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            Cliente c;
            SqlDataReader lector;
            try
            {

                lector = comando.ExecuteReader();

                while (lector.Read())
                {
                    c = new Cliente();
                    c.CodCliente = (int)(lector[0]);
                    c.Nombres = (string)(lector[1]);
                    c.Apellidos = (string)(lector[2]);
                    c.Direccion = (string)(lector[3]);
                    c.Telefono = (string)(lector[4]);
                    c.Celular = (string)(lector[5]);
                    c.CodUsuario = (string)(lector[6]);
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