using AjaxControlToolkit;
using PruebaWebCAQ.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace PruebaWebCAQ
{
    public partial class EditSchedule : System.Web.UI.Page
    {
        private string day;
        private string group;
        private int lvl = 0;
        private int i = 0;
        private List<materia> signatureList = new List<materia>();
        private SignatureBusiness signature = new SignatureBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            group = Session["GroupParameter"].ToString();
            day = Session["DayParameter"].ToString();
            lvl = Convert.ToInt32(Session["Level"]);
            grpLabel.Text = group;
            dayLabel.Text = day;
            signatureList = signature.getSignatureByGrupoIDService(group, day);
            signatureRepeater.DataSource = signatureList;
            signatureRepeater.DataBind();
        }

        protected void signatureRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("signatureID");
                Label name = (Label)e.Item.FindControl("signatureName");
                Label day = (Label)e.Item.FindControl("signatureDay");
                Label prof = (Label)e.Item.FindControl("signatureProf");
                Label start = (Label)e.Item.FindControl("signatureStartTime");
                Label end = (Label)e.Item.FindControl("signatureEndTime");
                LinkButton edit = (LinkButton)e.Item.FindControl("editBtn");
                id.Text = signatureList.ElementAt(i).idMateria.ToString();
                name.Text = signatureList.ElementAt(i).nombreMateria;
                day.Text = signatureList.ElementAt(i).horario_dia;
                prof.Text = signatureList.ElementAt(i).profesor;
                start.Text = signatureList.ElementAt(i).horario.horaInicio;
                end.Text = signatureList.ElementAt(i).horario.horaFinal;
                edit.Text = "Editar";
                i++;
            }     
        }

        protected void signatureRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("edit"))
            {
                Label id = (Label)e.Item.FindControl("signatureID");
                Label name = (Label)e.Item.FindControl("signatureName");
                Label day = (Label)e.Item.FindControl("signatureDay");
                Label prof = (Label)e.Item.FindControl("signatureProf");
                Label start = (Label)e.Item.FindControl("signatureStartTime");
                Label end = (Label)e.Item.FindControl("signatureEndTime");
                idToUpdate.Text = id.Text;
                nameToEdit.Text = "Nombre";
                updateName.Text = name.Text;
                dayToEdit.Text = "Día";
                updateDay.Text = day.Text;
                profToEdit.Text = "Profesor";
                updateProf.Text = prof.Text;
                startToEdit.Text = "Hora de Inicio";
                updateStart.Text = start.Text;
                endToEdit.Text = "Hora Final";
                updateEnd.Text = end.Text;
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
                popup.Show(); 
            }
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            materia sig = new materia();
            sig.idMateria = Convert.ToInt32(idToUpdate.Text);
            sig.nombreMateria = updateName.Text;
            sig.horario_dia = updateDay.Text;
            sig.profesor = updateProf.Text;
            sig.horario_grupo_idGrupo = group;
            sig.horario_grupo_nivel_idNivel = lvl;
            sig.horario.horaInicio = updateStart.Text;
            sig.horario.horaFinal=updateEnd.Text;
            message.InnerText = signature.updateSignatureService(sig);
            i=0;
            signatureList = signature.getSignatureByGrupoIDService(group, day);
            signatureRepeater.DataSource = signatureList;
            signatureRepeater.DataBind();
            ModalPopupExtender2.Show();
        }

        protected void btnCancelTo_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSchedule.aspx");
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }
    }
}