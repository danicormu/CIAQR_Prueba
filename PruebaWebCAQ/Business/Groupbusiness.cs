using System.Collections.Generic;
using PruebaWebCAQ.Data;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Business
{
    class Groupbusiness
    {
        GroupData data = new GroupData();

        // servicio de listado
        public List<Group> allGroupsService()
        {
            return data.getAllGroups();
        }

        //servicio de listado de un solo nivel
        public List<Group> getGroupsByLevelService(int level)
        {
            return data.getGroupsByLevel(level);
        }

        //servicio de agregado de grupos
        public string addGroupservice(Group group)
        {
            string success = "";
            if(data.addGroup(group))
                success = "El grupo ha sido agregado";
            else
                success = "El grupo no ha sido agregado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        //servicio de actualizaciones
        public string updateGroupService(Group group, string idGroup)
        {
            string success = "";
            if (data.updateGroupName(group, idGroup))
                success = "El grupo ha sido actualizado";
            else
                success = "El grupo no ha sido actualizado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        //servicio de borrado
        public string deleteGroup(string idGroup)
        {
            string success = "";
            if(data.deleteGroup(idGroup))
                success = "El grupo ha sido eliminado";
            else
                success = "El grupo no ha sido eliminado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }
    }
}
