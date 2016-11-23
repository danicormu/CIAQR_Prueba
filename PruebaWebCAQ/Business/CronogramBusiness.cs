using System.Collections.Generic;
using PruebaWebCAQ.Data;

namespace PruebaWebCAQ.Business
{
    class CronogramBusiness
    {
        ChronogramData data = new ChronogramData();

        //servicio de listado de cronogramas
        public List<cronograma> getAllChronogramsService()
        {
            return data.getAllChronogram();
        }

        //servicio de agregacion
        public string addChronogramService(cronograma chronogram)
        {
            string success = "";
            if (data.addChronogram(chronogram))
                success = "Se ha creado un nuevo cronograma";
            else
                success = "No se ha creado el cronograma. Revise su conexión a internet o contacte a su proveedor de servicios";
            return success;
        }

        //servicio de actualizacion
        public string updateChronogramService(cronograma chronogram)
        {
            string success = "";
            if (data.addChronogram(chronogram))
                success = "Se ha actualizado el cronograma";
            else
                success = "No se ha actualizado el cronograma. Revise su conexión a internet o contacte a su proveedor de servicios";
            return success;
        }

        //servicio de eliminancion
        public string deleteChronogramService(int id)
        {
            string success = "";
            if (data.deleteChronogram(id))
                success = "Se ha eliminado un cronograma con exitó";
            else
                success = "No se ha elimando el cronograma. Revise su conexión a internet o contacte a su proveedor de servicios";
            return success;
        }
    }
}
