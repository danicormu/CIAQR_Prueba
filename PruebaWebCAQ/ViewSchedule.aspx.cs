using AjaxControlToolkit;
using PruebaWebCAQ.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace PruebaWebCAQ
{
    public partial class ViewSchedule : System.Web.UI.Page
    {
        private SignatureBusiness signature= new SignatureBusiness();
        private List<materia> signatureList;
        private List<string> startTimeList = new List<string>();
        private List<string> endTimeList = new List<string>();
        private string groupName = "";
        private List<materia> listToShow = new List<materia>();
        private int j = 0;
        private int t = 0;
        private int w = 0;
        private int f = 0;
        private int th = 0;

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
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Lunes");
            mondayList.DataSource = signatureList;
            mondayList.DataBind();
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Martes");
            tuesdayList.DataSource = signatureList;
            tuesdayList.DataBind();
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Miércoles");
            wendsdayList.DataSource = signatureList;
            wendsdayList.DataBind();
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Jueves");
            thursdarList.DataSource = signatureList;
            thursdarList.DataBind();
            signatureList = signature.getSignatureByGrupoIDService(groupName, "Viernes");
            fridayList.DataSource = signatureList;
            fridayList.DataBind();
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

        protected void tuesdayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            
            HiddenField button = (HiddenField)e.Item.FindControl("hiddenId");
            int id = Convert.ToInt32(button.Value);
            materia sig = signature.getsignatureByIdService(id);
            signatureText.Text = sig.nombreMateria;
            prof.Text = sig.profesor;
            start.Text = sig.horaInicio;
            end.Text = sig.horaFinal;  
            ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
            popup.Show();
        }

        protected void wendsdayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            HiddenField button = (HiddenField)e.Item.FindControl("hiddenId");
            int id = Convert.ToInt32(button.Value);
            materia sig = signature.getsignatureByIdService(id);
            signatureText.Text = sig.nombreMateria;
            prof.Text = sig.profesor;
            start.Text = sig.horaInicio;
            end.Text = sig.horaFinal;
            ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
            popup.Show();
        }

        protected void thursdarList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            HiddenField button = (HiddenField)e.Item.FindControl("hiddenId");
            int id = Convert.ToInt32(button.Value);
            materia sig = signature.getsignatureByIdService(id);
            signatureText.Text = sig.nombreMateria;
            prof.Text = sig.profesor;
            start.Text = sig.horaInicio;
            end.Text = sig.horaFinal;
            ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
            popup.Show();
        }

        protected void fridayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            HiddenField button = (HiddenField)e.Item.FindControl("hiddenId");
            int id = Convert.ToInt32(button.Value);
            materia sig = signature.getsignatureByIdService(id);
            signatureText.Text = sig.nombreMateria;
            prof.Text = sig.profesor;
            start.Text = sig.horaInicio;
            end.Text = sig.horaFinal;
            ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
            popup.Show();
        }

        protected void mondayList_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            HiddenField button = (HiddenField)e.Item.FindControl("hiddenId");
            int id = Convert.ToInt32(button.Value);
            materia sig = signature.getsignatureByIdService(id);
            signatureText.Text = sig.nombreMateria;
            prof.Text = sig.profesor;
            start.Text = sig.horaInicio;
            end.Text = sig.horaFinal;
            ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
            popup.Show();
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void fridayList_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
        {
            int index = 0;
            index++;
        }

        protected void mondayList_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton sign=  (LinkButton)e.Item.FindControl("Monday");
            sign.Text = signatureList.ElementAt(j).nombreMateria;
            HiddenField id = (HiddenField)e.Item.FindControl("hiddenId");
            id.Value = signatureList.ElementAt(j).idMateria.ToString();
            j++;
        }

        protected void tuesdayList_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton sign = (LinkButton)e.Item.FindControl("tuesday");
            sign.Text = signatureList.ElementAt(t).nombreMateria;
            HiddenField id = (HiddenField)e.Item.FindControl("hiddenId");
            id.Value = signatureList.ElementAt(t).idMateria.ToString();
            t++;
        }

        protected void wendsdayList_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton sign = (LinkButton)e.Item.FindControl("wendsday");
            sign.Text = signatureList.ElementAt(w).nombreMateria;
            HiddenField id = (HiddenField)e.Item.FindControl("hiddenId");
            id.Value = signatureList.ElementAt(w).idMateria.ToString();
            w++;
        }

        protected void thursdarList_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton sign = (LinkButton)e.Item.FindControl("thursday");
            sign.Text = signatureList.ElementAt(th).nombreMateria;
            HiddenField id = (HiddenField)e.Item.FindControl("hiddenId");
            id.Value = signatureList.ElementAt(th).idMateria.ToString();
            th++;
        }

        protected void fridayList_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            LinkButton sign = (LinkButton)e.Item.FindControl("friday");
            sign.Text = signatureList.ElementAt(f).nombreMateria;
            HiddenField id = (HiddenField)e.Item.FindControl("hiddenId");
            id.Value = signatureList.ElementAt(f).idMateria.ToString();
            f++;
        }
    }
}