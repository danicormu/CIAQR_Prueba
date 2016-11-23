using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using System.IO;
using AjaxControlToolkit;

namespace PruebaWebCAQ
{
    public partial class AdminTeam : System.Web.UI.Page
    {
        PersonalBusiness PBusiness = new PersonalBusiness();
        private List<personal> list_Personal;
        private int i = 0;
        HttpPostedFile fileToSave;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["image"] == null)
                imgProfile.Src = "Resources/default_img/default.png";
            else
                fileToSave = (HttpPostedFile)Session["image"];
            list_Personal = PBusiness.returnAllEmployesService();
            makePersonRepeater.DataSource = list_Personal;
            makePersonRepeater.DataBind();
            
            
        }
        

        protected void createPerson_Click(object sender, EventArgs e)
        {
            try
            {
                string name = personName_txt.Text;
                string role = selectRole.SelectedItem.Text;
                string description = personDescription_txt.Text;
                if (name != "" || role != "" || description != "")
                {                    
                    if (Session["image"] == null) {
                        messsage.InnerText = "Debe seleccionar una imagen";
                        ModalPopupExtender1.Show();
                    }                                     
                    else
                    {              
                        personal pe = new personal();
                        pe.nombre = name;
                        pe.descripcion = description;
                        pe.rol = role;
                        pe.foto= "images/"+fileToSave.FileName;
                        messsage.InnerText = PBusiness.addService(pe);
                        i = 0;
                        list_Personal = PBusiness.returnAllEmployesService();
                        makePersonRepeater.DataSource = list_Personal;
                        makePersonRepeater.DataBind();
                        imgProfile.Src = "Resources/default_img/default.png";
                        Session["image"] = null;
                        clearSpaces();
                        ModalPopupExtender1.Show();
                    }
                }
                else
                    messsage.InnerText = "Complete todos los campos";
                    ModalPopupExtender1.Show();
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
            selectRole.SelectedValue = "1";
        }

        protected void makePersonRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("asIdPerson");
                id.Text = Convert.ToString(list_Personal.ElementAt(i).idPersona);
                Label name = (Label)e.Item.FindControl("asNamePerson");
                name.Text = list_Personal.ElementAt(i).nombre;
                Label description = (Label)e.Item.FindControl("asDescPerson");
                description.Text = list_Personal.ElementAt(i).descripcion;
                Label role = (Label)e.Item.FindControl("asRolePerson");
                role.Text = list_Personal.ElementAt(i).rol;
                i++;
            }
        }

        protected void makePersonRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "personEdit")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender2");
                Label pID = (Label)e.Item.FindControl("asIdPerson");
                Label name = (Label)e.Item.FindControl("asNamePerson");
                Label role = (Label)e.Item.FindControl("asRolePerson");
                Label desc = (Label)e.Item.FindControl("asDescPerson");
                personID.Text = pID.Text;
                nameLabel.Text = "Nombre";
                nameToEdit.Value = name.Text;
                descriptionLabel.Text = "Descripción";
                descToEdit.Value = desc.Text;
                rolLabel.Text = "Rol";
                rolToEdit2.Value = role.Text;
                popup.Show();
            }

            if (e.CommandName == "personDelete")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender3");
                Label lbl = e.Item.FindControl("asIdPerson") as Label;
                Label lblMessage = (Label)e.Item.FindControl("lblMsg");
                lblIdToDelete.Text = lbl.Text;
                popup.Show();
                
            }
        }

        protected void uploadPImage_Click(object sender, EventArgs e)
        {
            if(imgUpload.HasFile == false)
            {
                messsage.InnerText = "Debe seleccionar antes la imagen";
                ModalPopupExtender1.Show();
            }
            else
            {
                HttpPostedFile file = imgUpload.PostedFile;
                file.SaveAs(Server.MapPath(@"images\" + file.FileName));
                imgProfile.Src = "images/" + file.FileName;
                Session["image"] = imgUpload.PostedFile;
            }            
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            personal person = new personal();
            person.idPersona = Convert.ToInt32(personID.Text);
            person.nombre = nameToEdit.Value;
            person.descripcion = descToEdit.Value;
            person.rol=rolToEdit2.Value;
            messsage.InnerText= PBusiness.updateService(person);
            ModalPopupExtender1.Show();
            personID.Text = "";
            nameLabel.Text = "";
            descriptionLabel.Text = "";
            rolLabel.Text = "";
            i = 0;
            list_Personal = PBusiness.returnAllEmployesService();
            makePersonRepeater.DataSource = list_Personal;
            makePersonRepeater.DataBind();
        }

        protected void btnDeletePerson_Click(object sender, EventArgs e)
        {
            PBusiness.deleteService(Convert.ToInt32(lblIdToDelete.Text));
            Response.Redirect("AdminTeam.aspx");
        }
    }
}