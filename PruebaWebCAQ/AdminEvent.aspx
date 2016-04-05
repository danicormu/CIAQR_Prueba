<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminEvent.aspx.cs" Inherits="PruebaWebCAQ.AdminEvent" %>

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
                                    <h2 class="margin_top_small">Administrar Evento</h2>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="sc_contact_form sc_contact_form_contact">
                                                <div class="columnsWrap">
                                                      <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                    <a href="#" class="">Crear</a>
                                                </div>
                                                <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                    <a href="#" class="">Cancelar</a>
                                                </div>
                                                <div class="sc_button sc_button_style_dark sc_button_size_medium squareButton dark medium">
                                                    <a href="#" class="">Cargar Imagen..</a>
                                                </div>
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <input required="required" runat="server" id="eventName" width="70%" type="text" placeholder="Nombre del Evento" />
                                                        <br />
                                                        <br />
                                                        <input required="required" runat="server" id="eventDate" width="70%" type="text" placeholder="Fecha" />
                                                        <br />
                                                        <br />
                                                        <input required="required" runat="server" id="typeEvent" width="70%" type="text" placeholder="Tipo de Evento" />
                                                        <br />
                                                        <br />
                                                        <textarea required="required" runat="server" id="descEvent" width="70%" rows="10" class="textAreaSize" placeholder="Descripción del Evento"></textarea>
                                                    </div>
                                                  
                                                </div></div>
                                        </div>

                                    </div>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Eventos</h2>
                                    <div class="sc_section sc_alignleft col-sm-6 margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Nombre del Evento</th>
                                                        <th>Fecha</th>
                                                        <th>Tipo</th>
                                                        <th>Descripción</th>
                                                        <th>Conf.</th>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Carrera de Sacos</td>
                                                        <td>22 Feb.</td>
                                                        <td>Evento dep.</td>
                                                        <td>Participan solo estudiantes de la institucion</td>
                                                        <td>
                                                            <button>Editar</button>
                                                            <button>Eliminar</button></td>
                                                    </tr>
                                                     <tr>
                                                        <td>1</td>
                                                        <td>Deletreo</td>
                                                        <td>13 Nov.</td>
                                                        <td>Educativo</td>
                                                        <td>Estudiantes de otras instituciones</td>
                                                        <td>
                                                            <button>Editar</button>
                                                            <button>Eliminar</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
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
