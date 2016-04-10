<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminTeam.aspx.cs" Inherits="PruebaWebCAQ.AdminTeam" %>

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
                                    <h2 class="margin_top_small">Administrar Personal</h2>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="sc_contact_form sc_contact_form_contact">
                                                <div class="columnsWrap">
                                                    <div class="col-sm-7">
                                                        <asp:TextBox ID="personName" runat="server" placeholder="Nombre Completo" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="personSubj" runat="server" placeholder="Asignatura" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="personRol" runat="server" placeholder="Rol (Profesor, Director, Otro..)" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="personDescription" runat="server" placeholder="Descripción de la persona..." TextMode="MultiLine" Rows="10" Height="75px" Width="90%" />
                                                    </div>

                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                            <!-- <a href="#" class="">Crear</a> -->
                                                            <asp:Button runat="server" ID="createPerson" Text="Crear" />
                                                        </div>
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                            <asp:Button runat="server" ID="cancelPerson" Text="Cancelar" />
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Personal de la Institución</h2>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Nombre</th>
                                                        <th>Asignatura</th>
                                                        <th>Rol</th>
                                                        <th>Descripción</th>
                                                        <th>Edición</th>
                                                    </tr>
                                                    <asp:Repeater ID="makePersonRepeater" runat="server">
                                                        <ItemTemplate>
                                                            <tr runat="server" id="tableRow" class="sc_table_grey">
                                                                <td><asp:Label runat="server" ID="asIdPerson" /></td>
                                                                <td><asp:Label runat="server" ID="asNamePerson" /></td>
                                                                <td><asp:Label runat="server" ID="asSubjPerson" /></td>
                                                                <td><asp:Label runat="server" ID="asRolePerson" /></td>
                                                                <td><asp:Label runat="server" ID="asDescPerson" /></td>
                                                                <td>
                                                                    <asp:Button runat="server" ID="Button1" Text="Editar" />
                                                                    <asp:Button runat="server" ID="Button2" Text="Eliminar" />
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>

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
