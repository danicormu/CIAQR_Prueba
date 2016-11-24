using System.Collections.Generic;
using System.Linq;


namespace PruebaWebCAQ.Data
{
    class AdministratorData
    {

        DB_A13EB9_DBcolegioEntities DbContext = new DB_A13EB9_DBcolegioEntities();

        //lista a todos los administradores
        public List<administrador> getAllAdministrators()
        {
            return DbContext.administrador.ToList();    
        }

        //Obtiene el id de un administrador
        public int getAdminID(string username, string pass)
        {
           administrador admin =  DbContext.administrador.Where(a => a.password == pass && a.usuario == username).FirstOrDefault();
           return admin.idAdmin;
        }

        //login recibe usuario y password
        public bool login(string username, string password)
        {
            administrador admin = DbContext.administrador.Where(a => a.password == password && a.usuario == username).FirstOrDefault();
            if (admin != null)
                return true;
            else
                return false;
        }


        //inserta un nuevo administrador
        public bool addAdministrator(administrador administrator)
        {
            DbContext.administrador.Add(administrator);
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        //hace un update del nombre de usuario o de la contraseña del administrador
        public bool updateAdministrator(administrador administrator)
        {
            administrador admin = DbContext.administrador.Where(a => a.idAdmin == administrator.idAdmin).FirstOrDefault();
            admin.usuario = administrator.usuario;
            admin.password = administrator.password;
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
           
        }

        //elimina un administrador
        public bool deleteAdministrator(int id)
        {
            administrador admin = DbContext.administrador.Where(a => a.idAdmin == id).FirstOrDefault();
            DbContext.administrador.Remove(admin);
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }
    }

}
