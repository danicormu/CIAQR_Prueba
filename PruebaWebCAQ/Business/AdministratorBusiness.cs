using System.Collections.Generic;
using PruebaWebCAQ.Data;
using PruebaWebCAQ.Domain;
using System.Security.Cryptography;
using System.Text;

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

        //Servicio de encriptacion
        public string encryption(string pass)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;
            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(pass));
            StringBuilder encryptdata = new StringBuilder();
            for (int i = 0; i < encrypt.Length; i++)
            {
                encryptdata.Append(encrypt[i].ToString());
            }
            return encryptdata.ToString();
        }

    }
}
