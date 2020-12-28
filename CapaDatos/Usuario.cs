using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace CapaDatos
{
    public class Usuario
    {
        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security = true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        public string CodUsuario
        {
            get; set;
        }

        public string Contrasena
        {
            get; set;
        }

        public DataTable Listar()
        {
            string consulta = "select * from TUsuario";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TUsuario values('" + CodUsuario + "','" + Contrasena + "')";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                // Ejecutar la instruccion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch (Exception error){ return false; }
            finally { conexion.Close(); }
        }
        public bool Eliminar()
        {
            try
            {
                string consulta = "delete from TUsuario where CodUsuario = '" + CodUsuario + "'";
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
                string consulta = "update TUsuario set Contrasena = '" + Contrasena + "' where CodUsuario = '" + CodUsuario + "'";
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

        public bool Login()
        {
            try
            {
                string consulta = "Select count(*) from TUsuario where CodUsuario = '" + CodUsuario + "' and Contrasena = '" + Contrasena + "'";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                int i = Convert.ToInt32(comando.ExecuteScalar());
                if (i == 1) return true; else return false;

            } catch (SqlException sql)
            {
                return false;
            } catch (Exception err)
            {
                return false;
            } finally
            {
                conexion.Close();
            }
        }


    }
}
