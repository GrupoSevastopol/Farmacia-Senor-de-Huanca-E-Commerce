using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ConceptosBaicos.clasesTrabajo
{
    public class Facturacion
    {

        private static string cadena = @"Server=DESKTOP-T5LC7MM\SQLEXPRESS;database=BDFarmacia;integrated Security = true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        public string CodFacturacion
        { get; set; }
        public string CodFactura
        { get; set; }
        public string identificacion
        { get; set; }
        public string Nombres
        { get; set; }
        public string Apellidos
        { get; set; }
        public string Telefono
        { get; set; }
        public string Direccion
        { get; set; }

        public DataTable Listar()
        {
            string consulta = "select * from TFacturacion";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            try
            {
                string consulta = "insert into TFacturacion values('" + CodFacturacion + "','" + CodFactura + "','" + identificacion + "','" + Nombres + "','" + Apellidos + "','" + Telefono + "','" + Direccion + "')";
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
                string consulta = "delete from TFacturacion where CodFacturacion = '" + CodFacturacion + "'";
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
                string consulta = "update TFacturacion set CodFactura = '" + CodFactura + "',identificacion = '" + identificacion + "'" +
                    "',Nombres = '" + Nombres + "' ,Apellidos = '" + Apellidos + "',Telefono '" + Telefono + "',Direccion '" + Direccion + "' where CodCategoria = '" + CodFacturacion + "'";
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