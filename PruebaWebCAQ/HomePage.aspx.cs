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
        private List<Personal> list;
        private List<Personal> profList;
        SendMailService service = new SendMailService();
        private int i =0;
        private int j=0;

        GaleryBusiness galleryBusiness = new GaleryBusiness();
        private List<Galery> list_gallery;
        private int z = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                list = personal.returnAllEmployesService();
                profList = personal.returnAllProfessors();
                list_gallery = galleryBusiness.galeryService();
                personalRepeater.DataSource = list;
                personalRepeater.DataBind();
                teacherRepeater.DataSource = profList;
                teacherRepeater.DataBind();                
                gallOnHomePage.DataSource = list_gallery;
                gallOnHomePage.DataBind();
            }
        }

        protected void personalRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            System.Drawing.Image photo;
            string path;
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image personalImage = (Image)e.Item.FindControl("personalImage");
                photo = System.Drawing.Image.FromStream(list.ElementAt(i).Photo);
                path= saveImage(photo);
                personalImage.ImageUrl = path;
                HtmlGenericControl name = (HtmlGenericControl)e.Item.FindControl("personalName");
                name.InnerText = list.ElementAt(i).Name;
                Label rol = (Label)e.Item.FindControl("personalRol");
                rol.Text = list.ElementAt(i).Rol;
                Label description = (Label)e.Item.FindControl("personalDescription");
                description.Text = list.ElementAt(i).Description;
                i++;
            }
        }

        private string saveImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + list.ElementAt(i).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + list.ElementAt(i).Name + ".jpg";
        }
        private string saveProfImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + profList.ElementAt(j).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + profList.ElementAt(j).Name + ".jpg";
        }

        private string saveGalleryImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + list_gallery.ElementAt(z).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + list_gallery.ElementAt(z).Name + ".jpg";
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
            System.Drawing.Image photo;
            string path;
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image personalImage = (Image)e.Item.FindControl("professorImage");
                photo = System.Drawing.Image.FromStream(profList.ElementAt(j).Photo);
                path = saveProfImage(photo);
                personalImage.ImageUrl = path;
                HtmlGenericControl name = (HtmlGenericControl)e.Item.FindControl("profName");
                name.InnerText = profList.ElementAt(j).Name;
                HtmlGenericControl rol = (HtmlGenericControl)e.Item.FindControl("profRol");
                rol.InnerText = profList.ElementAt(j).Rol;
                Label description = (Label)e.Item.FindControl("profDescription");
                description.Text = profList.ElementAt(j).Description;
                j++;
            }       
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void gallOnHomePage_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            System.Drawing.Image photo;
            string path;
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image galleryImage = (Image)e.Item.FindControl("galleryImageHP");
                photo = System.Drawing.Image.FromStream(list_gallery.ElementAt(z).Photo);
                path = saveGalleryImage(photo);
                galleryImage.ImageUrl = path;
                Label tittle = (Label)e.Item.FindControl("galleryTitleHP");
                tittle.Text = list_gallery.ElementAt(z).Name;
                Label description = (Label)e.Item.FindControl("galleryDescriptionHP");
                description.Text = list_gallery.ElementAt(z).Description;
                Label date = (Label)e.Item.FindControl("galleryDateHP");
                date.Text = list_gallery.ElementAt(z).Date;
                HtmlGenericControl div = (HtmlGenericControl)e.Item.FindControl("imagePopupDiv");
                div.Attributes.Add("data-image", path);
                div.Attributes.Add("data-title", list_gallery.ElementAt(z).Name);
                z++;
            }
        }
    }
}