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
                                                <img class="imageDimens" src="Resources/default_img/default.png" alt="" />
                                            </div>
                                            <div class="post_title">
                                                <asp:TextBox ID="imgTitle" runat="server" placeholder="Título" Width="40%"></asp:TextBox>
                                            </div>
                                            <br />
                                            <div class="postGallery">
                                                <asp:TextBox ID="imgDescription" runat="server" placeholder="Descripción" TextMode="MultiLine" Rows="4" Width="40%" />
                                            </div>
                                            <br />
                                            <div class="btnUpload">
                                                <asp:Button ID="Button1" runat="server" Text="Cargar imagen.." />
                                            </div>
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <asp:Button runat="server" ID="publishImg" Text="Publicar" />
                                                </div>
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <asp:Button runat="server" ID="cancelImg" Text="Cancelar" />
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administrar</h2>
                                    <section>
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="sc_gallery columnsWrap">
                                                        <!-- Prueba-->
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
                                                        <!--- Fin de prueba -->
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button2" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button3" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button4" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button5" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button7" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button8" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button10" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button11" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button12" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button13" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button14" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button15" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button24" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button25" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button16" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button17" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button18" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button19" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button20" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button21" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 col-sm-6">
                                                            <div class="galleryPic">
                                                                <div class="thumb hoverIncrease">
                                                                    <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2.jpg" />
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button22" Text="Editar" />
                                                                    </h4>
                                                                </div>
                                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                                    <h4>
                                                                        <asp:Button runat="server" ID="Button23" Text="Eliminar" />
                                                                    </h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>                                               
                                            </div>
                                        </div>
                                    </section>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
