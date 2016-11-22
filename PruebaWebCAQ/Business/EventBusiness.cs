using System.Collections.Generic;
using PruebaWebCAQ.Data;


namespace PruebaWebCAQ.Business
{
    class EventBusiness
    {
        EventData data = new EventData();

        // Obtiene todos los eventos
        public List<evento> getAllEventsService()
        {
            return data.getAllEvents();
        }

        // Crea evento
        public string createEventService(evento eve)
        {
            string success = "";
            if (data.addEvent(eve))
                success = "Evento creado";
            else
                success= "El evento no ha sido creado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        // Actualiza un Evento
        public string updateEventService(evento eve)
        {
            string success = "";
            if (data.updateEvent(eve))
                success = "Evento actualizado";
            else
                success= "El evento no ha sido actualizado. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        // Elimina los eventos
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
