<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminChrono.aspx.cs" Inherits="PruebaWebCAQ.AdminChrono" %>

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
                                    <h2 class="margin_top_small">Administrar Cronograma</h2>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="sc_contact_form sc_contact_form_contact">
                                                <div class="columnsWrap">
                                                    <div class="col-sm-7">
                                                        <asp:TextBox ID="chronActivity" runat="server" placeholder="Actividad" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="chronoDate" runat="server" placeholder="Fecha" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="chTypeActivity" runat="server" placeholder="Tipo de Actividad" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="chActivityDescription" runat="server" placeholder="Descripción..." TextMode="MultiLine" Rows="10" Height="75px" Width="90%" />
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Crear</a> -->
                                                            <asp:Button runat="server" ID="createEvent" Text="Crear Actividad" />
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
                                    <h2 class="margin_top_small">Cronogramas</h2>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Actividad</th>
                                                        <th>Fecha</th>
                                                        <th>Tipo de Actividad</th>
                                                        <th>Descripción</th>
                                                        <th>Edición</th>
                                                    </tr>
                                                    <asp:Repeater ID="makeChronogram" runat="server">
                                                        <ItemTemplate>
                                                            <tr runat="server" id="tableRow">
                                                                <td>
                                                                    <asp:Label runat="server" ID="asIdChrono" /></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asActivity" /></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asDate" /></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asType" /></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asDescActivity" /></td>
                                                                <td>
                                                                    <button>Editar</button>
                                                                    <button>Eliminar</button></td>
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
