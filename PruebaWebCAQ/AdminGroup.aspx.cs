﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using AjaxControlToolkit;

namespace PruebaWebCAQ
{
    public partial class AdminGroup : System.Web.UI.Page
    {
        Groupbusiness groupBusiness = new Groupbusiness();

        private List<grupo> list_group;
        private int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            list_group = groupBusiness.allGroupsService();
            groupRepeater.DataSource = list_group;
            groupRepeater.DataBind();           
        }

        //Evento que me crea el grupo
        protected void saveGroup_Click(object sender, EventArgs e)
        {
            if (selectLevel.SelectedItem != null && txtGroupName.Text != "")
            {
                string level = selectLevel.SelectedItem.Text;
                string group = txtGroupName.Text;
                int idLevel = Convert.ToInt32(level.ToString());
                grupo gr = new grupo();
                gr.idGrupo = group;
                gr.nivel_idNivel=idLevel;
                mesgP.InnerText = groupBusiness.addGroupservice(gr);
                ModalPopupExtenderForMessage.Show();
            }
            else
                mesgP.InnerText = "Debe seleccionar un nivel y haber escrito en nombre del grupo correctamente.";
            i = 0;
            list_group = groupBusiness.allGroupsService();
            groupRepeater.DataSource = list_group;
            groupRepeater.DataBind();
        }

        //Evento que cancela la creacion de un grupo
        protected void cancelGroup_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminGroup.aspx");
        }

        //Metodo que se encarga de mostrar la tabla llena
        protected void groupRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label level = (Label)e.Item.FindControl("lblGroupLevel");
                level.Text = list_group.ElementAt(i).nivel_idNivel.ToString();
                Label group = (Label)e.Item.FindControl("lblGroupName");
                group.Text = list_group.ElementAt(i).idGrupo;
                i++;
            }
        }

        //Metodo que manipula los grupos creados mediante comandos.
        protected void groupRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "editItem")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender1");
                Label lbl = e.Item.FindControl("lblGroupName") as Label;
                Label level = e.Item.FindControl("lblGroupLevel") as Label;
                lblLevel.Text = "Nivel " + level.Text;
                lblGroup.Text = lbl.Text;
                popup.Show();
            }

            if(e.CommandName == "deleteItem")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender3");
                Label lbl = e.Item.FindControl("lblGroupLevel") as Label;
                Label lblName = e.Item.FindControl("lblGroupName") as Label;
                Label lblMessage = (Label)e.Item.FindControl("lblMsg");
                lblNameToDelete.Text = lblName.Text;
                popup.Show();
            }
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        //Evento que me elimina un Item de la tabla 
        protected void btnDeleteGroup_Click(object sender, EventArgs e)
        {
            mesgP.InnerText= groupBusiness.deleteGroup(lblNameToDelete.Text);
            ModalPopupExtenderForMessage.Show();
            i = 0;
            list_group = groupBusiness.allGroupsService();
            groupRepeater.DataSource = list_group;
            groupRepeater.DataBind();
        }

        //Evento que me actualiza lo se edita
        protected void btnSave_Click(object sender, EventArgs e)
        {
            grupo gr = new grupo();
            gr.idGrupo=groupToEdit.Value;
            gr.nivel_idNivel = 7;
            mesgP.InnerText= groupBusiness.updateGroupService(gr, lblGroup.Text);
            ModalPopupExtenderForMessage.Show();
            i = 0;
            list_group = groupBusiness.allGroupsService();
            groupRepeater.DataSource = list_group;
            groupRepeater.DataBind();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            
        }
    }
}