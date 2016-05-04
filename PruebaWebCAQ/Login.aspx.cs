using System;
using PruebaWebCAQ.Business;
using System.Security.Cryptography;
using System.Web.Security;
using System.Web;

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
            if(txt_user.Text != "" || txt_password.Text != "")
            {
                if(!ValidateUser(txt_user.Text, txt_password.Text))             
                {                    
                   lbl_message.Visible = true;
                }
                else
                {
                    Session["USER_ID"] = txt_user.Text;
                    Session["idForUse"] = admBusiness.selectId(txt_user.Text, txt_password.Text);
                    Session["User_Pass"] = txt_password.Text;
                    Response.Redirect("Administration.aspx");
                }             
            }
            else
            {
                lbl_fillspace.Visible = true;
            }
        }

        private bool ValidateUser(string strUsername, string strPassword)
        {
            bool ans;
            ans = admBusiness.loginService(strUsername, strPassword);
            return ans;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}