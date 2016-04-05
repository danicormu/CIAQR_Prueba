using System.Collections.Generic;
using PruebaWebCAQ.Data;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Business
{
    class EventBusiness
    {
        EventData data = new EventData();

        public List<Event> getAllEventsService()
        {
            return data.getAllEvents();
        }

        public string createEventService(Event eve)
        {
            string success = "";
            if (data.addEvent(eve))
                success = "Evento creado";
            else
                success= "El evento no ha sido creado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        public string updateEventService(Event eve)
        {
            string success = "";
            if (data.updateEvent(eve))
                success = "Evento actualizado";
            else
                success= "El evento no ha sido actializado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        public string deleteEventService(int id)
        {
            string success = "";
            if(data.deleteEvent(id))
                success = "Evento eliminado";
            else
                success = "El evento no ha sido eliminado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }
    }
}
