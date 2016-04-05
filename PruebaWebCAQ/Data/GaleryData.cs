using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Data
{
    class GaleryData:DBConnection
    {
        //lista todas las imagenes de la galeria.
        public List<Galery> getAllGalery()
        {
            List<Galery> list = new List<Galery>();
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("select * from galeria", conn);
                conn.Open();
                SqlDataReader reader = query.ExecuteReader();
                while (reader.Read())
                {
                    Galery image = new Galery(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetStream(3), reader.GetString(4));
                    list.Add(image);
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

        // inserta imagenes en la bd 
        public bool insertIntoGallery(Galery galery)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("insert into galeria values (@name,@description,@photo,@date);", conn);
                query.Parameters.AddWithValue("@name", galery.Name);
                query.Parameters.AddWithValue("@description", galery.Description);
                query.Parameters.AddWithValue("@photo", galery.PhotoToInsert);
                query.Parameters.AddWithValue("@date", galery.Date);
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

        // hace un update de unicamente el nombre o la descripción o la fecha de la fotografia.
        // si se desea cambiar la foto se debe eliminar y subir una nueva. Porque si no se hace un desmadre.
        public bool updateImages(Galery galery)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("update galeria set nombre = @name, descripcion = @description , fecha = @date where idFoto = @id", conn);
                query.Parameters.AddWithValue("@name", galery.Name);
                query.Parameters.AddWithValue("@description", galery.Description);
                query.Parameters.AddWithValue("@date", galery.Date);
                query.Parameters.AddWithValue("@id", galery.Id);
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

        //delete de la imagen, se borra el objeto completo.
        public bool deleteImage(int id)
        {
            bool flag = false;
            try
            {
                connectDB();
                SqlCommand query = new SqlCommand("delete from galeria where idFoto = @id;", conn);
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
