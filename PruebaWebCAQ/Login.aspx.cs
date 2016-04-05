using System;
using PruebaWebCAQ.Business;
using System.Security.Cryptography;

namespace PruebaWebCAQ
{
    public partial class Login : System.Web.UI.Page
    {
        AdministratorBusiness admBusiness = new AdministratorBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
          
            bool ans;
            if(txt_user.Text != " " && txt_password.Text != " ")
            {
                ans = admBusiness.loginService(txt_user.Text, txt_password.Text);

                if(ans != true)
                {
                    lblmessage.Visible = true;
                }
                else
                {
                    Response.Redirect("Administration.aspx");
                }                
            }
            else
            {
                lblmessage.Visible = true;
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}