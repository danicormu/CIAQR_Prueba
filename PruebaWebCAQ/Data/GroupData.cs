using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Data
{
    class GroupData:DBConnection
    {
        // lista todos los grupos en existencia
        public List<Group> getAllGroups()
        {
            List<Group> list = new List<Group>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from grupo;", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Group group = new Group(reader.GetString(0), reader.GetInt32(1));
                    list.Add(group);
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

        // lista todos los grupos de un nivel
        public List<Group> getGroupsByLevel(int level)
        {
            List<Group> list = new List<Group>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from grupo where nivel_idNivel = @level", conn);
                query.Parameters.AddWithValue("@level", level);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Group group = new Group(reader.GetString(0), reader.GetInt32(1));
                    list.Add(group);
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
            return list;
        }

        // agregar grupos
        public bool addGroup(Group group)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("insert into grupo values (@groupName, @level);", conn);
                query.Parameters.AddWithValue("@groupName", group.GroupName);
                query.Parameters.AddWithValue("@level", group.LevelId);
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


        // update del nombre del grupo
        public bool updateGroupName(Group group, string idGroup)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update grupo set idGrupo = @group where idGrupo = @id;", conn);
                query.Parameters.AddWithValue("@group", group.GroupName);
                query.Parameters.AddWithValue("@id", idGroup);
                conn.Open();
                if (query.ExecuteNonQuery() > 0)
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

        // delete del grupo, del grupo no del nivel en si.
        public bool deleteGroup(string id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from grupo where idGrupo = @id;", conn);
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
