using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;
using System.IO;
using AjaxControlToolkit;

namespace PruebaWebCAQ
{
    public partial class AdminTeam : System.Web.UI.Page
    {
        PersonalBusiness PBusiness = new PersonalBusiness();
        private List<Personal> list_Personal;
        private int i = 0;
        private int j = 0;        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }


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
                        HttpPostedFile postFile = (HttpPostedFile)Session["image"];
                        string file = Path.GetFileName(postFile.FileName);
                        string fileExtension = Path.GetExtension(file);
                        using (FileStream fs = new FileStream(Server.MapPath(@"images\" + postFile.FileName).ToString(), FileMode.Open, FileAccess.Read))
                            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
                            {
                                BinaryReader binaryReader = new BinaryReader(fs);
                                byte[] bytes = binaryReader.ReadBytes((int)fs.Length);
                                Personal pe = new Personal(name, description, role, bytes);
                                messsage.InnerText = PBusiness.addService(pe);
                                i = 0;
                                list_Personal = PBusiness.returnAllEmployesService();
                                makePersonRepeater.DataSource = list_Personal;
                                makePersonRepeater.DataBind();
                                file = null;
                                imgProfile.Src = "Resources/default_img/default.png";
                                Session["image"] = null;
                                clearSpaces();
                                ModalPopupExtender1.Show();
                            }
                            else
                                messsage.InnerText = "Solo imágenes (.jpg, .bmp, .gif, .png)";
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

        private string saveImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + list_Personal.ElementAt(i).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + list_Personal.ElementAt(i).Name + ".jpg";
        } 

        protected void makePersonRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label id = (Label)e.Item.FindControl("asIdPerson");
                id.Text = Convert.ToString(list_Personal.ElementAt(i).Id);
                Label name = (Label)e.Item.FindControl("asNamePerson");
                name.Text = list_Personal.ElementAt(i).Name;
                Label description = (Label)e.Item.FindControl("asDescPerson");
                description.Text = list_Personal.ElementAt(i).Description;
                Label role = (Label)e.Item.FindControl("asRolePerson");
                role.Text = list_Personal.ElementAt(i).Rol;
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
                nameLabel.Text = "Nombre (" + name.Text + ")";
                descriptionLabel.Text = "Descripción (" + desc.Text + ")";
                rolLabel.Text = "Rol (" + role.Text + ")";
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
                byte[] byteArray = null;
                if (imgUpload.PostedFile != null)
                {
                    // Get Client site full Image path need to be convert into HttpPostedFile
                    HttpPostedFile file = imgUpload.PostedFile;
                    file.SaveAs(Server.MapPath(@"images\" + file.FileName));
                    //Use FileStream to convert the image into byte.
                    using (FileStream fs = new FileStream(Server.MapPath(@"images\" + file.FileName).ToString(), FileMode.Open, FileAccess.Read))
                    {
                        byteArray = new byte[fs.Length];
                        int iBytesRead = fs.Read(byteArray, 0, (int)fs.Length);
                        if (byteArray != null && byteArray.Length > 0)
                        {
                            // Convert the byte into image
                            string base64String = Convert.ToBase64String(byteArray, 0, byteArray.Length);
                            imgProfile.Src = "data:image/png;base64," + base64String;
                            Session["image"] = imgUpload.PostedFile;
                        }
                    }
                }
                else
                {
                    lblWarning.Text = "Debe seleccionar una imagen antes de mostrarla*";
                }
            }            
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Personal person = new Personal(Convert.ToInt32(personID.Text),nameToEdit.Value,descToEdit.Value,rolToEdit.Value);
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