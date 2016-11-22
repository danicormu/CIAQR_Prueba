using System.Collections.Generic;
using PruebaWebCAQ.Data;

namespace PruebaWebCAQ.Business
{
    class GaleryBusiness
    {
        GaleryData data = new GaleryData();

        // servicio de listado de fotos.
        public List<galeria> galeryService()
        {
            return data.getAllGalery();
        }

        //servicio de almacenamiento de fotografias para la galeria
        public string insertImageToGaleryService(galeria gallery)
        {
            string success = "";
            if (data.insertIntoGallery(gallery))
                success = "La imagen se ha agregadoa  la galeria exitosamente.";
            else
                success = "La imagen no ha sido agregada. Revise su conexión a la red o contecte a su proveedor de servicios";
            return success;
        }

        //servicio de update de imagenes
        public string updateImageService(galeria gallery)
        {
            string success = "";
            if (data.updateImages(gallery))
                success = "La imagen se ha actualizado con éxito";
            else
                success = "La imagen no ha sido actualizada. Revise su conexión a la red o contecte a su proveedor de servicios";
            return success;
        }

        // servicio de delete imagenes
        public string deleteImageService(int id)
        {
            string success = "";
            if (data.deleteImage(id))
                success = "La imagen se ha eliminada con exitó";
            else
                success = "La imagen no ha sido eliminada. Revise su conexión a la red o contecte a su proveedor de servicios";
            return success;
        } 

    }
}
