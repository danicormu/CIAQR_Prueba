﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;

namespace PruebaWebCAQ
{
    public partial class ViewChronogram : System.Web.UI.Page
    {
        EventBusiness eve = new EventBusiness();
        private List<evento> list;
        private int i=0;

        protected void Page_Load(object sender, EventArgs e)
        {
            list = eve.getAllEventsService();
            eventRepeater.DataSource = list;
            eventRepeater.DataBind();
        }

        protected void eventRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label name = (Label)e.Item.FindControl("activityName");
                name.Text = list.ElementAt(i).nombreEvento;
                Label description = (Label)e.Item.FindControl("activityDescription");
                description.Text = list.ElementAt(i).descripcion;
                Label date = (Label)e.Item.FindControl("activityDate");
                date.Text = list.ElementAt(i).fecha;
                Label type = (Label)e.Item.FindControl("activityType");
                type.Text = list.ElementAt(i).tipoEvento; 
                i++;
            }
        }
    }
}