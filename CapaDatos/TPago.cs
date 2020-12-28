using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ConceptosBaicos.clasesTrabajo
{
    public class TPago
    {
        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security = true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public string CodPago
        { get; set; }
        public string Tipo
        { get; set; }
        public string Descripcion
        { get; set; }


        public DataTable Listar()
        {
            string consulta = "select * from TPago";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TPago values('" + CodPago + "','" + Tipo + "','" + Descripcion + "')";
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
                string consulta = "delete from TPago where CodPago = '" + CodPago + "'";
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
                string consulta = "update TPago set Tipo = '" + Tipo + "',Descripcion = '" + Descripcion + "'" +
                     "' where CodPago = '" + CodPago + "'";
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
    }
}