using System.Linq;
using System.Collections.Generic;



namespace PruebaWebCAQ.Data
{
    class EventData
    {
        DB_A13EB9_DBcolegioEntities DbContext = new DB_A13EB9_DBcolegioEntities();
        // Metodo que muestra todos los eventos
        public List<evento> getAllEvents()
        {
            return DbContext.evento.ToList();
        }

        // Metodo agregar evento
        public bool addEvent(evento eve)
        {
            DbContext.evento.Add(eve);
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        // Metodo que edita el evento
        public bool updateEvent(evento eve)
        {
            evento even = DbContext.evento.Where(e => e.idEvento == eve.idEvento).FirstOrDefault();
            even.descripcion = eve.descripcion;
            even.fecha = eve.fecha;
            even.nombreEvento = eve.nombreEvento;
            even.tipoEvento = eve.tipoEvento;
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        // Metodo para eliminar el evento 
        public bool deleteEvent(int id)
        {
            evento even = DbContext.evento.Where(e => e.idEvento == id).FirstOrDefault();
            DbContext.evento.Remove(even);
            if (DbContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }
    }
}
