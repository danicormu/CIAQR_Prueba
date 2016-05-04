﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;
using AjaxControlToolkit;

namespace PruebaWebCAQ
{
    public partial class Configuration : System.Web.UI.Page
    {
        AdministratorBusiness admBusiness = new AdministratorBusiness();
        private List<Administrator> adminList;
        private int i = 0;
        private int id = 0;
        private string user;
        private string pass;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            user = Session["USER_ID"].ToString();
            pass = Session["User_Pass"].ToString();
            lblMyUsername.Text = user;
            id = Convert.ToInt32(Session["idForUse"]);
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
                if (admBusiness.insertService(adm))
                {
                    i = 0;
                    adminList = admBusiness.administratorListService();
                    administratorTable.DataSource = adminList;
                    administratorTable.DataBind();
                    message.InnerText = "Nuevo Administrador: " + AdminUser_txt.Text + ", con contraseña: " + AdminPass_txt.Text + ", ha sido creado.";
                    AdminUser_txt.Text = "";
                    AdminPass_txt.Text = "";
                    ModalPopupExtender1.Show();
                }
                else
                {
                    message.InnerText = "El intento de creación de nuevo usuario ha sido fallido. Intentelo de nuevo más tarde.";
                    ModalPopupExtender1.Show();
                }
                
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
            if (e.CommandName == "deleteAdmin")
            {
                Label lblId = e.Item.FindControl("asAdminId") as Label;
                int idAdmin = Convert.ToInt32(lblId.Text);
                adminInfo.Text = idAdmin.ToString();
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender2");
                popup.Show();
            }
                
        }

        protected void btnSavePass_Click(object sender, EventArgs e)
        {
            if (txt_ActPass.Text.Equals(pass))
                if (txt_NewPass.Text.Equals(txt_RepPass.Text))
                {
                    Administrator admin = new Administrator(id, user, txt_NewPass.Text);
                    if (admBusiness.updateService(admin))
                    {
                        i = 0;
                        adminList = admBusiness.administratorListService();
                        administratorTable.DataSource = adminList;
                        administratorTable.DataBind();
                        txt_ActPass.Text = "";
                        txt_NewPass.Text = "";
                        txt_RepPass.Text = "";
                        message.InnerText = "La contraseña de usuario ha sido actualizada con éxito.";
                        ModalPopupExtender1.Show();
                    }
                    else
                    {
                        txt_ActPass.Text = "";
                        txt_NewPass.Text = "";
                        txt_RepPass.Text = "";
                        message.InnerText = "La contraseña de usuario no ha sido actualizada. Intentelo más tarde.";
                        ModalPopupExtender1.Show();
                    }
                    
                }
                else
                    errorMessage.Text = "* Debe repetir la nueva contraseña correctamennte";
            else
                errorMessage.Text = "* La contraseña actual es incorrecta";
        }

        protected void SaveUsername_Click(object sender, EventArgs e)
        {
            Administrator admin = new Administrator(id,newUserName.Text, pass);
            if (admBusiness.updateService(admin))
            {
                i = 0;
                adminList = admBusiness.administratorListService();
                administratorTable.DataSource = adminList;
                administratorTable.DataBind();
                newUserName.Text = "";
                message.InnerText = "El nombre de usuario ha sido actualizado con éxito.";
                ModalPopupExtender1.Show();
            }
            else
            {
                newUserName.Text = "";
                message.InnerText = "El nombre de usuario no ha sido actualizado. Intentelo más tarde.";
                ModalPopupExtender1.Show();
            }
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (usernameToConfirm.Text.Equals(user) && passToConfirm.Text.Equals(pass))
                if (admBusiness.deleteService(Convert.ToInt32(adminInfo.Text)))
                {
                    i =0;
                    adminList = admBusiness.administratorListService();
                    administratorTable.DataSource = adminList;
                    administratorTable.DataBind();
                    usernameToConfirm.Text = "";
                    passToConfirm.Text = "";
                    message.InnerText = "Administrador eliminado con éxito";
                    ModalPopupExtender1.Show();
                }
                else
                {
                    message.InnerText = "El intento de eliminar un administrador ha fallado. Intentelo de nuevo más tarde.";
                    usernameToConfirm.Text = "";
                    passToConfirm.Text = "";
                    ModalPopupExtender1.Show();
                }
            else
            {
                message.InnerText = "Credenciales incorrectas.";
                usernameToConfirm.Text = "";
                passToConfirm.Text = "";
                ModalPopupExtender1.Show();
            }
            
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