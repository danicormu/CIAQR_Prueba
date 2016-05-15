using System;
using System.Data.SqlClient;


namespace PruebaWebCAQ.Data
{
    class DBConnection
    {
        public DBConnection() { } // constructor publico de la clase

        // path de conexion a base de datos // Daniel conecta con Server=*su server path *;User ID=sa;Password=*supassword*
        //private string connectionString = "Server=localhost;Database=DBcolegio;User ID=sa;Password=LinkinPark01";
        private string connectionString = "Server=localhost;Database=DBcolegio;User ID=sa;Password=corrales";
        protected SqlConnection conn = null;


        // conectar a la bd
        protected void connectDB()
        {

            try
            {
                conn = new SqlConnection(connectionString);
                Console.WriteLine("Conecte con exito");
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        // desconectar la bd
        protected void disconnectDB()
        {

            try
            {
                if (conn != null)
                    conn.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
    }
}
