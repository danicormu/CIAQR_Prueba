using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using AjaxControlToolkit;

namespace PruebaWebCAQ
{
    public partial class AdminGallery : System.Web.UI.Page
    {
        GaleryBusiness GBusiness = new GaleryBusiness();
        private List<galeria> list_Gallery;
        private int i = 0;
        HttpPostedFile fileToSave;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["image"] == null)
                imgShow.Src = "Resources/default_img/default.png";
            else
                fileToSave = (HttpPostedFile)Session["image"];
            //Al cargar la imagen rellena el repeater con datos en caso que los hubiera.
            list_Gallery = GBusiness.galeryService();
            makeGalleryRepeater.DataSource = list_Gallery;
            makeGalleryRepeater.DataBind();
        }
        
        // Metodo que hace el posteo
        protected void publishImg_Click(object sender, EventArgs e)
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
                        galeria ga = new galeria();
                        ga.nombre = txtImgTitle.Text;
                        ga.descripcion = txtImgDesc.Text;
                        ga.foto = "images/"+fileToSave.FileName;
                        ga.fecha=DateTime.Today.ToShortDateString();
                        messsage.InnerText = GBusiness.insertImageToGaleryService(ga);
                        i = 0;
                        list_Gallery = GBusiness.galeryService();
                        makeGalleryRepeater.DataSource = list_Gallery;
                        makeGalleryRepeater.DataBind();
                        imgShow.Src = "Resources/default_img/default.png";
                        Session["image"] = null;
                        clearSpaces();
                        ModalPopupExtender1.Show();
                        Response.Redirect("AdminGallery.aspx");          
                    }
                }
                else
                {
                    messsage.InnerText = "Debe completar los campos";
                    ModalPopupExtender1.Show();
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
        


        //Metodo para Muestra la imagen en un marco
        protected void uploadImgGallery_Click(object sender, EventArgs e)
        {
            if(!imgUploadGallery.HasFile)
            {
                messsage.InnerText = "Debe seleccionar la imagen antes";
                ModalPopupExtender1.Show();
            }
            else
            {

                HttpPostedFile file = imgUploadGallery.PostedFile;
                file.SaveAs(Server.MapPath(@"images\" + file.FileName));
                imgShow.Src = "images/" + file.FileName;
                Session["image"] = imgUploadGallery.PostedFile;
            }                          
        }

        //Metodo que manipula los controles del repeater desplegando los datos que se encuentren en la DB
        protected void makeGalleryRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image imgPosted = (Image)e.Item.FindControl("imagePosted");
                imgPosted.ImageUrl = list_Gallery.ElementAt(i).foto;
                Label idImage = (Label)e.Item.FindControl("asIdGallery");
                idImage.Text = Convert.ToString(list_Gallery.ElementAt(i).idFoto);
                Label title = (Label)e.Item.FindControl("asTitleGallery");
                title.Text = list_Gallery.ElementAt(i).nombre;
                Label description = (Label)e.Item.FindControl("asDescGallery");
                description.Text = list_Gallery.ElementAt(i).descripcion;
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
            galeria gal = new galeria();
            gal.idFoto = Convert.ToInt32(galID.Text);
            gal.nombre = titleToEdit.Value;
            gal.descripcion = descToEdit.Value;
            gal.fecha=DateTime.Today.ToShortDateString();
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