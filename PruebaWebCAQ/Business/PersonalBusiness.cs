using System.Collections.Generic;
using PruebaWebCAQ.Data;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Business
{
    class PersonalBusiness
    {
        PersonalData data = new PersonalData();

        //servicio de listado de personal
        public List<Personal> returnAllEmployesService()
        {
            return data.getAllPersonal();
        }

        public List<Personal> returnAllProfessors()
        {
            return data.getProfessors();
        }

        public List<Personal> returnAllAdministrative()
        {
            return data.getAdministrative();
        }
        //servicio de agregado de personal
        public string addService(Personal person)
        {
            string success = "";
            if (data.insertPerson(person))
                success = "Se ha agregado un miembro con éxito";
            else
                success = "No ha sido agregado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        // servicio de actualizacion de datos
        public string updateService(Personal person)
        {
            string success = "";
            if (data.updatePersonal(person))
                success = "Se han actualizado los datos de "+ person.Name;
            else
                success = "No ha sido actualizado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        // servicio de borrado
        public string deleteService(int id)
        {
            string success = "";
            if (data.deletePerson(id))
                success = "Se ha eleminado un miembro con exitó";
            else
                success = "No ha sido eliminado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

    }
}
