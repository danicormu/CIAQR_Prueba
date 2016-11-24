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
                schedule.horaInicio = "7:00 AM";
                schedule.horaFinal = "4:20 PM";
                scheduleBusiness.createScheduleService(schedule);
                List<materia> signatureList = new List<materia>();
                materia signature = new materia();
                signature.nombreMateria = firstLecSb.Text;
                signature.horario_dia = day;
                signature.profesor = fisrtLecTeacher.Text;
                signature.horario_grupo_idGrupo = group;
                signature.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature.horaInicio = lblFirHI.Text;
                signature.horaFinal=lblFirHF.Text;
                signatureList.Add(signature);
                materia signature1 = new materia();
                signature1.nombreMateria = secLecSb.Text;
                signature1.horario_dia = day;
                signature1.profesor = secLecTeacher.Text;
                signature1.horario_grupo_idGrupo = group;
                signature1.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature1.horaInicio = lblSecHI.Text;
                signature1.horaFinal=lblSecHF.Text;
                signatureList.Add(signature1);
                materia recess = new materia();
                recess.nombreMateria = lblFBreak.Text;
                recess.horario_dia = day;
                recess.profesor = "----";
                recess.horario_grupo_idGrupo = group;
                recess.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                recess.horaInicio = lblFBreakHI.Text;
                recess.horaFinal=lblFBreakHF.Text;
                signatureList.Add(recess);
                materia signature2 = new materia();
                signature2.nombreMateria = thirdLecSb.Text;
                signature2.horario_dia = day;
                signature2.profesor = thirdLecTeacher.Text;
                signature2.horario_grupo_idGrupo = group;
                signature2.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature2.horaInicio = lblThiHI.Text;
                signature2.horaFinal=lblThiHF.Text;
                signatureList.Add(signature2);
                materia signature3 = new materia();
                signature3.nombreMateria = fouthLecSb.Text;
                signature3.horario_dia = day;
                signature3.profesor = fouthLecTeacher.Text;
                signature3.horario_grupo_idGrupo = group;
                signature3.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature3.horaInicio = lblFouHI.Text;
                signature3.horaFinal=lblFouHF.Text;
                signatureList.Add(signature3);
                materia break2 = new materia();
                break2.nombreMateria = lblSBreak.Text;
                break2.horario_dia = day;
                break2.profesor = "----";
                break2.horario_grupo_idGrupo = group;
                break2.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                break2.horaInicio = lblSBreakHI.Text;
                break2.horaFinal=lblSBreakHF.Text;
                signatureList.Add(break2);
                materia signature4 = new materia();
                signature4.nombreMateria = fifthLecSb.Text;
                signature4.horario_dia = day;
                signature4.profesor = fifthLecTeacher.Text;
                signature4.horario_grupo_idGrupo = group;
                signature4.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature4.horaInicio = lblFifHI.Text;
                signature4.horaFinal=lblFifHF.Text;
                signatureList.Add(signature4);
                materia signature5 = new materia();
                signature5.nombreMateria = sixthLecSb.Text;
                signature5.horario_dia = day;
                signature5.profesor = sixthLecTeacher.Text;
                signature5.horario_grupo_idGrupo = group;
                signature5.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature5.horaInicio = lblSixHI.Text;
                signature5.horaFinal = lblSixHF.Text;
                signatureList.Add(signature5);
                materia lunch = new materia();
                lunch.nombreMateria = lblLunch.Text;
                lunch.horario_dia = day;
                lunch.profesor= "----";
                lunch.horario_grupo_idGrupo = group;
                lunch.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                lunch.horaInicio = lblLunchHI.Text;
                lunch.horaFinal=lblLunchHF.Text;
                signatureList.Add(lunch);
                materia signature6 = new materia();
                signature6.nombreMateria = seventhLecSb.Text;
                signature6.horario_dia = day;
                signature6.profesor = sevenththirdLecTeacher.Text;
                signature6.horario_grupo_idGrupo = group;
                signature6.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature6.horaInicio = lblSevHI.Text;
                signature6.horaFinal=lblSevHF.Text;
                signatureList.Add(signature6);
                materia signature7 = new materia();
                signature7.nombreMateria = eigthLecSb.Text;
                signature7.horario_dia = day;
                signature7.profesor = eigthLecTeacher.Text;
                signature7.horario_grupo_idGrupo = group;
                signature7.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature7.horaInicio = lblEigHI.Text;
                signature7.horaFinal=lblEigHF.Text;
                signatureList.Add(signature7);
                materia break3 = new materia();
                break3.nombreMateria = lblTBreak.Text;
                break3.horario_dia = day;
                break3.profesor = "----";
                break3.horario_grupo_idGrupo = group;
                break3.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                break3.horaInicio = lblThiHI.Text;
                break3.horaFinal=lblThiHF.Text;
                signatureList.Add(break3);
                materia signature8 = new materia();
                signature8.nombreMateria = ninethLecSb.Text;
                signature8.horario_dia = day;
                signature8.profesor = ninethLecTeacher.Text;
                signature8.horario_grupo_idGrupo = group;
                signature8.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature8.horaInicio = lblNinHI.Text;
                signature8.horaFinal = lblNinHF.Text; 
                signatureList.Add(signature8);
                materia signature9 = new materia();
                signature9.nombreMateria = tenthLecSb.Text;
                signature9.horario_dia = day;
                signature9.profesor = tenthLecTeacher.Text;
                signature9.horario_grupo_idGrupo = group;
                signature9.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature9.horaInicio = lblTenHI.Text;
                signature9.horaFinal=lblTenHF.Text;
                signatureList.Add(signature9);
                materia break4 = new materia();
                break4.nombreMateria = lblFoBreak.Text;
                break4.horario_dia = day;
                break4.profesor = "----";
                break4.horario_grupo_idGrupo = group;
                break4.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                break4.horaInicio = lblFoBreakHI.Text;
                break4.horaFinal=lblFoBreakHF.Text;
                signatureList.Add(break4);
                materia signature10 = new materia();
                signature10.nombreMateria = eleventhLecSb.Text;
                signature10.horario_dia = day;
                signature10.profesor = eleventhLecTeacher.Text;
                signature10.horario_grupo_idGrupo = group;
                signature10.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature10.horaInicio = lblEleHI.Text;
                signature10.horaFinal = lblEleHF.Text; ;
                signatureList.Add(signature10);
                materia signature11 = new materia();
                signature11.nombreMateria = twelvethLecSb.Text;
                signature11.horario_dia = day;
                signature11.profesor = twelvethLecTeacher.Text;
                signature11.horario_grupo_idGrupo = group;
                signature11.horario_grupo_nivel_idNivel = Convert.ToInt32(lvl);
                signature11.horaInicio = lblTweHI.Text;
                signature11.horaFinal=lblTweHF.Text;
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
                Label id = (Label)e.Item.FindControl("idSchedule");
                if (signatureBusiness.deleteSignatureService(day.Text, group.Text, Convert.ToInt32(id.Text)))
                {
                    
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