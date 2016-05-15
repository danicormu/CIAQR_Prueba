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
    public partial class AdminGallery : System.Web.UI.Page
    {
        GaleryBusiness GBusiness = new GaleryBusiness();
        private List<Galery> list_Gallery;
        private int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            //Al cargar la imagen rellena el repeater con datos en caso que los hubiera.
            list_Gallery = GBusiness.galeryService();
            makeGalleryRepeater.DataSource = list_Gallery;
            makeGalleryRepeater.DataBind();
        }
        
        // Metodo que hace el posteo
        protected void publishImg_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtImgTitle.Text != "" && txtImgDesc.Text != "")
                {
                    if(Session["image"] == null)
                    {
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
                                Galery ga = new Galery(txtImgTitle.Text, txtImgDesc.Text, bytes, DateTime.Today.ToShortDateString());
                                messsage.InnerText = GBusiness.insertImageToGaleryService(ga);
                                i = 0;
                                list_Gallery = GBusiness.galeryService();
                                makeGalleryRepeater.DataSource = list_Gallery;
                                makeGalleryRepeater.DataBind();
                                file = null;
                                imgShow.Src = "Resources/default_img/default.png";
                                Session["image"] = null;
                                clearSpaces();
                                ModalPopupExtender1.Show();
                                Response.Redirect("AdminGallery.aspx");
                            }
                        else
                                lblWarning.Text = "Solo imágenes (.jpg, .bmp, .gif, .png)";          
                    }
                }
                else
                {
                    messsage.InnerText = "Debe completar los campos";
                    ModalPopupExtender1.Show();
                    //lblWarning.Text = "Debe completar los campos*";
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
                lblWarning.Text = "Error al publicar la imagen";
            }
        }
        
        //Evento de cancelacion del post
        protected void cancelImg_Click(object sender, EventArgs e)
        {
            clearSpaces();   
        }
        
        //Metodo que limpia los campos.
        private void clearSpaces()
        {
            txtImgTitle.Text = string.Empty;
            txtImgDesc.Text = string.Empty;
            imgUploadGallery.Attributes.Clear();            
        }        
        
        //Metodo que mapea para guardar las imagenes
        private string savePostedImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + list_Gallery.ElementAt(i).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + list_Gallery.ElementAt(i).Name + ".jpg";
        }


        //Metodo para Muestra la imagen en un marco
        protected void uploadImgGallery_Click(object sender, EventArgs e)
        {
            if(imgUploadGallery.HasFile == false)
            {
                messsage.InnerText = "Debe seleccionar la imagen antes";
                ModalPopupExtender1.Show();
            }
            else
            {
                byte[] byteArray = null;
                if (imgUploadGallery.PostedFile != null)
                {
                    HttpPostedFile file = imgUploadGallery.PostedFile;
                    file.SaveAs(Server.MapPath(@"images\" + file.FileName));
                    using (FileStream fs = new FileStream(Server.MapPath(@"images\" + file.FileName).ToString(), FileMode.Open, FileAccess.Read))
                    {
                        byteArray = new byte[fs.Length];
                        int iBytesRead = fs.Read(byteArray, 0, (int)fs.Length);
                        if (byteArray != null && byteArray.Length > 0)
                        {
                            string base64String = Convert.ToBase64String(byteArray, 0, byteArray.Length);
                            imgShow.Src = "data:image/png;base64," + base64String;
                            Session["image"] = imgUploadGallery.PostedFile;
                        }
                    }
                }
            }                          
        }

        //Metodo que manipula los controles del repeater desplegando los datos que se encuentren en la DB
        protected void makeGalleryRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            System.Drawing.Image photo;
            string path;
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image imgPosted = (Image)e.Item.FindControl("imagePosted");
                photo = System.Drawing.Image.FromStream(list_Gallery.ElementAt(i).Photo);
                path = savePostedImage(photo);
                imgPosted.ImageUrl = path;
                Label idImage = (Label)e.Item.FindControl("asIdGallery");
                idImage.Text = Convert.ToString(list_Gallery.ElementAt(i).Id);
                Label title = (Label)e.Item.FindControl("asTitleGallery");
                title.Text = list_Gallery.ElementAt(i).Name;
                Label description = (Label)e.Item.FindControl("asDescGallery");
                description.Text = list_Gallery.ElementAt(i).Description;
                i++;
            }
        }

        //Metodo que permite manejar el repeater con comandos
        protected void makeGalleryRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "photoEdit")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender2");
                Label gID = (Label)e.Item.FindControl("asIdGallery");
                Label name = (Label)e.Item.FindControl("asTitleGallery");
                Label desc = (Label)e.Item.FindControl("asDescGallery");
                galID.Text = gID.Text; 
                titleLabel.Text = "Título";
                titleToEdit.Value = name.Text;
                descriptionLabel.Text = "Descripción";
                descToEdit.Value = desc.Text;
                popup.Show();
            }

            if (e.CommandName == "photoDelete")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender3");
                Label lblId = (Label)e.Item.FindControl("asIdGallery");
                Label lblMessage = (Label)e.Item.FindControl("lblMsg");
                lblIdToDelete.Text = lblId.Text;
                popup.Show();
            }
        }

        //Evento que actualiza las caracteristicas de la imagen recibiendo por parametro el objeto galeria con sus atributos
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Galery gal = new Galery(Convert.ToInt32(galID.Text), titleToEdit.Value, descToEdit.Value, DateTime.Today.ToShortDateString());
            messsage.InnerText = GBusiness.updateImageService(gal);
            ModalPopupExtender1.Show();
            i = 0;
            galID.Text = "";
            titleLabel.Text = "";
            descriptionLabel.Text = "";            
            list_Gallery = GBusiness.galeryService();
            makeGalleryRepeater.DataSource = list_Gallery;
            makeGalleryRepeater.DataBind();
        }      

        protected void processbtn_Click(object sender, EventArgs e) {}

        protected void btnDeleteImage_Click(object sender, EventArgs e)
        {
            GBusiness.deleteImageService(Convert.ToInt32(lblIdToDelete.Text));
            Response.Redirect("AdminGallery.aspx");
        }
    }
}