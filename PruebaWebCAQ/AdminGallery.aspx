<%@ Page Title="" Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminGallery.aspx.cs" Inherits="PruebaWebCAQ.AdminGallery" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="leftMenu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="centerAdministration" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section class="widgetTabs">
        <div class="mainWrap without_sidebar">
            <div class="container">
                <div class="row content">
                    <div class="col-sm-12">
                        <div class="tab-content">
                            <div class="tab-pane fade in active blogContent" id="tabBlog">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h2 class="margin_top_small">Galería</h2>
                                        <article class="sc_post_format_gallery postDefault hrShadow post margin_bottom_small">
                                            <div class="sc_section col-sm-6 post_thumb thumb">
                                                <div class="dimensPicture">
                                                    <img id="imgShow" src="Resources/default_img/default.png" runat="server" alt="" class="img-thumbnail" />
                                                </div>
                                            </div>
                                            <div class="post_title">
                                                <asp:TextBox ID="txtImgTitle" runat="server" placeholder="Título" Width="40%" />
                                            </div>
                                            <br />
                                            <div class="postGallery">
                                                <asp:TextBox ID="txtImgDesc" runat="server" placeholder="Descripción" TextMode="MultiLine" Rows="4" Width="40%" />
                                            </div>
                                            <br />
                                            <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                <asp:FileUpload ID="imgUploadGallery" runat="server" CssClass="sc_button" />
                                            </div>                                            
                                            <br />
                                            <div class="btnUpload">
                                                <asp:Button ID="uploadImgGallery" runat="server" Text="Mostrar" OnClick="uploadImgGallery_Click" />
                                            </div>
                                            <br />
                                                <asp:Label ID="lblWarning" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                            <br />
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <asp:Button runat="server" ID="publishImg" Text="Publicar" OnClick="publishImg_Click" />
                                                </div>
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <asp:Button runat="server" ID="cancelImg" Text="Cancelar" OnClick="cancelImg_Click" />
                                                </div>
                                                <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility: hidden;" />
                                                <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                                                    TargetControlID="processbtn"
                                                    CancelControlID="btnCancel"
                                                    PopupControlID="Panel1"
                                                    Drag="true"
                                                    BackgroundCssClass="modalBackground">
                                                </asp:ModalPopupExtender>                                                
                                                <br />                                                                                     
                                            </div>
                                        </article>
                                        <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
                                            <p runat="server" id="messsage"></p>
                                            <hr />
                                            <input id="btnCancel" type="button" value="Aceptar" />
                                        </asp:Panel>
                                    </div>
                                </div>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administrar</h2>

                                    <div class="sc_blogger sc_blogger_horizontal style_portfolio4 portfolioWrap">
                                        <section class="portfolio isotopeNOanim folio4col" data-columns="4">
                                            <asp:Repeater ID="makeGalleryRepeater" runat="server" OnItemDataBound="makeGalleryRepeater_ItemDataBound" OnItemCommand="makeGalleryRepeater_ItemCommand">
                                                <ItemTemplate>
                                                    <article class="isotopeElement hover_Shift isotopeElementShow">
                                                        <div class="ih-item colored circle effect2 left_to_right">
                                                            <a href="#" class="taphover">
                                                                <div class="img">
                                                                    <asp:Image ID="imagePosted" runat="server" />
                                                                </div>
                                                                <div class="info">
                                                                    <div class="info-back">      
                                                                        <asp:Label runat="server" ID="asIdGallery" Visible="false" />                                                                  
                                                                        <h4><asp:Label runat="server" ID="asTitleGallery" /></h4>
                                                                        <asp:Label runat="server" ID="asDescGallery" Visible="false" />
                                                                        <p><asp:LinkButton ID="btnEditPhoto" Text="Editar" CommandName="photoEdit" >Editar</asp:LinkButton></p>
                                                                        <asp:Button runat="server" ID="processbtn2" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                        <p><asp:LinkButton ID="btnDeletePhoto" CommandName="photoDelete" OnClientClick='javascript:return confirm("Está seguro que desea eliminar la imagen?")' >Eliminar</asp:LinkButton></p>
                                                                       <!-- <p>
                                                                            <asp:LinkButton runat="server" ID="btnEditPhoto" Text="Editar" CommandName="photoEdit" />
                                                                            
                                                                            <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
                                                                            TargetControlID="processbtn2"
                                                                            CancelControlID="btnToStop"
                                                                            PopupControlID="Panel2"
                                                                            Drag="true"
                                                                            BackgroundCssClass="modalBackground1">
                                                                        </asp:ModalPopupExtender>
                                                                        </p>
                                                                        <p><asp:LinkButton runat="server" ID="btnDeletePhoto" CommandName="photoDelete" OnClientClick='javascript:return confirm("Está seguro que desea eliminar la imagen?")'>Eliminar</asp:LinkButton></p>                                                                        
                                                                   --> </div>                                                                    
                                                                </div>
                                                                <div class="col-sm-7">
                                                                        
                                                                        
                                                                        
                                                               </div>
                                                            </a>
                                                        </div>
                                                    </article>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </section>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Panel ID="Panel2" Style="display: none" CssClass="modalPopup1" align="center" runat="server">
            <a>Id de la Imagen: </a>
            <asp:Label runat="server" ID="galID"></asp:Label>
            <br />
            <asp:Label runat="server" ID="titleLabel"></asp:Label>
            <input runat="server" id="titleToEdit" />
            <br />
            <asp:Label runat="server" ID="descriptionLabel"></asp:Label>
            <input runat="server" id="descToEdit" />
            <hr />
            <asp:Button runat="server" ID="btnUpdate" OnClick="btnUpdate_Click" Text="Actualizar" />
            <input id="btnToStop" type="button" value="Cancelar" />
        </asp:Panel>
    </section>
    <style type="text/css">
        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 300px;
            height: 160px;
        }
    </style>
    <style type="text/css">
        .modalBackground1 {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup1 {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 50%;
            height: 50%;
        }
    </style>
</asp:Content>
