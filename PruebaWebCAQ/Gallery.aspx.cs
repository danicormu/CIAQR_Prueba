using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;


namespace PruebaWebCAQ
{
    public partial class Gallery : System.Web.UI.Page
    {
        GaleryBusiness galery = new GaleryBusiness();
        private List<galeria> list;
        private int i = 0;

      
        protected void Page_Load(object sender, EventArgs e)
        {
            list = galery.galeryService();
            galleryRepeater.DataSource = list;
            galleryRepeater.DataBind();
        }

        protected void galleryRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {  
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image galleryImage = (Image)e.Item.FindControl("galleryImage");
                galleryImage.ImageUrl = list.ElementAt(i).foto;
                Label tittle = (Label)e.Item.FindControl("galleryTittle");
                tittle.Text = list.ElementAt(i).nombre;
                Label description = (Label)e.Item.FindControl("galleryDescription");
                description.Text = list.ElementAt(i).descripcion;
                Label date = (Label)e.Item.FindControl("galleryDate");
                date.Text = list.ElementAt(i).fecha;
                HtmlGenericControl div = (HtmlGenericControl)e.Item.FindControl("bigImageDiv");
                div.Attributes.Add("data-image", list.ElementAt(i).foto);
                div.Attributes.Add("data-title", list.ElementAt(i).nombre);
                i++;
            }
        }        
    }
}