<%@ Page Title="" Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminGallery.aspx.cs" Inherits="PruebaWebCAQ.AdminGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="leftMenu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="centerAdministration" runat="server">
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
                                                    <img id="imgUploadGal" src="Resources/default_img/default.png" alt="" class="img-thumbnail" />
                                                </div>
                                            </div>

                                            <div class="post_title">
                                                <asp:TextBox ID="imgTitle_txt" runat="server" placeholder="Título" Width="40%"></asp:TextBox>
                                            </div>
                                            <br />
                                            <div class="postGallery">
                                                <asp:TextBox ID="imgDescription_txt" runat="server" placeholder="Descripción" TextMode="MultiLine" Rows="4" Width="40%" />
                                            </div>
                                            <br />
                                            <div class="col-sm-7" >
                                                <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                    <asp:FileUpload ID="imgUploadGallery" runat="server"/>                                                
                                                </div>
                                            </div>
                                            <br />
                                            <div class="btnUpload">
                                                <asp:Button ID="uploadImgGallery" runat="server" Text="Mostrar" OnClick="uploadImgGallery_Click" />
                                            </div>
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <asp:Button runat="server" ID="publishImg" Text="Publicar" OnClick="publishImg_Click" />
                                                </div>
                                                <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                            <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
                                                                 TargetControlID="processbtn"
                                                                 cancelcontrolid="btnCancel" 
	                                                             PopupControlID="Panel1"
	                                                             drag="true" 
	                                                             backgroundcssclass="modalBackground">
                                                            </asp:ModalPopupExtender>
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <asp:Button runat="server" ID="cancelImg" Text="Cancelar" OnClick="cancelImg_Click" />
                                                </div>
                                                <br/>
                                                <asp:Label ID="lblImage" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                <asp:Label ID="lblWarning" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                            </div>
                                        </article>
                                        <asp:panel id="Panel1" style="display: none" CssClass="modalPopup" align="center" runat="server">
                                        <p runat="server" id="messsage"></p>
                                        <hr />
                                        <input id="btnCancel" type="button" value="Aceptar" />
                                        </asp:panel>
                                    </div>
                                </div>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administrar</h2>
                                   <!-- <section>
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="sc_gallery columnsWrap">
                                                        <!-- Prueba--
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button6" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button9" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section> -->
                                    <asp:Repeater ID="makeGalleryRepeater" runat="server" OnItemDataBound="makeGalleryRepeater_ItemDataBound" OnItemCommand="makeGalleryRepeater_ItemCommand">
                                        <ItemTemplate>
                                            <div class="sc_blogger sc_blogger_horizontal style_portfolio4 portfolioWrap">
                                        <section class="portfolio isotopeNOanim folio4col" data-columns="4">
                                            <article class="isotopeElement hover_Shift isotopeElementShow">
                                                <div class="ih-item colored circle effect2 left_to_right">
                                                    <a href="#" class="taphover">
                                                        <div class="img">
                                                            <img alt="Vivamus pharetra justo" src="Resources/img/portfolio/portfolio_item-287x287.jpg">
                                                        </div>
                                                        <div class="info">
                                                            <div class="info-back">
                                                                <h4><asp:Label runat="server" ID="asTitleGallery"/></h4>
                                                                <p><asp:Label runat="server" ID="asDescGallery"/></p>
                                                                <p><asp:LinkButton id="btnEdit" runat="server" CommandName="photoEdit" >Editar</asp:LinkButton></p>                                                                                                            <asp:Button runat="server" ID="processbtn2" OnClick="processbtn_Click"
                                                                <p><asp:LinkButton id="btnDelete" runat="server" CommandName="photoDelete">Eliminar</asp:LinkButton></p>
                                                                <asp:ModalPopupExtender id="ModalPopupExtender2" runat="server" 
                                                                            TargetControlID="processbtn2"
                                                                            cancelcontrolid="btnToStop" 
	                                                                        PopupControlID="Panel2"
	                                                                        drag="true" 
	                                                                        backgroundcssclass="modalBackground1">
                                                                </asp:ModalPopupExtender>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </article>                                                                              
                                        </section>
                                    </div>
                                        </ItemTemplate>
                                    </asp:Repeater>                                                                   
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:panel id="Panel2" style="display: none" CssClass="modalPopup1" align="center" runat="server">
        <a>Id de Personal: </a><asp:Label runat="server" ID="galleryID"></asp:Label> 
        <br />
        <asp:Label runat="server" ID="titleLabel"></asp:Label>
        <input runat="server" id ="titleToEdit" />
        <br />
        <asp:Label runat="server" ID="descriptionLabel"></asp:Label>
        <input runat="server" id="descToEdit" />
        <hr />
        <asp:Button runat="server" ID="btnUpdate" OnClick="btnUpdate_Click" Text="Actualizar" />
         <input id="btnToStop" type="button" value="Cancelar" />
        </asp:panel>
    </section>
    <style type="text/css">
    .modalBackground
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup
    {
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
    .modalBackground1
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup1
    {
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
