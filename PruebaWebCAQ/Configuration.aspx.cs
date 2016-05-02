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
        private List<Administrator> adminList;
        private int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            adminList = admBusiness.administratorListService();
            administratorTable.DataSource = adminList;
            administratorTable.DataBind();
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

        protected void administratorTable_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("asAdminId");
                id.Text = Convert.ToString(adminList.ElementAt(i).IdAdmin);
                Label nameAdmin = (Label)e.Item.FindControl("asAdminName");
                nameAdmin.Text = adminList.ElementAt(i).Username;
                i++;
            }
        }

        protected void administratorTable_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "editAdmin")
            {

            }

            if(e.CommandName == "deleteAdmin")
            {
                Label lblId = e.Item.FindControl("asAdminId") as Label;
                int idAdmin = Convert.ToInt32(lblId.Text);
                admBusiness.deleteService(idAdmin);
                Response.Redirect("Configuration.aspx");
            }
        }

        protected void btnSavePass_Click(object sender, EventArgs e)
        {

        }

      /*  protected void chkShowPass_CheckedChanged(object sender, EventArgs e)
        {
            if (chkShowPass.Checked)
            {
                AdminPass_txt.UseSystemPasswordChar = true; 
            }
            else
            {
                AdminPass_txt.UseSystemPasswordChar = false;
            }
        }*/
    }
}