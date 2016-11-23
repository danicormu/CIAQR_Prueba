﻿using System.Collections.Generic;
using System.Linq;

namespace PruebaWebCAQ.Data
{
    class SignatureData
    {
        DBcolegioEntities DBContext = new DBcolegioEntities();

        public List<materia> getSignatures()
        {
            return DBContext.materia.ToList();
        }

        public List<materia> getSignaturesByGroupId(string groupName, string day)
        {
            return DBContext.materia.Where(m => m.horario_grupo_idGrupo == groupName && m.horario_dia == day).ToList();          
        }

        public materia getSignatureById(int id)
        {
            return DBContext.materia.Where(m => m.idMateria == id).FirstOrDefault();            
        }

        public bool addSignature(materia signature)
        {
            DBContext.materia.Add(signature);
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        public bool updateSignature(materia signature)
        {
            materia sig = DBContext.materia.Where(m => m.idMateria == signature.idMateria).FirstOrDefault();
            sig.nombreMateria = signature.nombreMateria;
            sig.profesor = signature.profesor;
            sig.horario = signature.horario;
            sig.horario_dia = signature.horario_dia;
            sig.horario_grupo_idGrupo = signature.horario_grupo_idGrupo;
            sig.horario_grupo_nivel_idNivel = signature.horario_grupo_nivel_idNivel;
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        public bool deleteSignature(string day, string group)
        {
            materia sig = DBContext.materia.Where(m => m.horario_dia == day && m.horario_grupo_idGrupo == group).FirstOrDefault();
            DBContext.materia.Remove(sig);
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }
    }
}
