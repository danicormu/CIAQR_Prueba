<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="PruebaWebCAQ.Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="centerAdministration" runat="server">
    <section class="widgetTabs">
        <div class="mainWrap without_sidebar">
            <div class="container">
                <div class="row content">
                    <div class="col-sm-12">
                        <div class="tab-content">
                            <div class="tab-pane fade in active blogContent" id="tabBlog">
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administracion Principal</h2>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <!-- <a href="#" class="">Crear</a> -->
                                                    <asp:Button runat="server" ID="createEvent" Text="Crear Actividad" />
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <!-- <a href="#" class="">Crear</a> -->
                                                    <asp:Button runat="server" ID="Button1" Text="Crear Actividad" />
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <!-- <a href="#" class="">Crear</a> -->
                                                    <asp:Button runat="server" ID="Button2" Text="Crear Actividad" />
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <!-- <a href="#" class="">Crear</a> -->
                                                    <asp:Button runat="server" ID="Button3" Text="Crear Actividad" />
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <!-- <a href="#" class="">Crear</a> -->
                                                    <asp:Button runat="server" ID="Button4" Text="Crear Actividad" />
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="col-sm-7">
                                                <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                    <!-- <a href="#" class="">Crear</a> -->
                                                    <asp:Button runat="server" ID="Button5" Text="Crear Actividad" />
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>