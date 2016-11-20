using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using PruebaWebCAQ.Domain;


namespace PruebaWebCAQ.Data
{
    class AdministratorData:DBConnection
    {

        //lista a todos los administradores
        public List<Administrator> getAllAdministrators()
        {
            List <Administrator> list = new List<Administrator>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from administrador;",conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Administrator admin = new Administrator(reader.GetInt32(0), reader.GetString(1), reader.GetString(2));
                    list.Add(admin);
                }
                reader.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                conn.Close();
            }
            return list;
        }

        //Obtiene el id de un administrador
        public int getAdminID(string username, string pass)
        {
            int id = 0;
            try
            {
                SqlCommand query = new SqlCommand("select idAdmin from administrador where usuario=@user and password=@pass;", conn);
                query.Parameters.AddWithValue("@user", username);
                query.Parameters.AddWithValue("@pass", pass);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                reader.Read();
                id = reader.GetInt32(0);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                conn.Close();
            }
            return id;
        }

        //login recibe usuario y password
        public bool login(string username, string password)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select usuario, password from administrador where usuario=@user and password=@pass;", conn);
                query.Parameters.AddWithValue("@user", username);
                query.Parameters.AddWithValue("@pass", password);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                reader.Read();
                if ((username == reader.GetString(0)) && (password == reader.GetString(1)))
                {
                    flag = true;
                }                   
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                conn.Close();
            }
            return flag;
        }


        //inserta un nuevo administrador
        public bool addAdministrator(Administrator administrator)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("insert into administrador values(@username,@password);", conn);
                query.Parameters.AddWithValue("@username", administrator.Username);
                query.Parameters.AddWithValue("@password", administrator.Password);
                conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                conn.Close();
            }
            return flag;
        }

        //hace un update del nombre de usuario o de la contraseña del administrador
        public bool updateAdmininistrator(Administrator admininistrator)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update administrador set usuario = @usuario, password = @password where idAdmin = @id ", conn);
                query.Parameters.AddWithValue("@usuario", admininistrator.Username);
                query.Parameters.AddWithValue("@password", admininistrator.Password);
                query.Parameters.AddWithValue("@id", admininistrator.IdAdmin);
                conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                conn.Close();
            }
            return flag;
        }

        //elimina un administrador
        public bool deleteAdministrator(int id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from administrador where idAdmin = @id", conn);
                query.Parameters.AddWithValue("@id", id);
                conn.Open();
                query.ExecuteNonQuery();
                flag = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                disconnectDB();
                conn.Close();
            }
            return flag;
        }
    }

}
