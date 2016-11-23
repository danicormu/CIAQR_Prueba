using System.Linq;
using System.Collections.Generic;


namespace PruebaWebCAQ.Data
{
    class PersonalData
    {
        DBcolegioEntities DbContext = new DBcolegioEntities();
        // lista de personal
        public List<personal> getAllPersonal()
        {
            return DbContext.personal.ToList();
        }

        public List<personal> getProfessors()
        {
            return DbContext.personal.Where(p => p.rol == "Profesor" || p.rol == "Profesora").ToList();
        }

        public List<personal> getAdministrative()
        {
            return DbContext.personal.Where(p => p.rol == "Miembro de Junta").ToList();
        }

        //agrega un nuevo miembro al personal
        public bool insertPerson(personal person)
        {
            DbContext.personal.Add(person);
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        //hace un update del miembro del personal.
        public bool updatePersonal(personal person)
        {
            personal personal = DbContext.personal.Where(p => p.idPersona == person.idPersona).FirstOrDefault();
            personal.descripcion = person.descripcion;
            personal.foto = person.foto;
            personal.nombre = person.nombre;
            personal.rol = person.rol;
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        //borra un miembro del personal
        public bool deletePerson(int id)
        {
            personal personal = DbContext.personal.Where(p => p.idPersona == id).FirstOrDefault();
            DbContext.personal.Remove(personal);
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;

        }
    }
}
