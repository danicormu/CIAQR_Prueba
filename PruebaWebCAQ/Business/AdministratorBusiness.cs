using System.Collections.Generic;
using PruebaWebCAQ.Data;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Business
{
    class AdministratorBusiness
    {
        AdministratorData data= new AdministratorData();

        // servicio de listado de administradores(todos los que se encuentren en la bd) 
        public List<Administrator> administratorListService()
        {
            return data.getAllAdministrators();
        }

        //servicio que indica si el login es exitoso o fracasó
        public bool loginService(string username, string password)
        {
            bool parameter = false;
            //string parameter = "";
            if (data.login(username, password))
                parameter = true;
            else
                parameter = false;
            return parameter;

        }

        //servicio para agregar usuarios administradores
        public bool insertService(Administrator admin)
        {
            return data.addAdministrator(admin);
        }

        //servicio para modificar las credenciales de los admininstradores
        public bool updateService(Administrator admin)
        {
            return data.updateAdmininistrator(admin);
        }

        //servicio que elimina un usuario administrador
        public bool deleteService(int id)
        {
            return data.deleteAdministrator(id);
        }



    }
}
