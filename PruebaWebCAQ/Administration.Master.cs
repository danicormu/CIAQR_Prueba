using System;


namespace PruebaWebCAQ
{
    public partial class Administration1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["USER_ID"] != null)
            {
                userlogged.Text = Session["USER_ID"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
                userlogged.Text = "Usuario Nulo";
            }
        }

                       
        protected void logOut_Click(object sender, EventArgs e)
        {
            Logout();
        }

        public void Logout()
        {
            Session.Remove("USER_ID");
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }

    
}