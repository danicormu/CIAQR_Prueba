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
            string typeEvent = selectType.SelectedItem.Text;
            string nameEvent = eventName_txt.Text;
            string dateEvent = eventDate_txt.Text;
            string descEvent = eventDesc_txt.Text;            
            try
            {
                if (nameEvent == "" || descEvent == ""
                    || dateEvent == "" || typeEvent == "")
                {
                    messageError.InnerText = "Complete los espacios";
                    ModalPopupExtender5.Show();
                }
                else
                {
                    Chronogram ch = new Chronogram(DateTime.Now.ToShortDateString(), DateTime.Today.ToShortDateString());
                    CBusiness.addChronogramService(ch);
                    int id = CBusiness.getAllChronogramsService().ElementAt(0).IdChronogram;
                    Event ev = new Event(nameEvent, descEvent, dateEvent, typeEvent, id);
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
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender3");
                Label lbl = e.Item.FindControl("eventIdAd") as Label;
                Label lblMessage = (Label)e.Item.FindControl("lblMsg");
                lblIdToDelete.Text = lbl.Text;
                popup.Show();

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

        protected void btnDeleteEvent_Click(object sender, EventArgs e)
        {
            EBusiness.deleteEventService(Convert.ToInt32(lblIdToDelete.Text));
            Response.Redirect("AdminEvent.aspx");
        }

        protected void processbtn_Click1(object sender, EventArgs e)
        {

        }

        protected void imgDate_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            eventDate_txt.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }
    }
}