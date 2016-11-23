using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;

namespace PruebaWebCAQ
{
    public partial class Administrative : System.Web.UI.Page
    {

        PersonalBusiness perBusiness = new PersonalBusiness();
        private List<personal> list_administrative;
        private int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            list_administrative = perBusiness.returnAllAdministrative();
            administrativeRepeater.DataSource = list_administrative;
            administrativeRepeater.DataBind();
        }

        

        protected void administrativeRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image personalImage = (Image)e.Item.FindControl("personalImage");
                personalImage.ImageUrl = list_administrative.ElementAt(i).foto;
                HtmlGenericControl name = (HtmlGenericControl)e.Item.FindControl("personalName");
                name.InnerText = list_administrative.ElementAt(i).nombre;
                Label rol = (Label)e.Item.FindControl("personalRol");
                rol.Text = list_administrative.ElementAt(i).rol;
                Label description = (Label)e.Item.FindControl("personalDescription");
                description.Text = list_administrative.ElementAt(i).descripcion;
                i++;
            }
        }
    }
}