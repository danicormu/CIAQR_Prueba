using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;

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
                Event ev = null;
                Chronogram ch = null;

                if (eventName_txt.Text == "" || eventDesc_txt.Text == " "
                    || eventDate_txt.Text == " " || eventType_txt.Text == " ")
                {
                    lblWarning.Text = "Complete los espacios*";
                }
                else
                { 
                    ev = new Event(eventName_txt.Text, eventDesc_txt.Text, eventDate_txt.Text, eventType_txt.Text, ch.IdChronogram);
                    ch = new Chronogram(DateTime.Now.ToShortDateString(), DateTime.Today.ToShortDateString());
                    EBusiness.createEventService(ev);
                    CBusiness.addChronogramService(ch);
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
                ((Label)e.Item.FindControl("eventIdAd")).Visible = true;
                ((Label)e.Item.FindControl("eventNameAd")).Visible = false;
                ((Label)e.Item.FindControl("eventDateAd")).Visible = false;
                ((Label)e.Item.FindControl("eventTypeAd")).Visible = false;
                ((Label)e.Item.FindControl("eventDescAd")).Visible = false;
                ((TextBox)e.Item.FindControl("txtNameEdit")).Visible = true;
                ((TextBox)e.Item.FindControl("txtDateEdit")).Visible = true;
                ((TextBox)e.Item.FindControl("txtTypeEdit")).Visible = true;
                ((TextBox)e.Item.FindControl("txtDescEdit")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_Edit")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_Update")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_CancelUpdate")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_Delete")).Visible = false;
            }

            if(e.CommandName == "updateItem")
            {
                Event ev = null;
                string nameEdited = ((TextBox)e.Item.FindControl("txtNameEdit")).Text.Trim();
                string descEdited = ((TextBox)e.Item.FindControl("txtDescEdit")).Text.Trim();
                string dateEdited = ((TextBox)e.Item.FindControl("txtDateEdit")).Text.Trim();
                string typeEdited = ((TextBox)e.Item.FindControl("txtTypeEdit")).Text.Trim();
                ev = new Event(nameEdited, descEdited, dateEdited, typeEdited);
                EBusiness.updateEventService(ev);
                Response.Redirect("AdminEvent.aspx");
            }

            if(e.CommandName == "cancelUpdate")
            {
                ((Label)e.Item.FindControl("eventIdAd")).Visible = true;
                ((Label)e.Item.FindControl("eventNameAd")).Visible = true;
                ((Label)e.Item.FindControl("eventDateAd")).Visible = true;
                ((Label)e.Item.FindControl("eventTypeAd")).Visible = true;
                ((Label)e.Item.FindControl("eventDescAd")).Visible = true;
                ((TextBox)e.Item.FindControl("txtNameEdit")).Visible = false;
                ((TextBox)e.Item.FindControl("txtDateEdit")).Visible = false;
                ((TextBox)e.Item.FindControl("txtTypeEdit")).Visible = false;
                ((TextBox)e.Item.FindControl("txtDescEdit")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_Edit")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_Update")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_CancelUpdate")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_Delete")).Visible = true;
                Response.Redirect("AdminEvent.aspx");
            }

        }       
    }
}