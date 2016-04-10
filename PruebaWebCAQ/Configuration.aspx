<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="Configuration.aspx.cs" Inherits="PruebaWebCAQ.Configuration" %>

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
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Mi cuenta</h2>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Detalles de la Cuenta</h2>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administradores</h2>
                                    <div class="sc_section sc_alignleft col-sm-6">
                                        <div class="sc_toggles sc_toggles_style_2">
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Crear Administrador</h4>
                                                <div class="sc_toggles_content">
                                                
                                                </div>
                                            </div>
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Editar Administrador</h4>
                                                <div class="sc_toggles_content">

                                                </div>
                                            </div>
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Eliminar Administrador</h4>
                                                <div class="sc_toggles_content">
                                                     
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
