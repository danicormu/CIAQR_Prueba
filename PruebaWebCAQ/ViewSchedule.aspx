<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="PruebaWebCAQ.ViewSchedule" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        height: 300px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="Gallery" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini" style="color:white;">Horario del Grupo <asp:Label runat="server" ID="groupTag"></asp:Label></h2>
                </div>
            </div>
        </div>
    </section>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section>
        <h2 class="text-center">Horario</h2> 
        <div class="sc_table sc_table_style_1 sc_table_size_big sc_table_align_center"> 
                            <table>
                                <tbody>
                                    <tr>
                                       <th>Hora de Inicio</th>
                                       <th>Hora Final</th>
                                       <th>Lunes</th>
                                       <th>Martes</th>
                                       <th>Miércoles</th>
                                       <th>Jueves</th>
                                       <th>Viernes</th>
                                     </tr>
                                    <tr>
                                        <th>
                                            <asp:listview runat="server" ID="startList">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="startTime" Text="<%#Container.DataItem %>"></asp:Label><asp:Button runat="server" Style="visibility:hidden;" /><hr />
                                                </ItemTemplate>
                                            </asp:listview>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="endList">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="endTime" Text="<%#Container.DataItem %>"></asp:Label><asp:Button runat="server" Style="visibility:hidden;" /><hr />
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="mondayList" OnItemCommand="mondayList_ItemCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="monday" CommandName="monday_Click" Text="<%#Container.DataItem %>"></asp:LinkButton><asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" /><hr />
                                                    <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                                    cancelcontrolid="btnCancel" 
                                                        TargetControlID="processbtn"
	                                                    PopupControlID="Panel1"
	                                                    drag="true" 
	                                                    backgroundcssclass="modalBackground">
                                                    </asp:ModalPopupExtender>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="tuesdayList" OnItemCommand="tuesdayList_ItemCommand" OnSelectedIndexChanging="fridayList_SelectedIndexChanging">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="tuesday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" /><hr />
                                                    <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                                    cancelcontrolid="btnCancel" 
                                                        TargetControlID="processbtn"
	                                                    PopupControlID="Panel1"
	                                                    drag="true" 
	                                                    backgroundcssclass="modalBackground">
                                                    </asp:ModalPopupExtender>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="wendsdayList" OnItemCommand="wendsdayList_ItemCommand" OnSelectedIndexChanging="fridayList_SelectedIndexChanging">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="wendsday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" /><hr />
                                                     <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                                    cancelcontrolid="btnCancel" 
                                                        TargetControlID="processbtn"
	                                                    PopupControlID="Panel1"
	                                                    drag="true" 
	                                                    backgroundcssclass="modalBackground">
                                                    </asp:ModalPopupExtender>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="thursdarList" OnItemCommand="thursdarList_ItemCommand" OnSelectedIndexChanging="fridayList_SelectedIndexChanging">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="thursday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" /><hr />
                                                     <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                                    cancelcontrolid="btnCancel" 
                                                        TargetControlID="processbtn"
	                                                    PopupControlID="Panel1"
	                                                    drag="true" 
	                                                    backgroundcssclass="modalBackground">
                                                    </asp:ModalPopupExtender>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="fridayList" OnItemCommand="fridayList_ItemCommand" OnSelectedIndexChanging="fridayList_SelectedIndexChanging">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="friday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" /><hr />
                                                     <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                                    cancelcontrolid="btnCancel" 
                                                        TargetControlID="processbtn"
	                                                    PopupControlID="Panel1"
	                                                    drag="true" 
	                                                    backgroundcssclass="modalBackground">
                                                    </asp:ModalPopupExtender>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                    </tr>
                                     
                                           
                                </tbody>
                   </table> 
            
            
            <asp:panel id="Panel1" style="display: none" CssClass="modalPopup" align="center" runat="server">
                    <asp:Repeater runat="server" ID="panelRepeater" OnItemDataBound="panelRepeater_ItemDataBound">
                        <ItemTemplate>
                            <asp:Label CssClass="title" runat="server" ID="signature"></asp:Label><br />
                            <asp:Label runat="server" ID="prof"></asp:Label><br />
                            <asp:Label runat="server" ID="start"></asp:Label><br />
                            <asp:Label runat="server" ID="end"></asp:Label>
                            <br />
                            <hr />
                        </ItemTemplate>
                </asp:Repeater>            
                    <input id="btnCancel" type="button" value="Aceptar" />
            </asp:panel>
        </div>
        <hr />
    </section>
</asp:Content>
