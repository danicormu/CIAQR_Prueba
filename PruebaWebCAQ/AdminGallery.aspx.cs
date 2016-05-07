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
    public partial class AdminGallery : System.Web.UI.Page
    {
        GalleryBusiness GBusiness = new GalleryBusiness();
        private List<Galery> list_Gallery;
        private int i = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
            list_Gallery = GBusiness.galeryService();
            makeGalleryRepeater.DataSource = list_Gallery;
            makeGalleryRepeater.DataBind();
        }
        
              protected void publishImg_Click(object sender, EventArgs e)
        {
            try
            {
                if(imgTitle_txt.Text != "" && imgDescription_txt.Text != "")
                {
                    if(Session["image"] == null)
                        lblImage.Text = "Debe seleccionar una imagen*";
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
                                Galery ga = new Galery(imgTitle_txt.Text, imgDescription_txt.Text, bytes, DateTime.Today.ToShortDateString());
                                messsage.InnerText = GBusiness.insertImageToGaleryService(ga);
                                i = 0;
                                list_Gallery = GBusiness.galeryService();
                                makeGalleryRepeater.DataSource = list_Gallery;
                                makeGalleryRepeater.DataBind();
                                file = null;
                                imgUploadGal.Src = "";
                                Session["image"] = null;
                                clearSpaces();
                                ModalPopupExtender1.Show();
                            }
                        else
                                lblImage.Text = "Solo imágenes (.jpg, .bmp, .gif, .png)";          
                    }
                }
                else
                {
                    lblWarning.Text = "Debe completar los campos*"
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e);
                lblWarning.Text = "Error al publicar la imagen";
            }
        }

        protected void cancelImg_Click(object sender, EventArgs e)
        {
            clearSpaces();   
        }
        
        private void clearSpaces()
        {
            imgTitle_txt.Text = string.Empty;
            imgDescription_txt.Text = string.Empty;
            //personRol_txt.Text = string.Empty;
            imageUploadGallery.Clear();
        }
        
        private string saveImage(System.Drawing.Image image)
        {
            string savePath = Server.MapPath(@"images\" + list_Gallery.ElementAt(i).Name + ".jpg");
            System.Drawing.Graphics graphics = System.Drawing.Graphics.FromImage(image);
            image.Save(savePath);
            return "images/" + list_Gallery.ElementAt(i).Name + ".jpg";
        } 
        
        
        //Metodo para cargar la imagen 
        
        protected void uploadImgGallery_Click(object sender, EventArgs e)
        {
            byte[] byteArray = null;
            if(imgUploadGallery.PostedFile != null)
            {
                HttpPostedFile file = imgUploadGallery.PostedFile;
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
                        imgUploadGal.Src = "data:image/png;base64," + base64String;
                        Session["image"] = imgUploadGallery.PostedFile;
                    }
                }
            }                
        }
        
                
        protected void makeGalleryRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label title = (Label)e.Item.FindControl("asTitleGallery");
                title.Text = list_Gallery.ElementAt(i).Title;
                Label description = (Label)e.Item.FindControl("asDescGallery");
                description.Text = list_Gallery.ElementAt(i).Description;
                i++;
            }
        }

        protected void makeGalleryRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "photoEdit")
            {
                ModalPopupExtender popup = (ModalPopupExtender)e.Item.FindControl("ModalPopupExtender2");
                Label gID = (Label)e.Item.FindControl("asIdGallery");
                Label name = (Label)e.Item.FindControl("asTitleGallery");
                Label desc = (Label)e.Item.FindControl("asDescGallery");
               // personID.Text = pID.Text;
               // nameLabel.Text = "Título (" + name.Text + ")";
               // descriptionLabel.Text = "Descripción (" + desc.Text + ")";
                popup.Show();
            }

            if (e.CommandName == "photoDelete")
            {
                Label lbl = e.Item.FindControl("asId") as Label;
                int idItem = Convert.ToInt32(lbl.Text);
                GBusiness.deleteImageService(idItem);
                Response.Redirect("AdminGallery.aspx");
            }
        }
        
        //Metodo que actualiza la imagen de galeria
        protected void updateGalleryItem(object sender, EventArgs e)
        {
            Galery gal = new Galery(Convert.ToInt32(personID.Text),titleToEdit.Value,descToEdit.Value);
            messsage.InnerText= GBusiness.updateImageService(gal);
            ModalPopupExtender1.Show();
            galleryID.Text = "";
            titleLabel.Text = "";
            descriptionLabel.Text = "";            
            i = 0;
            list_Gallery = GBusiness.galeryService();
            makeGalleryRepeater.DataSource = list_Gallery;
            makeGalleryRepeater.DataBind();
        }

    }
}