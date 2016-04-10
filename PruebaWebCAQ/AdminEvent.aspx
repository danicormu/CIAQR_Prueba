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
                                                        <asp:TextBox ID="eventName_txt" runat="server" placeholder="Nombre del Evento" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventDate_txt" runat="server" placeholder="Fecha" Width="50%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventType_txt" runat="server" placeholder="Tipo de Evento" Width="50%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventDesc_txt" runat="server" placeholder="Descripción..." TextMode="MultiLine" Rows="10" Height="75px" Width="90%" />
                                                    </div>
                                                   
                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Crear</a> -->
                                                            <asp:Button runat="server" ID="createEvent" Text="Crear" />
                                                        </div>
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                            <asp:Button runat="server" ID="cancelCrEvent" Text="Cancelar" />
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Eventos</h2>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Nombre del Evento</th>
                                                        <th>Fecha</th>
                                                        <th>Tipo</th>
                                                        <th>Descripción</th>
                                                        <th>Edición</th>
                                                    </tr>
                                                    <asp:Repeater ID="makeEventRepeater" runat="server">
                                                        <ItemTemplate>                                                           
                                                                <tr runat="server" id="tableRow" class="sc_table_grey">
                                                                    <td><asp:Label runat="server" ID="asIdEvent" Text="1" /></td>
                                                                    <td><asp:Label runat="server" ID="asNameEvent" Text="Feria" /></td>
                                                                    <td><asp:Label runat="server" ID="asDateEvent" Text="Martes 23 de Marzo" /></td>
                                                                    <td><asp:Label runat="server" ID="asTypeEvent" Text="Evento deportivo" /></td>
                                                                    <td><asp:Label runat="server" ID="asDescEvent" Text="ksksksksssk" /></td>
                                                                    <td><asp:Button runat="server" ID="Button1" Text="Editar" />
                                                                        <asp:Button runat="server" ID="Button2" Text="Eliminar" />
                                                                    </td>
                                                                </tr>                                                         
                                                        </itemtemplate>
                                                    </asp:Repeater>
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
