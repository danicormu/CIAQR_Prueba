using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Domain;
using PruebaWebCAQ.Business;

namespace PruebaWebCAQ
{
    public partial class Administrative : System.Web.UI.Page
    {

        PersonalBusiness perBusiness = new PersonalBusiness();
        private List<Personal> list_administrative;
        private int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            list_administrative = perBusiness.returnAllAdministrative();
            administrativeRepeater.DataSource = list_administrative;
            administrativeRepeater.DataBind();
        }

        private string saveImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + list_administrative.ElementAt(i).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + list_administrative.ElementAt(i).Name + ".jpg";
        }

        protected void administrativeRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            System.Drawing.Image photo;
            string path;
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image personalImage = (Image)e.Item.FindControl("personalImage");
                photo = System.Drawing.Image.FromStream(list_administrative.ElementAt(i).Photo);
                path = saveImage(photo);
                personalImage.ImageUrl = path;
                HtmlGenericControl name = (HtmlGenericControl)e.Item.FindControl("personalName");
                name.InnerText = list_administrative.ElementAt(i).Name;
                Label rol = (Label)e.Item.FindControl("personalRol");
                rol.Text = list_administrative.ElementAt(i).Rol;
                Label description = (Label)e.Item.FindControl("personalDescription");
                description.Text = list_administrative.ElementAt(i).Description;
                i++;
            }
        }
    }
}