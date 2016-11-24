using System;
using System.Collections.Generic;
using System.Linq;

namespace PruebaWebCAQ.Data
{
    class ScheduleData 
    {
        DB_A13EB9_DBcolegioEntities DBContext = new DB_A13EB9_DBcolegioEntities();

        public List<horario> getAllSchedule()
        {
            return DBContext.horario.ToList();
        }

        public bool getScheduleByDayAndGroup(string day, string group)
        {
            DBContext.horario.Where(h => h.dia == day && h.grupo_idGrupo == group).FirstOrDefault();
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }
        public bool addSchedule(horario schedule)
        {
            bool flag = false;
            try
            {
                DBContext.horario.Add(schedule);
                if (DBContext.SaveChanges() == 1)
                    flag= true;
                else
                    flag=  false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return flag;
        }

        public bool updateSchedule(horario schedule)
        {
            horario sch = DBContext.horario.Where(h => h.idHorario == schedule.idHorario).FirstOrDefault();
            sch.materia = schedule.materia;
            sch.horaInicio = schedule.horaInicio;
            sch.horaFinal = schedule.horaFinal;
            sch.grupo = schedule.grupo;
            sch.grupo_idGrupo = schedule.grupo_idGrupo;
            sch.grupo_nivel_idNivel = schedule.grupo_nivel_idNivel;
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }

        public bool deleteSchedule(int id)
        { 
            horario sch = DBContext.horario.Where(h => h.idHorario == id).FirstOrDefault();
            DBContext.horario.Remove(sch);
            if (DBContext.SaveChanges() == 1)
                return true;
            else
                return false;
        }
    }
}
