using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaWebCAQ
{
    public partial class AdminEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateEvent(object sender, EventArgs e)
        {
            if(eventName_txt.Text != "" && eventDate_txt.Text != "" &&
                eventType_txt.Text != "" && eventDesc_txt.Text != "")
            {

            }
        }
        protected void btnClear(object sender, EventArgs e)
        {
            eventName_txt.Text = "";
            eventDate_txt.Text = "";
            eventType_txt.Text = "";
            eventDesc_txt.Text = "";
        }
    }
}