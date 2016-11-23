using PruebaWebCAQ.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace PruebaWebCAQ
{
    public partial class AdminSchedule : System.Web.UI.Page
    {
        private List<grupo> groupList = new List<grupo>();
        private Groupbusiness groupBusiness = new Groupbusiness();
        private SignatureBusiness signatureBusiness = new SignatureBusiness();
        private ScheduleBusiness scheduleBusiness = new ScheduleBusiness();
        private List<horario> scheduleList = new List<horario>();
        private int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            scheduleList = scheduleBusiness.getScheduleService();
            scheduleRepeater.DataSource = scheduleList;
            scheduleRepeater.DataBind();
        }


        protected void selectLvl_Click(object sender, EventArgs e)
        {
            if(groupSlct.Items.Count != 0)
                groupSlct.Items.Clear();
            string level = selectLevel.SelectedItem.Text;
            groupList =  groupBusiness.getGroupsByLevelService(Convert.ToInt32(level));
            foreach (var element in groupList)
            {
                groupSlct.Items.Add(new ListItem(element.idGrupo));
            }
        }

        protected void saveSchedule_Click(object sender, EventArgs e)
        {
            string group = groupSlct.SelectedItem.Text;
            string lvl = selectLevel.SelectedItem.Text;
            string day = selectDay.SelectedItem.Text;
            if (!scheduleBusiness.getSchedule(day, group))
            {
                horario schedule = new horario();
                schedule.dia = day;
                schedule.grupo_idGrupo = group;
                schedule.grupo_nivel_idNivel= Convert.ToInt32(lvl);
                scheduleBusiness.createScheduleService(schedule);
                List<materia> signatureList = new List<materia>();
                materia signature = new materia();
                signature.nombreMateria = firstLecSb.Text;
                signature.horario_dia = day;
                signature.profesor = fisrtLecTeacher.Text;
                signature.horario_grupo_idGrupo = group;
                signature.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature.horario.horaInicio = lblFirHI.Text;
                signature.horario.horaFinal=lblFirHF.Text;
                signatureList.Add(signature);
                materia signature1 = new materia();// secLecSb.Text, day, secLecTeacher.Text, group, Convert.ToInt32(lvl), lblSecHI.Text, lblSecHF.Text);
                signatureList.Add(signature1);
                materia recess = new materia();// lblFBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblFBreakHI.Text, lblFBreakHF.Text);
                signatureList.Add(recess);
                materia signature2 = new materia();// thirdLecSb.Text, day, thirdLecTeacher.Text, group, Convert.ToInt32(lvl), lblThiHI.Text, lblThiHF.Text);
                signatureList.Add(signature2);
                materia signature3 = new materia();// fouthLecSb.Text, day, fouthLecTeacher.Text, group, Convert.ToInt32(lvl), lblFouHI.Text, lblFouHF.Text);
                signatureList.Add(signature3);
                materia break2 = new materia(); //lblSBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblSBreakHI.Text, lblSBreakHF.Text);
                signatureList.Add(break2);
                materia signature4 = new materia();// fifthLecSb.Text, day, fifthLecTeacher.Text, group, Convert.ToInt32(lvl), lblFifHI.Text, lblFifHF.Text);
                signatureList.Add(signature4);
                materia signature5 = new materia();// sixthLecSb.Text, day, sixthLecTeacher.Text, group, Convert.ToInt32(lvl), lblSixHI.Text, lblSixHF.Text);
                signatureList.Add(signature5);
                materia lunch = new materia();// lblLunch.Text, day, "----", group, Convert.ToInt32(lvl), lblLunchHI.Text, lblLunchHF.Text);
                signatureList.Add(lunch);
                materia signature6 = new materia();// seventhLecSb.Text, day, sevenththirdLecTeacher.Text, group, Convert.ToInt32(lvl), lblSevHI.Text, lblSevHF.Text);
                signatureList.Add(signature6);
                materia signature7 = new materia();// eigthLecSb.Text, day, eigthLecTeacher.Text, group, Convert.ToInt32(lvl), lblEigHI.Text, lblEigHF.Text);
                signatureList.Add(signature7);
                materia break3 = new materia(); //lblTBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblThiHI.Text, lblThiHF.Text);
                signatureList.Add(break3);
                materia signature8 = new materia();// ninethLecSb.Text, day, ninethLecTeacher.Text, group, Convert.ToInt32(lvl), lblNinHI.Text, lblNinHF.Text);
                signatureList.Add(signature8);
                materia signature9 = new materia();// tenthLecSb.Text, day, tenthLecTeacher.Text, group, Convert.ToInt32(lvl), lblTenHI.Text, lblTenHF.Text);
                signatureList.Add(signature9);
                materia break4 = new materia();// lblFoBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblFoBreakHI.Text, lblFoBreakHF.Text);
                signatureList.Add(break4);
                materia signature10 = new materia();// eleventhLecSb.Text, day, eleventhLecTeacher.Text, group, Convert.ToInt32(lvl), lblEleHI.Text, lblEleHF.Text);
                signatureList.Add(signature10);
                materia signature11 = new materia();// twelvethLecSb.Text, day, twelvethLecTeacher.Text, group, Convert.ToInt32(lvl), lblTweHI.Text, lblTweHF.Text);
                signatureList.Add(signature11);
                foreach (var element in signatureList)
                {
                    signatureBusiness.createSignatureService(element);
                }
                message.InnerText = "Horario para el día " + day + ", del grupo " + group + ", ha sido creado con éxito";
                ModalPopupExtender1.Show();
                clearSpaces();
                i = 0;
                scheduleList = scheduleBusiness.getScheduleService();
                scheduleRepeater.DataSource = scheduleList;
                scheduleRepeater.DataBind();
            }
            else
            {
                message.InnerText = "No ha sido posible crear un horario para el dia "+day +",y el grupo " + group+". Puede que ya exista un horario para este día y grupo, si no intentelo más tarde.";
                ModalPopupExtender1.Show();
                clearSpaces();
            }
        }

        private void clearSpaces()
        {
            fisrtLecTeacher.Text = "";
            firstLecSb.Text = "";
            secLecSb.Text = "";
            secLecTeacher.Text = "";
            thirdLecSb.Text = "";
            thirdLecTeacher.Text = "";
            fouthLecTeacher.Text = "";
            fouthLecSb.Text = "";
            fifthLecSb.Text = "";
            fifthLecTeacher.Text = "";
            sixthLecSb.Text = "";
            sixthLecTeacher.Text = "";
            seventhLecSb.Text = "";
            sevenththirdLecTeacher.Text = "";
            eigthLecSb.Text = "";
            eigthLecTeacher.Text = "";
            ninethLecSb.Text = "";
            ninethLecTeacher.Text = "";
            tenthLecSb.Text = "";
            tenthLecTeacher.Text = "";
            eleventhLecSb.Text = "";
            eleventhLecTeacher.Text = "";
            twelvethLecSb.Text = "";
            twelvethLecTeacher.Text = "";
            
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void scheduleRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("idSchedule");
                id.Text = scheduleList.ElementAt(i).idHorario.ToString();
                Label day = (Label)e.Item.FindControl("scheduleDay");
                day.Text = scheduleList.ElementAt(i).dia;
                Label group = (Label)e.Item.FindControl("scheduleGroup");
                group.Text = scheduleList.ElementAt(i).grupo_idGrupo;
                Label level = (Label)e.Item.FindControl("scheduleLevel");
                level.Text = scheduleList.ElementAt(i).grupo_nivel_idNivel.ToString();
                LinkButton delete = (LinkButton)e.Item.FindControl("deleteBtn");
                delete.Text = "Eliminar";
                LinkButton edit = (LinkButton)e.Item.FindControl("editBtn");
                edit.Text = "Editar";
                i++;
            }
        }

        protected void scheduleRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("delete"))
            {
                Label day = (Label)e.Item.FindControl("scheduleDay");
                Label group = (Label)e.Item.FindControl("scheduleGroup");
                if (signatureBusiness.deleteSignatureService(day.Text, group.Text))
                {
                    Label id = (Label)e.Item.FindControl("idSchedule");
                    message.InnerText = scheduleBusiness.deleteScheduleService(Convert.ToInt32(id.Text)) + " para el grupo " + group.Text + " y el día " + day.Text + ".";
                }
                else
                    message.InnerText = "ha ocurrido un error. Por favor intentelo más tarde o contacte a su proovedor de servicios.";
                i = 0;
                scheduleList = scheduleBusiness.getScheduleService();
                scheduleRepeater.DataSource = scheduleList;
                scheduleRepeater.DataBind();
                ModalPopupExtender1.Show();
            }

            if (e.CommandName.Equals("edit"))
            {
                Label day = (Label)e.Item.FindControl("scheduleDay");
                Label group = (Label)e.Item.FindControl("scheduleGroup");
                Label level = (Label)e.Item.FindControl("scheduleLevel");
                Session["DayParameter"] = day.Text;
                Session["GroupParameter"] = group.Text;
                Session["Level"] = level.Text;
                Response.Redirect("EditSchedule.aspx");
            }
                
        }
    }
}