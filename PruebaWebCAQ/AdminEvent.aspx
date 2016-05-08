<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminEvent.aspx.cs" Inherits="PruebaWebCAQ.AdminEvent" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
                                                        <asp:TextBox ID="eventName_txt" runat="server" placeholder="Nombre del Evento" Width="70%" required="true" ></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventDate_txt" runat="server" placeholder="Fecha" Width="50%"  required="true"></asp:TextBox>

                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventType_txt" runat="server" placeholder="Tipo de Evento" Width="50%" required="true">

                                                        </asp:TextBox>
                                                       
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="eventDesc_txt" runat="server" placeholder="Descripción..." TextMode="MultiLine" Rows="10" Height="75px" Width="90%" required="true" />
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
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="eventDateAd"/>                                                                     
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="eventTypeAd"/>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="eventDescAd" Width="250px"/>
                                                                    </td>
                                                                    <td>
                                                                        <asp:LinkButton visible="true" runat="server" ID="btn_Edit" Text="Editar" CommandName="editItem" />
                                                                        <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                        <asp:LinkButton visible="true" runat="server" ID="btn_Delete" CommandName="deleteItem" OnClientClick='javascript:return confirm("Esta seguro que desea eliminar el evento?")'>Eliminar</asp:LinkButton>
                                                                        <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
                                                                            TargetControlID="processbtn"
                                                                            cancelcontrolid="btnCancel" 
	                                                                        PopupControlID="Panel1"
	                                                                        drag="true" 
	                                                                        backgroundcssclass="modalBackground">
                                                                        </asp:ModalPopupExtender>
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
    <asp:panel id="Panel1" style="display: none" CssClass="modalPopup" align="center" runat="server">
        <a>Id del Evento: </a><asp:Label runat="server" ID="eventID"></asp:Label> 
        <br />
        <asp:Label runat="server" ID="nameLabel"></asp:Label>
        <input runat="server" id ="nameToEdit" />
        <br />
        <asp:Label runat="server" ID="dateLabel"></asp:Label>
        <input runat="server" id="dateToEdit" />
        <br />
        <asp:Label runat="server" ID="typeLabel"></asp:Label>
        <input runat="server" id="typeToEdit" />
        <br />
        <asp:Label runat="server" ID="descLabel"></asp:Label>
        <input runat="server" id="descriptionToEdit"/>
        <hr />
        <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" Text="Actualizar" />
         <input id="btnCancel" type="button" value="Cancelar" />
    </asp:panel>

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
        width: 50%;
        height: 50%;
    }
</style>
</asp:Content>
