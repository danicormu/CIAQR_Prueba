using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Data
{
    class SignatureData:DBConnection
    {
        public List<Signature> getSignatures()
        {
            List<Signature> list = new List<Signature>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from materia", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Signature signature = new Signature(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetString(4), reader.GetInt32(5));
                    list.Add(signature);
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

        public bool addSignature(Signature signature)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("insert into materia values(@name,@day,@professor,@groupID,@levelID);", conn);
                query.Parameters.AddWithValue("@name", signature.Name);
                query.Parameters.AddWithValue("@day", signature.Day);
                query.Parameters.AddWithValue("@professor", signature.Professor);
                query.Parameters.AddWithValue("groupID", signature.GrupoId);
                query.Parameters.AddWithValue("@levelID", signature.LevelId);
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

        public bool updateSignature(Signature signature)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update materia set nombreMateria=@name,horario_dia=@day,profesor = @professor,horario_grupo_idGrupo=@groupID,horario_grupo_nivel_idNivel=@levelID where idMateria = @id;", conn);
                query.Parameters.AddWithValue("@name", signature.Name);
                query.Parameters.AddWithValue("@day", signature.Day);
                query.Parameters.AddWithValue("@professor", signature.Professor);
                query.Parameters.AddWithValue("groupID", signature.GrupoId);
                query.Parameters.AddWithValue("@levelID", signature.LevelId);
                query.Parameters.AddWithValue("@Id", signature.SignatureId);
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

        public bool deleteSignature(int id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from materia where idMateria = @id", conn);
                query.Parameters.AddWithValue("@Id", id);
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
