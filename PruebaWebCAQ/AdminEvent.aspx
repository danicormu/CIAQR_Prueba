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
                                                        <asp:TextBox ID="eventName_txt" runat="server" required="true" placeholder="Nombre del Evento" Width="70%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventDate_txt" runat="server" required="true" placeholder="Fecha" Width="50%"></asp:TextBox>

                                                        <br />
                                                        <br />
                                                        <!--<form class="woocommerce-ordering" method="get">
                                                            <select name="orderby" class="orderby">
                                                                <option value="menu_order" selected="selected">Default sorting</option>
                                                                <option value="popularity">Sort by popularity</option>
                                                                <option value="rating">Sort by average rating</option>
                                                                <option value="date">Sort by newness</option>
                                                                <option value="price">Sort by price: low to high</option>
                                                                <option value="price-desc">Sort by price: high to low</option>
                                                            </select>
                                                        </form> -->
                                                        <asp:TextBox ID="eventType_txt" runat="server" required="true" placeholder="Tipo de Evento" Width="50%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventDesc_txt" runat="server" required="true" placeholder="Descripción..." TextMode="MultiLine" Rows="10" Height="75px" Width="90%" />
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Crear</a> -->
                                                            <asp:Button runat="server" ID="btn_create" value="Reload Page" Text="Crear" OnClick="btnCreateEvent_Click" />
                                                        </div>
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                            <asp:Button runat="server" ID="btn_clear" Text="Cancelar" OnClick="btnCancel_Click" />
                                                        </div>
                                                        <br />
                                                        <asp:Label ID="lblWarning" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                    </div>
                                                    <br />                                          
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
                                                        <th class="idStyle">Id</th>
                                                        <th class="nameStyle">Nombre del Evento</th>
                                                        <th class="dateStyle">Fecha</th>
                                                        <th class="typeStyle">Tipo</th>
                                                        <th class="descStyle">Descripción</th>
                                                        <th class="editionStyle">Edición</th>
                                                    </tr>

                                                    <asp:Repeater ID="EventRepeater" runat="server" OnItemDataBound="EventRepeater_ItemDataBound" OnItemCommand="EventRepeater_ItemCommand">
                                                        <ItemTemplate>                                                           
                                                                <tr runat="server" id="tableRow" class="sc_table_grey">
                                                                    <td><asp:Label runat="server" ID="eventIdAd"/></td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="eventNameAd" Width="180px"/>
                                                                        <asp:TextBox runat="server" ID="txtNameEdit" Visible="false" Width="180px"></asp:TextBox> 
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="eventDateAd"/>
                                                                        <asp:TextBox runat="server" ID="txtDateEdit" Visible="false" Width="100px"></asp:TextBox>                                                                        
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="eventTypeAd"/>
                                                                        <asp:TextBox runat="server" ID="txtTypeEdit" Visible="false" Width="150px"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="eventDescAd" Width="250px"/>
                                                                        <asp:TextBox runat="server" ID="txtDescEdit" Visible="false" TextMode="MultiLine" Rows="2" Width="250px"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:LinkButton visible="true" runat="server" ID="btn_Edit" Text="Editar" CommandName="editItem" />
                                                                        <asp:LinkButton visible="false" runat="server" ID="btn_Update" Text="Actualizar" CommandName="updateItem" />
                                                                        <asp:LinkButton visible="false" runat="server" ID="btn_CancelUpdate" Text="Cancelar" CommandName="cancelUpdate" />
                                                                        <asp:LinkButton visible="true" runat="server" ID="btn_Delete" CommandName="deleteItem" OnClientClick='javascript:return confirm("Esta seguro que desea eliminar el evento?")'>Eliminar</asp:LinkButton>
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
