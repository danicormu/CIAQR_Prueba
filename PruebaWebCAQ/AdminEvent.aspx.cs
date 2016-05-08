using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;
using AjaxControlToolkit;

namespace PruebaWebCAQ
{
    public partial class AdminEvent : System.Web.UI.Page
    {
        EventBusiness EBusiness = new EventBusiness();
        CronogramBusiness CBusiness = new CronogramBusiness();
        private List<Event> list_event;
        private int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
            list_event = EBusiness.getAllEventsService();
            EventRepeater.DataSource = list_event;
            EventRepeater.DataBind();
            
        }

        // Evento que inserta un evento 
        protected void btnCreateEvent_Click(object sender, EventArgs e)
        {
            try
            {
                if (eventName_txt.Text == "" && eventDesc_txt.Text == " "
                    && eventDate_txt.Text == " " && eventType_txt.Text == " ")
                {
                    lblWarning.Text = "Complete los espacios*";
                }
                else
                { 
                    
                    Chronogram ch = new Chronogram(DateTime.Now.ToShortDateString(), DateTime.Today.ToShortDateString());
                    CBusiness.addChronogramService(ch);
                    int id = CBusiness.getAllChronogramsService().ElementAt(0).IdChronogram;
                    Event ev = new Event(eventName_txt.Text, eventDesc_txt.Text, eventDate_txt.Text, eventType_txt.Text, id);
                    EBusiness.createEventService(ev);
                    Response.Redirect("AdminEvent.aspx");                
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                lblWarning.Text = "Error al crear el evento*";
            }            
        }
        
        // Metodo para cancelar el evento 
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearSpace();
        }

        // Metodo que me limpia los espacios de los textbox
        public void ClearSpace()
        {
            eventName_txt.Text = string.Empty;
            eventDate_txt.Text = string.Empty;
            eventType_txt.Text = string.Empty;
            eventDesc_txt.Text = string.Empty;
        }

        // Metodo que rellena la tabla con los eventos que se encuentren en la base de datos.
        protected void EventRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("eventIdAd");
                id.Text = Convert.ToString(list_event.ElementAt(i).EventId);
                Label name = (Label)e.Item.FindControl("eventNameAd");
                name.Text = list_event.ElementAt(i).EventName;
                Label date = (Label)e.Item.FindControl("eventDateAd");
                date.Text = list_event.ElementAt(i).Date;
                Label type = (Label)e.Item.FindControl("eventTypeAd");
                type.Text = list_event.ElementAt(i).EventType;
                Label description = (Label)e.Item.FindControl("eventDescAd");
                description.Text = list_event.ElementAt(i).Description;
                i++;                
            }    
        }

        // Evento para editar, eliminar, actualizar una fila del repeater
        protected void EventRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "deleteItem")
            {
                Label lbl = e.Item.FindControl("eventIdAd") as Label;
                int idItem = Convert.ToInt32(lbl.Text);
                EBusiness.deleteEventService(idItem);
                Response.Redirect("AdminEvent.aspx");
            }

            if(e.CommandName == "editItem")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
                Label name = (Label)e.Item.FindControl("eventNameAd");
                nameLabel.Text = "Nombre del Evento" + " (" + name.Text + ")";
                Label date = (Label)e.Item.FindControl("eventDateAd");
                Label type = (Label)e.Item.FindControl("eventTypeAd");
                Label description = (Label)e.Item.FindControl("eventDescAd");
                dateLabel.Text = "Fecha (" + date.Text + ")";
                typeLabel.Text = "Tipo ("+type.Text + ")";
                descLabel.Text = "Descripcion (" + description.Text + ")";
                Label id = (Label)e.Item.FindControl("eventIdAd");
                int eventIdToUpdate = Convert.ToInt32(id.Text);
                eventID.Text = eventIdToUpdate.ToString();
                popup.Show();
            }
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Event ev = new Event(Convert.ToInt32(eventID.Text), nameToEdit.Value, descriptionToEdit.Value, dateToEdit.Value, typeToEdit.Value);
            EBusiness.updateEventService(ev);
            Response.Redirect("AdminEvent.aspx");
        }
    }
}