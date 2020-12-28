using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace CapaDatos
{
    public class Conexion
    {

        //private string cadena = @"Data Source=ERICK-PC\SQLEXPRESS;Initial Catalog=BDVENTAS_5;Integrated Security=True";
        private string cadena = @"Data Source=DESKTOP-T5LC7MM\SQLEXPRESS.;Initial Catalog=BDFarmacia;Integrated Security=True";
        public SqlConnection conexion;

        public SqlConnection conectarBD()
        {
            conexion = new SqlConnection(cadena);
            if (conexion.State == ConnectionState.Open)
            {
                conexion.Close();
            }
            else
            {
                conexion.Open();
            }
            return conexion;
        }



    }
}
