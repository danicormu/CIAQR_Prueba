using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace PruebaWebCAQ
{
    public partial class AdminSchedule : System.Web.UI.Page
    {
        private List<Group> groupList = new List<Group>();
        private Groupbusiness groupBusiness = new Groupbusiness();
        private SignatureBusiness signatureBusiness = new SignatureBusiness();
        private ScheduleBusiness scheduleBusiness = new ScheduleBusiness();
        private List<Schedule> scheduleList = new List<Schedule>();
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
                groupSlct.Items.Add(new ListItem(element.GroupName));
            }
        }

        protected void saveSchedule_Click(object sender, EventArgs e)
        {
            string group = groupSlct.SelectedItem.Text;
            string lvl = selectLevel.SelectedItem.Text;
            string day = selectDay.SelectedItem.Text;
            if (!scheduleBusiness.getSchedule(day, group))
            {
                Schedule schedule = new Schedule(day, group, Convert.ToInt32(lvl));
                scheduleBusiness.createScheduleService(schedule);
                List<Signature> signatureList = new List<Signature>();
                Signature signature = new Signature(firstLecSb.Text, day, fisrtLecTeacher.Text, group, Convert.ToInt32(lvl), lblFirHI.Text, lblFirHF.Text);
                signatureList.Add(signature);
                Signature signature1 = new Signature(secLecSb.Text, day, secLecTeacher.Text, group, Convert.ToInt32(lvl), lblSecHI.Text, lblSecHF.Text);
                signatureList.Add(signature1);
                Signature recess = new Signature(lblFBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblFBreakHI.Text, lblFBreakHF.Text);
                signatureList.Add(recess);
                Signature signature2 = new Signature(thirdLecSb.Text, day, thirdLecTeacher.Text, group, Convert.ToInt32(lvl), lblThiHI.Text, lblThiHF.Text);
                signatureList.Add(signature2);
                Signature signature3 = new Signature(fouthLecSb.Text, day, fouthLecTeacher.Text, group, Convert.ToInt32(lvl), lblFouHI.Text, lblFouHF.Text);
                signatureList.Add(signature3);
                Signature break2 = new Signature(lblSBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblSBreakHI.Text, lblSBreakHF.Text);
                signatureList.Add(break2);
                Signature signature4 = new Signature(fifthLecSb.Text, day, fifthLecTeacher.Text, group, Convert.ToInt32(lvl), lblFifHI.Text, lblFifHF.Text);
                signatureList.Add(signature4);
                Signature signature5 = new Signature(sixthLecSb.Text, day, sixthLecTeacher.Text, group, Convert.ToInt32(lvl), lblSixHI.Text, lblSixHF.Text);
                signatureList.Add(signature5);
                Signature lunch = new Signature(lblLunch.Text, day, "----", group, Convert.ToInt32(lvl), lblLunchHI.Text, lblLunchHF.Text);
                signatureList.Add(lunch);
                Signature signature6 = new Signature(seventhLecSb.Text, day, sevenththirdLecTeacher.Text, group, Convert.ToInt32(lvl), lblSevHI.Text, lblSevHF.Text);
                signatureList.Add(signature6);
                Signature signature7 = new Signature(eigthLecSb.Text, day, eigthLecTeacher.Text, group, Convert.ToInt32(lvl), lblEigHI.Text, lblEigHF.Text);
                signatureList.Add(signature7);
                Signature break3 = new Signature(lblTBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblThiHI.Text, lblThiHF.Text);
                signatureList.Add(break3);
                Signature signature8 = new Signature(ninethLecSb.Text, day, ninethLecTeacher.Text, group, Convert.ToInt32(lvl), lblNinHI.Text, lblNinHF.Text);
                signatureList.Add(signature8);
                Signature signature9 = new Signature(tenthLecSb.Text, day, tenthLecTeacher.Text, group, Convert.ToInt32(lvl), lblTenHI.Text, lblTenHF.Text);
                signatureList.Add(signature9);
                Signature break4 = new Signature(lblFoBreak.Text, day, "----", group, Convert.ToInt32(lvl), lblFoBreakHI.Text, lblFoBreakHF.Text);
                signatureList.Add(break4);
                Signature signature10 = new Signature(eleventhLecSb.Text, day, eleventhLecTeacher.Text, group, Convert.ToInt32(lvl), lblEleHI.Text, lblEleHF.Text);
                signatureList.Add(signature10);
                Signature signature11 = new Signature(twelvethLecSb.Text, day, twelvethLecTeacher.Text, group, Convert.ToInt32(lvl), lblTweHI.Text, lblTweHF.Text);
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
                id.Text = scheduleList.ElementAt(i).ScheduleId.ToString();
                Label day = (Label)e.Item.FindControl("scheduleDay");
                day.Text = scheduleList.ElementAt(i).Day;
                Label group = (Label)e.Item.FindControl("scheduleGroup");
                group.Text = scheduleList.ElementAt(i).GroupId;
                Label level = (Label)e.Item.FindControl("scheduleLevel");
                level.Text = scheduleList.ElementAt(i).LevelId.ToString();
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