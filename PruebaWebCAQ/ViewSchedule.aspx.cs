using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaWebCAQ
{
    public partial class ViewSchedule : System.Web.UI.Page
    {
        private SignatureBusiness signature= new SignatureBusiness();
        private List<Signature> signatureList;
        private List<string> startTimeList = new List<string>();
        private List<string> endTimeList = new List<string>();
        private string groupName = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            groupName = Request.QueryString["value"];
            groupTag.Text = groupName;
            loadstartTime();
            startList.DataSource = startTimeList;
            startList.DataBind();
            loadEndTime();
            endList.DataSource = endTimeList;
            endList.DataBind();
            loadMonday();
            loadTuesday();
            loadWendsday();
            loadThursday();
            loadFriday();
        }

        protected void loadstartTime()
        {
            startTimeList.Add("7:00");
            startTimeList.Add("7:40");
            startTimeList.Add("8:20");
            startTimeList.Add("8:35");
            startTimeList.Add("9:15");
            startTimeList.Add("9:55");
            startTimeList.Add("10:00");
            startTimeList.Add("10:40");
            startTimeList.Add("11:20");
            startTimeList.Add("12:00");
            startTimeList.Add("12:40");
            startTimeList.Add("1:20");
            startTimeList.Add("1:25");
            startTimeList.Add("2:05");
            startTimeList.Add("2:45");
            startTimeList.Add("3:00");
            startTimeList.Add("3:40");
        }

        private void loadEndTime()
        {
            endTimeList.Add("7:40");
            endTimeList.Add("8:20");
            endTimeList.Add("8:35");
            endTimeList.Add("9:15");
            endTimeList.Add("9:55");
            endTimeList.Add("10:00");
            endTimeList.Add("10:40");
            endTimeList.Add("11:20");
            endTimeList.Add("12:00");
            endTimeList.Add("12:40");
            endTimeList.Add("1:20");
            endTimeList.Add("1:25");
            endTimeList.Add("2:05");
            endTimeList.Add("2:45");
            endTimeList.Add("3:00");
            endTimeList.Add("3:40");
            endTimeList.Add("4:20");
        }

        protected void loadMonday()
        {
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Lunes");
            List<string> subList = new List<string>();
            foreach (var element in signatureList)
                subList.Add(element.Name);
            mondayList.DataSource = subList;
            mondayList.DataBind();
        }

        protected void mondayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
           
        }

        private void loadTuesday()
        {
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Martes");
            List<string> subList = new List<string>();
            foreach (var element in signatureList)
                subList.Add(element.Name);
            tuesdayList.DataSource = subList;
            tuesdayList.DataBind();
        }

        protected void tuesdayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }


        private void loadWendsday()
        {
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Miercoles");
            List<string> subList = new List<string>();
            foreach (var element in signatureList)
                subList.Add(element.Name);
            wendsdayList.DataSource = subList;
            wendsdayList.DataBind();
        }

        protected void wendsdayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }

        private void loadThursday()
        {
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Jueves");
            List<string> subList = new List<string>();
            foreach (var element in signatureList)
                subList.Add(element.Name);
            thursdarList.DataSource = subList;
            thursdarList.DataBind();
        }

        protected void thursdarList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }

        private void loadFriday()
        {
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Viernes");
            List<string> subList = new List<string>();
            foreach (var element in signatureList)
                subList.Add(element.Name);
            fridayList.DataSource = subList;
            fridayList.DataBind();
        }

        protected void fridayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            
        }
    }
}