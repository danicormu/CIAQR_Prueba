﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ
{
    public partial class AdminChrono : System.Web.UI.Page
    {
        CronogramBusiness chBusiness = new CronogramBusiness();
        private List<Chronogram> list_chrono;
        private int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            list_chrono = chBusiness.getAllChronogramsService();
            makeChronogram.DataSource = list_chrono;
            makeChronogram.DataBind();
        }

        protected void createEvent_Click(object sender, EventArgs e)
        {

        }

        protected void cancelCrEvent_Click(object sender, EventArgs e)
        {

        }

        protected void makeChronogram_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        protected void makeChronogram_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        
    }
}