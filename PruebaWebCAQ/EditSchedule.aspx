<%@ Page Title="" Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="EditSchedule.aspx.cs" Inherits="PruebaWebCAQ.EditSchedule" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="centerAdministration" runat="server">
    <section class="widgetTabs">
        <div class="mainWrap without_sidebar">
            <div class="container">
                <div class="row content">
                    <div class="col-sm-12">
                        <div class="tab-content">
                            
                            <div class="tab-pane fade in active blogContent" id="tabBlog">
                                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administrar Horarios</h2>
                                    <hr />
                                    <h3 class="margin_top_small">Edicion de Horario: Grupo: <asp:Label runat="server" ID="grpLabel"></asp:Label> y día <asp:label runat="server" ID="dayLabel"></asp:label></h3>
                                    
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id de Materia</th>
                                                        <th>Nombre</th>
                                                        <th>Día</th>
                                                        <th>Profesor</th>
                                                        <th>Hora de Inicio</th>
                                                        <th>Hora Final</th>
                                                        <th>Editar Materia</th>
                                                    </tr>
                                                    <asp:Repeater runat="server" ID="signatureRepeater" OnItemDataBound="signatureRepeater_ItemDataBound" OnItemCommand="signatureRepeater_ItemCommand">
                                                         <ItemTemplate>
                                                             <tr>
                                                                 <th><asp:Label runat="server" ID="signatureID"></asp:Label></th>
                                                                 <th><asp:Label runat="server" ID="signatureName"></asp:Label></th>
                                                                 <th><asp:Label runat="server" ID="signatureDay"></asp:Label></th>
                                                                 <th><asp:Label runat="server" ID="signatureProf"></asp:Label></th>
                                                                 <th><asp:Label runat="server" ID="signatureStartTime"></asp:Label></th>
                                                                 <th><asp:Label runat="server" ID="signatureEndTime"></asp:Label></th>
                                                                 <th><asp:LinkButton runat="server" ID="editBtn" CommandName="edit"></asp:LinkButton></th>
                                                                 <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                 <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                                                cancelcontrolid="btnCancel" 
                                                                    TargetControlID="processbtn"
	                                                                PopupControlID="Panel1"
	                                                                drag="true" 
	                                                                backgroundcssclass="modalBackground1">
                                                                </asp:ModalPopupExtender>
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
        <asp:panel id="Panel1" style="display: none" CssClass="modalPopup1" align="center" runat="server">
        <p>Id de materia: <asp:Label runat="server" ID="idToUpdate"></asp:Label></p>
        <asp:Label runat="server" ID="nameToEdit"></asp:Label>
        <asp:TextBox runat ="server" ID="updateName"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="dayToEdit"></asp:Label>
        <asp:TextBox runat="server" ID="updateDay"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="profToEdit"></asp:Label>
        <asp:TextBox runat="server" ID="updateProf"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="startToEdit"></asp:Label>
        <asp:TextBox runat="server" ID="updateStart"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="endToEdit"></asp:Label>
        <asp:TextBox runat="server" ID="updateEnd"></asp:TextBox>
        <hr />
        <asp:Button runat="server" ID="updateBtn" Text="Aceptar" OnClick="updateBtn_Click" />
        <asp:Button runat="server" ID="processBtn2" OnClick="processbtn_Click" Style="visibility:hidden;"/>
        <input id="btnCancel" type="button" value="Cancelar" />
    </asp:panel>

    <asp:ModalPopupExtender id="ModalPopupExtender2" runat="server"
        TargetControlID="processBtn2"
	    PopupControlID="Panel2"
	    drag="true" 
	    backgroundcssclass="modalBackground">
    </asp:ModalPopupExtender>

    <asp:panel id="Panel2" style="display: none" CssClass="modalPopup" align="center" runat="server">
        <p runat="server" id="message"></p>
        <hr />
        <asp:Button ID="btnCancelTo" runat="server" Text="Aceptar" OnClick="btnCancelTo_Click"/>
    </asp:panel>
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
        height: 200px;
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
        height: 60%;
    }
</style>
</asp:Content>
