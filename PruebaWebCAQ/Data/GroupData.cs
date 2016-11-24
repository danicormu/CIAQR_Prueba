using System.Collections.Generic;
using System.Linq;

namespace PruebaWebCAQ.Data
{
    class GroupData
    {
        DB_A13EB9_DBcolegioEntities DBContext = new DB_A13EB9_DBcolegioEntities();

        // lista todos los grupos en existencia
        public List<grupo> getAllGroups()
        {
            return DBContext.grupo.ToList();
        }

        // lista todos los grupos de un nivel
        public List<grupo> getGroupsByLevel(int level)
        {
            return DBContext.grupo.Where(g => g.nivel_idNivel == level).ToList();
            
        }

        // agregar grupos
        public bool addGroup(grupo grupo)
        {
            DBContext.grupo.Add(grupo);
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }


        // update del nombre del grupo
        public bool updateGroupName(grupo group, string idGroup)
        {
            grupo grp = DBContext.grupo.Where(g => g.idGrupo.Equals(idGroup)).FirstOrDefault();
            grp.horario = group.horario;
            grp.nivel = group.nivel;
            grp.nivel_idNivel = group.nivel_idNivel;
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        // delete del grupo, del grupo no del nivel en si.
        public bool deleteGroup(string id)
        {
            grupo group = DBContext.grupo.Where(g => g.idGrupo.Equals(id)).FirstOrDefault();
            DBContext.grupo.Remove(group);
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;            
        }
    }
}
