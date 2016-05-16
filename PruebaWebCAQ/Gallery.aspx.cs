using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;


namespace PruebaWebCAQ
{
    public partial class Gallery : System.Web.UI.Page
    {
        GaleryBusiness galery = new GaleryBusiness();
        private List<Galery> list;
        private int i = 0;

      
        protected void Page_Load(object sender, EventArgs e)
        {
            list = galery.galeryService();
            galleryRepeater.DataSource = list;
            galleryRepeater.DataBind();
        }

        private string saveImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + list.ElementAt(i).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + list.ElementAt(i).Name + ".jpg";
        }

        protected void galleryRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {  
            System.Drawing.Image photo;
            string path;
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image galleryImage = (Image)e.Item.FindControl("galleryImage");
                photo = System.Drawing.Image.FromStream(list.ElementAt(i).Photo);
                path = saveImage(photo);
                galleryImage.ImageUrl = path;
                Label tittle = (Label)e.Item.FindControl("galleryTittle");
                tittle.Text = list.ElementAt(i).Name;
                Label description = (Label)e.Item.FindControl("galleryDescription");
                description.Text = list.ElementAt(i).Description;
                Label date = (Label)e.Item.FindControl("galleryDate");
                date.Text = list.ElementAt(i).Date;
                HtmlGenericControl div = (HtmlGenericControl)e.Item.FindControl("bigImageDiv");
                div.Attributes.Add("data-image", path);
                div.Attributes.Add("data-title", list.ElementAt(i).Name);
                i++;
            }
        }        
    }
}