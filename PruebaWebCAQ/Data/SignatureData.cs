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
                    Signature signature = new Signature(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetString(4), reader.GetInt32(5),reader.GetString(6),reader.GetString(7));
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

        public List<Signature> getSignaturesByGroupId(string groupName, string day)
        {
            List<Signature> list = new List<Signature>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from materia where horario_grupo_idGrupo = @id and horario_dia = @day;", conn);
                query.Parameters.AddWithValue("@id", groupName);
                query.Parameters.AddWithValue("@day", day);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Signature signature = new Signature(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetString(4), reader.GetInt32(5), reader.GetString(6), reader.GetString(7));
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
                SqlCommand query = new SqlCommand("insert into materia values(@name,@day,@professor,@groupID,@levelID,@start,@end);", conn);
                query.Parameters.AddWithValue("@name", signature.Name);
                query.Parameters.AddWithValue("@day", signature.Day);
                query.Parameters.AddWithValue("@professor", signature.Professor);
                query.Parameters.AddWithValue("groupID", signature.GrupoId);
                query.Parameters.AddWithValue("@levelID", signature.LevelId);
                query.Parameters.AddWithValue("@start", signature.StartTime);
                query.Parameters.AddWithValue("@end", signature.EndTime);
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
                SqlCommand query = new SqlCommand("update materia set nombreMateria=@name,horario_dia=@day,profesor = @professor,horario_grupo_idGrupo=@groupID,horario_grupo_nivel_idNivel=@levelID, horaInicio=@start, horaFin=@end where idMateria = @id;", conn);
                query.Parameters.AddWithValue("@name", signature.Name);
                query.Parameters.AddWithValue("@day", signature.Day);
                query.Parameters.AddWithValue("@professor", signature.Professor);
                query.Parameters.AddWithValue("groupID", signature.GrupoId);
                query.Parameters.AddWithValue("@levelID", signature.LevelId);
                query.Parameters.AddWithValue("@Id", signature.SignatureId);
                query.Parameters.AddWithValue("@start", signature.StartTime);
                query.Parameters.AddWithValue("@end", signature.EndTime);
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

        public bool deleteSignature(string day, string group)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from materia where horario_dia = @day and horario_grupo_idGrupo=@group", conn);
                query.Parameters.AddWithValue("@day", day);
                query.Parameters.AddWithValue("group", group);
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
