<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" Inherits="PruebaWebCAQ.ViewSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                                    <asp:Label runat="server" ID="startTime" Text="<%#Container.DataItem %>"></asp:Label><br /><hr />
                                                </ItemTemplate>
                                            </asp:listview>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="endList">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="endTime" Text="<%#Container.DataItem %>"></asp:Label><br /><hr />
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="mondayList" OnItemCommand="mondayList_ItemCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="monday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><br /><hr />
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="tuesdayList" OnItemCommand="tuesdayList_ItemCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="tuesday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><br /><hr />
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="wendsdayList" OnItemCommand="wendsdayList_ItemCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="wendssday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><br /><hr />
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="thursdarList" OnItemCommand="thursdarList_ItemCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="thursday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><br /><hr />
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                        <th>
                                            <asp:ListView runat="server" ID="fridayList" OnItemCommand="fridayList_ItemCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton runat="server" ID="friday" CommandName="select" Text="<%#Container.DataItem %>"></asp:LinkButton><br /><hr />
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </th>
                                    </tr>
                                     
                                           
                                </tbody>
                   </table> 
            </div>
        <hr />
    </section>
</asp:Content>
