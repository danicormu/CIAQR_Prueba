<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminEvent.aspx.cs" Inherits="PruebaWebCAQ.AdminEvent" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="leftMenu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="centerAdministration" runat="server">
    <section class="widgetTabs">        
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                                                        <asp:ImageButton Height="25px" Width="25px" runat="server" ImageUrl="~/Resources/img/ico/calendar-lt.png" OnClick="imgDate_Click" />
                                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False">
                                                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                            <OtherMonthDayStyle ForeColor="#999999" />
                                                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                            <TodayDayStyle BackColor="#CCCCCC" />
                                                        </asp:Calendar>                                                      
                                                        <br />                                                        
                                                        <br />
                                                        <asp:Label Text="Tipo de Evento" ID="lblType" runat="server"></asp:Label>
                                                        <br />
                                                        <asp:DropDownList Width="320px" runat="server" ID="selectType">
                                                            <asp:ListItem Text="" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="Deportivo" Value="2"></asp:ListItem>
                                                            <asp:ListItem Text="Educativo" Value="3"></asp:ListItem>
                                                            <asp:ListItem Text="Estudiantil" Value="4"></asp:ListItem>
                                                            <asp:ListItem Text="Familiar" Value="5"></asp:ListItem>
                                                             <asp:ListItem Text="Cívico" Value="6"></asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br />
                                                       <!-- <asp:TextBox ID="eventType_txt" runat="server" placeholder="Tipo de Evento" Width="50%" ></asp:TextBox>                                                       
                                                        <br />
                                                        <br />-->
                                                        <br />
                                                        <asp:TextBox ID="eventDesc_txt" runat="server" placeholder="Descripción..." TextMode="MultiLine" Rows="10" Height="75px" Width="90%"/>
                                                        <br />
                                                        <br />
                                                        
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Crear</a> -->
                                                            <asp:Button runat="server" ID="btn_create" value="Reload Page" Text="Crear" OnClick="btnCreateEvent_Click" />
                                                            <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click1" Style="visibility:hidden;" />
                                                        </div>
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                            <asp:Button runat="server" ID="btn_clear" Text="Cancelar" OnClick="btnCancel_Click" />
                                                        </div>
                                                        <br />
                                                        <asp:Label ID="lblWarning" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                        <asp:ModalPopupExtender ID="ModalPopupExtender5" runat="server"
                                                            TargetControlID="processbtn"
                                                            CancelControlID="btnCancelar"
                                                            PopupControlID="Panel5"
                                                            Drag="true"
                                                            BackgroundCssClass="modalBackground">
                                                        </asp:ModalPopupExtender>
                                                    </div>
                                                    <br />
                                                </div>
                                            </div>
                                        </div>
                                        <asp:Panel ID="Panel5" Style="display: none" CssClass="modalPopupErr" align="center" runat="server">
                                            <p runat="server" id="messageError"></p>
                                            <hr />
                                            <input id="btnCancelar" type="button" value="Aceptar" />
                                        </asp:Panel>
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
                                                                        <asp:LinkButton visible="true" runat="server" ID="btn_Delete" CommandName="deleteItem">Eliminar</asp:LinkButton>
                                                                        <asp:Button runat="server" ID="processbtn3" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                        <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
                                                                            TargetControlID="processbtn"
                                                                            cancelcontrolid="btnCancel" 
	                                                                        PopupControlID="Panel1"
	                                                                        drag="true" 
	                                                                        backgroundcssclass="modalBackground">
                                                                        </asp:ModalPopupExtender>
                                                                        <asp:ModalPopupExtender id="ModalPopupExtender3" runat="server" 
                                                                            TargetControlID="processbtn3"
                                                                            cancelcontrolid="btnToStop1" 
	                                                                        PopupControlID="Panel3"
	                                                                        drag="true" 
	                                                                        backgroundcssclass="modalBackground1">
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
        <br/>
        <p>* Ponga la fecha como aparece en el formato DD/MM/AAAA</p>     
        <asp:Label runat="server" ID="typeLabel"></asp:Label>
        <select runat="server" id="typeToEdit2" style="width:270px">
            <option value=""></option>
            <option value="Deportivo"></option>
            <option value="Educativo"></option>
            <option value="Familiar"></option>
            <option value="Cívico"></option>
        </select>

        <br />
        <asp:Label runat="server" ID="descLabel"></asp:Label>
        <input runat="server" id="descriptionToEdit"/>
        <hr />
        <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" Text="Actualizar" />
         <input id="btnCancel" type="button" value="Cancelar" />
    </asp:panel>
    <asp:Panel ID="Panel3" Style="display: none" CssClass="modalPopupMsg" align="center" runat="server">
            <a>Id: </a>
            <asp:Label runat="server" ID="lblIdToDelete"></asp:Label>
            <br />
            <asp:Label runat="server" ID="lblMsg" Text="Desea eliminar este evento?"></asp:Label>            
            <br />            
            <hr />
            <asp:Button runat="server" ID="btnDeleteEvent" OnClick="btnDeleteEvent_Click" Text="Eliminar" />
            <input id="btnToStop1" type="button" value="Cancelar" />
     </asp:Panel>
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
        height: 55%;
    }
</style>
<style type="text/css">
        .modalBackground1 {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopupMsg {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 30%;
            height: 30%;
        }
</style>
    <style type="text/css">
            .modalBackground {
                background-color: Black;
                filter: alpha(opacity=90);
                opacity: 0.8;
            }

            .modalPopupErr {
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
</asp:Content>
