using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Domain;
using PruebaWebCAQ.Business;
using AjaxControlToolkit;

namespace PruebaWebCAQ
{
    public partial class AdminGroup : System.Web.UI.Page
    {
        Groupbusiness groupBusiness = new Groupbusiness();

        private List<Group> list_group;
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
            if(selectLevel.SelectedItem != null && txtGroupName.Text != "") 
            {
                string level = selectLevel.SelectedItem.Text;
                string group = txtGroupName.Text; 
                try
                {                    
                    int idLevel = Convert.ToInt32(level.ToString());
                    Group gr = new Group(group, idLevel);
                    groupBusiness.addGroupservice(gr);
                    Response.Redirect("AdminGroup.aspx");                              
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al crear un grupo" + ex);
                }
            }
            else
            {
                Console.WriteLine("Error debe seleccionar un nivel y haber ingresado el nombre del grupo");
            }
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
                level.Text = list_group.ElementAt(i).LevelId.ToString();
                Label group = (Label)e.Item.FindControl("lblGroupName");
                group.Text = list_group.ElementAt(i).GroupName;
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
                lblGroup.Text = "Grupo Actual( "+lbl.Text+" )";
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
            groupBusiness.deleteGroup(lblNameToDelete.Text);
            Response.Redirect("AdminGroup.aspx");
        }

        //Evento que me actualiza lo se edita
        protected void btnSave_Click(object sender, EventArgs e)
        {
            Group gr = new Group(lblGroup.Text);
            groupBusiness.updateGroupService(gr, lblGroup.Text);
            Response.Redirect("AdminGroup.aspx");
        }
    }
}