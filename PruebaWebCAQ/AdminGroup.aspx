<%@ Page Title="" Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminGroup.aspx.cs" Inherits="PruebaWebCAQ.AdminGroup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="leftMenu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="centerAdministration" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <section class="widgetTabs">
        <div class="mainWrap without_sidebar">
            <div class="container">
                <div class="row content">
                    <div class="col-sm-12">
                        <div class="tab-content">
                            <div class="tab-pane fade in active blogContent">
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administrar Grupo</h2>
                                    <h3 class="margin_top_small">Crear Grupo</h3>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class ="container">
                                            <div class="col-lg-2">
                                                <p>Seleccione el Nivel:</p>
                                                <asp:DropDownList runat="server" ID="selectLevel">
                                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div> 
                                            <div class="col-lg-2">
                                                <p>Digite el grupo:</p>
                                                <asp:TextBox ID="txtGroupName" runat="server" placeholder="ej: 7-A - 9-D" Width="70%"></asp:TextBox>
                                            </div>                                  
                                        </div>
                                    </div>
                                    <div class="col-sm-7">
                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                            <asp:Button runat="server" ID="saveGroup" Text="Guardar Grupo" OnClick="saveGroup_Click" />
                                        </div>
                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                            <asp:Button runat="server" ID="cancelGroup" Text="Cancelar" OnClick="cancelGroup_Click" />
                                        </div>
                                        <asp:Button runat="server" ID="processbtn" Style="visibility: hidden;" />
                                        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                                            CancelControlID="btnCancel"
                                            TargetControlID="processbtn"
                                            PopupControlID="Panel1"
                                            Drag="true"
                                            BackgroundCssClass="modalBackground">
                                        </asp:ModalPopupExtender>
                                        <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
                                            <p runat="server" id="message"></p>
                                            <input id="btnCancel" type="button" value="Aceptar" />
                                        </asp:Panel>
                                    </div>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Grupos</h2>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th style="width:20%">Nivel</th>
                                                        <th style="width:40%">Grupo</th>
                                                        <th style="width:40%">Edición</th>
                                                    </tr>
                                                    <asp:Repeater ID="groupRepeater" runat="server" OnItemDataBound="groupRepeater_ItemDataBound" OnItemCommand="groupRepeater_ItemCommand">
                                                        <ItemTemplate>                                                           
                                                                <tr runat="server" id="tableRow" class="sc_table_grey">
                                                                    <td><asp:Label runat="server" ID="lblGroupLevel" Width="180px"/></td>
                                                                    <td><asp:Label runat="server" ID="lblGroupName"/></td>
                                                                    <td>
                                                                        <asp:LinkButton visible="true" runat="server" ID="btn_Edit" Text="Editar" CommandName="editItem" />
                                                                        <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                        <asp:LinkButton visible="true" runat="server" ID="btn_Delete" CommandName="deleteItem">Eliminar</asp:LinkButton>
                                                                        <asp:Button runat="server" ID="processbtn3" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                        <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
                                                                            TargetControlID="processbtn"
                                                                            cancelcontrolid="btnToStop" 
	                                                                        PopupControlID="Panel2"
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
       <asp:panel id="Panel2" style="display: none" CssClass="modalPopup1" align="center" runat="server">
        <a></a><asp:Label runat="server" ID="levell"></asp:Label> 
        <br />
        <asp:Label runat="server" ID="lblLevel"></asp:Label>
        <br />
        <br />
        <p> Grupo Actual (<asp:Label runat="server" ID="lblGroup"></asp:Label>)</p>
        <input runat="server" id ="groupToEdit" />
        <br />
        <hr />
        <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" Text="Actualizar" />
         <input id="btnToStop" type="button" value="Cancelar" />
    </asp:panel>
    <asp:Panel ID="Panel3" Style="display: none" CssClass="modalPopupMsg" align="center" runat="server">      
            
            <asp:Label runat="server" ID="lblNameToDelete"></asp:Label>
            <br />
            <asp:Label runat="server" ID="lblMsg" Text="Desea eliminar este grupo?"></asp:Label>            
            <br />            
            <hr />
            <asp:Button runat="server" ID="btnDeleteGroup" OnClick="btnDeleteGroup_Click" Text="Eliminar" />
            <input id="btnToStop1" type="button" value="Cancelar" />
     </asp:Panel>
    </section>
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
        width: 300px;
        height: 160px;
    }
</style>
<style type="text/css">
    .modalBackground1
    {
        background-color: Black;
        filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup1
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
        width: 50%;
        height: 40%;
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
</asp:Content>
