using System.Linq;
using System.Collections.Generic;

namespace PruebaWebCAQ.Data
{
    class GaleryData
    {
        DBcolegioEntities dbContext = new DBcolegioEntities();
        //lista todas las imagenes de la galeria.
        public List<galeria> getAllGalery()
        {
            return dbContext.galeria.ToList();
        }

        // inserta imagenes en la bd 
        public bool insertIntoGallery(galeria gallery)
        {
            dbContext.galeria.Add(gallery);
            if (dbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        // hace un update de unicamente el nombre o la descripción o la fecha de la fotografia.
        // si se desea cambiar la foto se debe eliminar y subir una nueva. Porque si no se hace un desmadre.
        public bool updateImages(galeria gallery)
        {
            galeria gal = dbContext.galeria.Where(g => g.idFoto == gallery.idFoto).FirstOrDefault();
            gal.descripcion = gallery.descripcion;
            gal.fecha = gallery.fecha;
            gal.nombre = gallery.nombre;
            gal.foto = gallery.foto;
            if (dbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        //delete de la imagen, se borra el objeto completo.
        public bool deleteImage(int id)
        {
            galeria gal = dbContext.galeria.Where(g => g.idFoto == id).FirstOrDefault();
            dbContext.galeria.Remove(gal);
            if (dbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }
    }
}
