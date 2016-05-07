using System.Collections.Generic;
using PruebaWebCAQ.Data;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Business
{
    class ScheduleBusiness
    {
        ScheduleData data = new ScheduleData();
        public List<Schedule> getScheduleService()
        {
            return data.getAllSchedule();
        }

        public bool getSchedule(string day, string group)
        {
            return data.getScheduleByDayAndGroup(day, group);
        }

        public string createScheduleService(Schedule schedule)
        {
            string success = "";
            if (data.addSchedule(schedule))
                success = "Se ha agregado un horario nuevo";
            else
                success = "No ha sido agregado el horario. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success; 
        }

        public string updateScheduleService(Schedule schedule)
        {
            string success = "";
            if(data.updateSchedule(schedule))
                success = "Se ha actualizado el horario";
            else
                success = "No ha sido actualizado el horario. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        public string deleteScheduleService(int id)
        {
            string success = "";
            if (data.deleteSchedule(id))
                success = "Se ha elimando un horario";
            else
                success = "No se ha eliminado el horario. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }
    }
}
