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
    public partial class AdminTeam : System.Web.UI.Page
    {
        PersonalBusiness PBusiness = new PersonalBusiness();
        private List<Personal> list_Personal;
        private int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            list_Personal = PBusiness.returnAllProfessors();
            makePersonRepeater.DataSource = list_Personal;
            makePersonRepeater.DataBind();
        }

        protected void createPerson_Click(object sender, EventArgs e)
        {
            try
            {
                if (personName_txt.Text != "" || personRol_txt.Text != ""
                    || personDescription_txt.Text != "")
                {
                    if (!fileUpload.HasFile)
                    {
                        lblImage.Text = "Debe seleccionar una imagen*";
                    }
                    else
                    {
                        int picLength = fileUpload.PostedFile.ContentLength;
                        byte[] pict = new byte[picLength];
                        lblImage.Text = "Imagen cargado exitosamente*";
                        Personal pe = new Personal(personName_txt.Text, personDescription_txt.Text, personRol_txt.Text, pict);
                        PBusiness.addService(pe);
                        Response.Redirect("AdminTeam.aspx");
                    }                                       
                }
                else
                {
                    lblWarning.Text = "Complete todos los campos*";
                }               
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                lblWarning.Text = "Error al crear empleado";
            }
        }

        protected void cancelPerson_Click(object sender, EventArgs e)
        {
            clearSpaces();
        }

        private void clearSpaces()
        {
            personName_txt.Text = string.Empty;
            personDescription_txt.Text = string.Empty;
            personRol_txt.Text = string.Empty;
        }  

        protected void makePersonRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("asIdPerson");
                id.Text = Convert.ToString(list_Personal.ElementAt(i).Id);
                Label name = (Label)e.Item.FindControl("asNamePerson");
                name.Text = list_Personal.ElementAt(i).Name;
                Label description = (Label)e.Item.FindControl("asRolePerson");
                description.Text = list_Personal.ElementAt(i).Description;
                Label role = (Label)e.Item.FindControl("asDescPerson");
                role.Text = list_Personal.ElementAt(i).Rol;
                i++;
            }
        }

        protected void makePersonRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "personEdit")
            {
                ((Label)e.Item.FindControl("asIdPerson")).Visible = true;
                ((Label)e.Item.FindControl("asNamePerson")).Visible = false;
                ((Label)e.Item.FindControl("asRolePerson")).Visible = false;
                ((Label)e.Item.FindControl("asDescPerson")).Visible = false;
                ((TextBox)e.Item.FindControl("txtNamePer")).Visible = true;
                ((TextBox)e.Item.FindControl("txtRolePer")).Visible = true;
                ((TextBox)e.Item.FindControl("txtDescPer")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_Edit")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_Update")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_CancelUpdate")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_Delete")).Visible = false;
            }

            if(e.CommandName == "personUpdate")
            {

            }

            if(e.CommandName == "perCancelUpdate")
            {
                ((Label)e.Item.FindControl("asIdPerson")).Visible = true;
                ((Label)e.Item.FindControl("asNamePerson")).Visible = true;
                ((Label)e.Item.FindControl("asRolePerson")).Visible = true;
                ((Label)e.Item.FindControl("asDescPerson")).Visible = true;
                ((TextBox)e.Item.FindControl("txtNamePer")).Visible = false;
                ((TextBox)e.Item.FindControl("txtRolePer")).Visible = false;
                ((TextBox)e.Item.FindControl("txtDescPer")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_Edit")).Visible = true;
                ((LinkButton)e.Item.FindControl("btn_Update")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_CancelUpdate")).Visible = false;
                ((LinkButton)e.Item.FindControl("btn_Delete")).Visible = true;
            }

            if(e.CommandName == "personDelete")
            {
                Label lbl = e.Item.FindControl("asIdPerson") as Label;
                int idItem = Convert.ToInt32(lbl.Text);
                PBusiness.deleteService(idItem);
                Response.Redirect("AdminTeam.aspx");
            }
        }
    }
}