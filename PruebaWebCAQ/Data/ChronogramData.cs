using System.Collections.Generic;
using System.Linq;

namespace PruebaWebCAQ.Data
{
    class ChronogramData
    {
        DB_A13EB9_DBcolegioEntities DBContext = new DB_A13EB9_DBcolegioEntities();
        // lista los cronogramas en existencia
        public List<cronograma> getAllChronogram()
        {
            return DBContext.cronograma.ToList();
        }

        //agrega cronograma
        public bool addChronogram(cronograma chronogram)
        {
            DBContext.cronograma.Add(chronogram);
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        // update de cronograma
        public bool updateChronogram(cronograma chronogram)
        {
            cronograma chron = DBContext.cronograma.Where(c => c.idCronograma == chronogram.idCronograma).FirstOrDefault();
            chron.evento = chronogram.evento;
            chron.horaInicio = chronogram.horaInicio;
            chron.horaFin = chronogram.horaFin;
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        // borrar un cronograma
        public bool deleteChronogram(int id)
        {
            cronograma chron = DBContext.cronograma.Where(c => c.idCronograma == id).FirstOrDefault();
            DBContext.cronograma.Remove(chron);
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }
    }
}
