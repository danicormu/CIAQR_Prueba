using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Data
{
    class ChronogramData:DBConnection
    {
        // lista los cronogramas en existencia
        public List<Chronogram> getAllChronogram()
        {
            List<Chronogram> list = new List<Chronogram>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from cronograma;", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Chronogram chronogram = new Chronogram(reader.GetInt32(0), reader.GetString(1), reader.GetString(2));
                    list.Add(chronogram);
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

        //agrega cronograma
        public bool addChronogram(Chronogram chronogram)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("insert into cronograma values(@begin,@end);", conn);
                query.Parameters.AddWithValue("@begin", chronogram.BeginTime);
                query.Parameters.AddWithValue("@end", chronogram.EndTime);
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

        // update de cronograma
        public bool updateChronogram(Chronogram chronogram)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update cronograma set horaInicio=@begin, horaFin= @end where idCronograma = @id;", conn);
                query.Parameters.AddWithValue("@begin", chronogram.BeginTime);
                query.Parameters.AddWithValue("@end", chronogram.EndTime);
                query.Parameters.AddWithValue("@id", chronogram.IdChronogram);
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

        // borrar un cronograma
        public bool deleteChronogram(int id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from cronograma where idCronograma = @id;", conn);
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
