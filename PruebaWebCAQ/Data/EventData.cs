using PruebaWebCAQ.Domain;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;


namespace PruebaWebCAQ.Data
{
    class EventData:DBConnection
    {
        // Metodo que muestra todos los eventos
        public List<Event> getAllEvents()
        {
            List<Event> list = new List<Event>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from evento", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Event eve = new Event(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetString(4), reader.GetInt32(5));
                    list.Add(eve);
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

        // Metodo agregar evento
        public bool addEvent(Event eve)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("insert into evento values(@name,@description,@date,@type, @chronogramID)", conn);
                query.Parameters.AddWithValue("@name", eve.EventName);
                query.Parameters.AddWithValue("@description", eve.Description);
                query.Parameters.AddWithValue("@date", eve.Date);
                query.Parameters.AddWithValue("@type", eve.EventType);
                query.Parameters.AddWithValue("@chronogramID", eve.ChronogramId);
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

        // Metodo que edita el evento
        public bool updateEvent(Event eve)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update evento set nombreevento = @name,descripcion=@description,fecha = @date, tipoEvento= @type, cronograma_idCronograma = @chronogramID where idEvento = @id", conn);
                query.Parameters.AddWithValue("@name", eve.EventName);
                query.Parameters.AddWithValue("@description", eve.Description);
                query.Parameters.AddWithValue("@date", eve.Date);
                query.Parameters.AddWithValue("@type", eve.EventType);
                query.Parameters.AddWithValue("@chronogramID", eve.ChronogramId);
                query.Parameters.AddWithValue("@id", eve.EventId);
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

        // Metodo para eliminar el evento 
        public bool deleteEvent(int id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from evento where idEvento = @id", conn);
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
