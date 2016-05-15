using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Data
{
    class PersonalData:DBConnection
    {
        // lista de personal
        public List<Personal> getAllPersonal()
        {
            List<Personal> list = new List<Personal>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from personal", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Personal person = new Personal(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetStream(4));
                    list.Add(person);
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

        public List<Personal> getProfessors()
        {
            List<Personal> list = new List<Personal>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from personal where rol = 'profesor' or rol ='profesora';", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Personal person = new Personal(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetStream(4));
                    list.Add(person);
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

        //agrega un nuevo miembro al personal
        public bool insertPerson(Personal person)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("insert into personal values(@name,@description,@rol,@photo)", conn);
                query.Parameters.AddWithValue("@name", person.Name);
                query.Parameters.AddWithValue("@description", person.Description);
                query.Parameters.AddWithValue("@rol", person.Rol);
                query.Parameters.AddWithValue("@photo", person.PhotoToInsert);
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

        //hace un update del miembro del personal.
        public bool updatePersonal(Personal person)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update personal set nombre = @name, descripcion = @description, rol = @rol where idPersona = @id;", conn);
                query.Parameters.AddWithValue("@name", person.Name);
                query.Parameters.AddWithValue("@description", person.Description);
                query.Parameters.AddWithValue("@rol", person.Rol);
                query.Parameters.AddWithValue("@id", person.Id);
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

        //borra un miembro del personal
        public bool deletePerson(int id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from personal where idPersona = @id;", conn);
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
