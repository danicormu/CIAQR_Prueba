<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminTeam.aspx.cs" Inherits="PruebaWebCAQ.AdminTeam" %>
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
                            <div class="tab-pane fade in active blogContent" id="tabBlog">                                
                                    <h2 class="margin_top_small">Administrar Personal</h2>
                                    <div class="row">
                                        <div class="col-sm-12">                                           
                                            <article class="sc_post_format_gallery postDefault hrShadow post margin_bottom_small">
                                                <div class="sc_section col-sm-6 post_thumb thumb">
                                                    <div class="dimensPicture">
                                                        <img id="imgProfile" src="Resources/default_img/default.png" runat="server" alt=""  class="img-thumbnail"/>
                                                    </div>
                                                </div>
                                                <div class="columnsWrap">
                                                    <div class="col-sm-7">
                                                        <asp:TextBox ID="personName_txt" runat="server" placeholder="Nombre Completo" Width="100%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:Label Text="Rol" ID="lblType" runat="server"></asp:Label>
                                                        <br />
                                                        <asp:DropDownList Width="300px" runat="server" ID="selectRole">
                                                            <asp:ListItem Text="" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="Director" Value="2"></asp:ListItem>
                                                            <asp:ListItem Text="Directora" Value="3"></asp:ListItem>
                                                            <asp:ListItem Text="Profesor" Value="4"></asp:ListItem>
                                                            <asp:ListItem Text="Profesora" Value="5"></asp:ListItem>
                                                            <asp:ListItem Text="Empleado" Value="6"></asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br />                                                        
                                                        <br />
                                                        <asp:TextBox ID="personDescription_txt" runat="server" placeholder="Descripción de la persona..." TextMode="MultiLine" Rows="10" Height="75px" Width="100%" />
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                            <asp:FileUpload ID="imgUpload" runat="server" CssClass="sc_button"/>                                                            
                                                        </div>
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">                                                            
                                                            <asp:Button runat="server" ID="uploadPImage" Text="Mostrar Imagen.." OnClick="uploadPImage_Click"/>
                                                        </div>
                                                        <br />                                                        
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <asp:Label ID="lblWarning" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                    </div>
                                                    <br />                                                                                                                      
                                                </div>     
                                                <div class="col-sm-7">
                                                    <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">                                                            
                                                            <asp:Button runat="server" ID="createPerson" Text="Agregar" OnClick="createPerson_Click" />
                                                            <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                            <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
                                                                 TargetControlID="processbtn"
                                                                 cancelcontrolid="btnCancel" 
	                                                             PopupControlID="Panel1"
	                                                             drag="true" 
	                                                             backgroundcssclass="modalBackground">
                                                            </asp:ModalPopupExtender>
                                                    </div>
                                                    <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">                                                            
                                                       <asp:Button runat="server" ID="cancelPerson" Text="Cancelar" OnClick="cancelPerson_Click" />
                                                    </div>     
                                                </div>                                                                                       
                                            </article>
                                        </div>
                                    </div>
                                    <asp:panel id="Panel1" style="display: none" CssClass="modalPopup" align="center" runat="server">
                                        <p runat="server" id="messsage"></p>
                                        <hr />
                                        <input id="btnCancel" type="button" value="Aceptar" />
                                    </asp:panel>

                                
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Personal de la Institución</h2>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Nombre</th>
                                                        <th>Rol</th>
                                                        <th>Descripción</th>
                                                        <th>Edición</th>
                                                    </tr>
                                                    <asp:Repeater ID="makePersonRepeater" runat="server" OnItemDataBound="makePersonRepeater_ItemDataBound" OnItemCommand="makePersonRepeater_ItemCommand">
                                                        <ItemTemplate>
                                                            <tr runat="server" id="tableRow" class="sc_table_grey">
                                                                <td>
                                                                    <asp:Label runat="server" ID="asIdPerson" Width="50px" /></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asNamePerson" Width="190px" />
                                                                </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asRolePerson" />
                                                                </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asDescPerson" Width="280px" />
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton runat="server" ID="btn_Edit" Text="Editar" CommandName="personEdit" />
                                                                    <asp:Button runat="server" ID="processbtn2" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                    <asp:LinkButton runat="server" ID="btn_Delete" CommandName="personDelete">Eliminar</asp:LinkButton>
                                                                    <asp:Button runat="server" ID="processbtn3" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                    <asp:ModalPopupExtender id="ModalPopupExtender2" runat="server" 
                                                                            TargetControlID="processbtn2"
                                                                            cancelcontrolid="btnToStop" 
	                                                                        PopupControlID="Panel2"
	                                                                        drag="true" 
	                                                                        backgroundcssclass="modalBackground1">
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
        <asp:panel id="Panel2" style="display: none" CssClass="modalPopup1" align="center" runat="server">
        <a>Id de Personal: </a><asp:Label runat="server" ID="personID"></asp:Label> 
        <br />
        <asp:Label runat="server" ID="nameLabel"></asp:Label>
        <input runat="server" id ="nameToEdit" />
        <br />
        <asp:Label runat="server" ID="descriptionLabel"></asp:Label>
        <input runat="server" id="descToEdit" />
        <br />
        <asp:Label runat="server" ID="rolLabel"></asp:Label>
        <input runat="server" id="rolToEdit" />
        <hr />
        <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" Text="Actualizar" />
         <input id="btnToStop" type="button" value="Cancelar" />
    </asp:panel>
    <asp:Panel ID="Panel3" Style="display: none" CssClass="modalPopupMsg" align="center" runat="server">
            <a>Id: </a>
            <asp:Label runat="server" ID="lblIdToDelete"></asp:Label>
            <br />
            <asp:Label runat="server" ID="lblMsg" Text="Desea eliminar esta persona?"></asp:Label>            
            <br />            
            <hr />
            <asp:Button runat="server" ID="btnDeletePerson" OnClick="btnDeletePerson_Click" Text="Eliminar" />
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
        height: 50%;
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
