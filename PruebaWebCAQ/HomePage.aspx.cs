using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ
{
    public partial class PruebaDeMenu : System.Web.UI.Page
    {
        PersonalBusiness personal = new PersonalBusiness();
        private List<personal> list;
        private List<personal> profList;
        SendMailService service = new SendMailService();
        private int i =0;
        private int j=0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                list = personal.returnAllEmployesService();
                profList = personal.returnAllProfessors();
                personalRepeater.DataSource = list;
                personalRepeater.DataBind();
                teacherRepeater.DataSource = profList;
                teacherRepeater.DataBind();               
            }
        }

        protected void personalRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image personalImage = (Image)e.Item.FindControl("personalImage");
                personalImage.ImageUrl = list.ElementAt(i).foto;
                HtmlGenericControl name = (HtmlGenericControl)e.Item.FindControl("personalName");
                name.InnerText = list.ElementAt(i).nombre;
                Label rol = (Label)e.Item.FindControl("personalRol");
                rol.Text = list.ElementAt(i).rol;
                Label description = (Label)e.Item.FindControl("personalDescription");
                description.Text = list.ElementAt(i).descripcion;
                i++;
            }
        }        

        protected void senMail_Click(object sender, EventArgs e)
        {

            if (service.sendMail(contactName.Value, contactMail.Value, contactSubject.Value, contactMessage.Value))
            {
                message.InnerText = "Su mensaje ha sido enviado con éxito. Pronto lo contactaremos!";
                contactName.Value = "";
                contactMail.Value = "";
                contactSubject.Value = "";
                contactMessage.Value = "";
                ModalPopupExtender1.Show();
            }
            else
            {
                message.InnerText = "Su mensaje no ha sido enviado. Vuelva a intentarlo más tarde.";
                ModalPopupExtender1.Show();
            }  
        }

        protected void teacherRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image personalImage = (Image)e.Item.FindControl("professorImage");
                personalImage.ImageUrl = profList.ElementAt(j).foto;
                HtmlGenericControl name = (HtmlGenericControl)e.Item.FindControl("profName");
                name.InnerText = profList.ElementAt(j).nombre;
                HtmlGenericControl rol = (HtmlGenericControl)e.Item.FindControl("profRol");
                rol.InnerText = profList.ElementAt(j).rol;
                Label description = (Label)e.Item.FindControl("profDescription");
                description.Text = profList.ElementAt(j).descripcion;
                j++;
            }       
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }
        
    }
}