using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Data
{
    class ScheduleData :DBConnection
    {
        public List<Schedule> getAllSchedule()
        {
            List<Schedule> list = new List<Schedule>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from horario", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Schedule schedule = new Schedule(reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetInt32(4));
                    list.Add(schedule);
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

        public bool addSchedule(Schedule schedule)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("Insert into horario values(@day,@start,@end,@groupID,@level);", conn);
                query.Parameters.AddWithValue("@day", schedule.Day);
                query.Parameters.AddWithValue("@start", schedule.StartTime);
                query.Parameters.AddWithValue("@end", schedule.EndTime);
                query.Parameters.AddWithValue("@groupID", schedule.GroupId);
                query.Parameters.AddWithValue("@level", schedule.LevelId);
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

        public bool updateSchedule(Schedule schedule)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update horario set dia = @day, horaInicio= @start, horaFinal=@end where grupo_idGrupo= @groupId and grupo_nivel_idNivel = @level and idHorario = @id;", conn);
                query.Parameters.AddWithValue("@day", schedule.Day);
                query.Parameters.AddWithValue("@start", schedule.StartTime);
                query.Parameters.AddWithValue("@end", schedule.EndTime);
                query.Parameters.AddWithValue("@groupID", schedule.GroupId);
                query.Parameters.AddWithValue("@level", schedule.LevelId);
                query.Parameters.AddWithValue("@id", schedule.ScheduleId);
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

        public bool deleteSchedule(int id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from horario where idHorario = @id", conn);
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
