using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ
{
    public partial class Configuration : System.Web.UI.Page
    {
        AdministratorBusiness admBusiness = new AdministratorBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createAdmin_Click(object sender, EventArgs e)
        {
            if(AdminUser_txt.Text != "" && AdminPass_txt.Text != "")
            {
                string admin = AdminUser_txt.Text;
                string pass = AdminPass_txt.Text;
                Administrator adm = new Administrator(admin, pass);
                admBusiness.insertService(adm);
            }
            else
            {
                lblWarning.Text = "Complete los espacios*";
            }
        }
    }
}