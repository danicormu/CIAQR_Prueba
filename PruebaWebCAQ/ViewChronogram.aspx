<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="ViewChronogram.aspx.cs" Inherits="PruebaWebCAQ.ViewChronogram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="Gallery" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini" style="color:white;">Cronograma de Actividades</h2>
                </div>
            </div>
        </div>
    </section>
    <section>
        <h2 class="text-center">Actividades</h2> 
        <div class="sc_table sc_table_style_1 sc_table_size_big sc_table_align_center"> 
                            <table>
                                <tbody>
                                    <tr>
                                       <th>Actividad</th>
                                       <th>Descripción</th>
                                       <th>Fecha</th>
                                       <th>Tipo de Actividad</th>
                                     </tr>
                                    <asp:Repeater runat="server" ID="eventRepeater" OnItemDataBound="eventRepeater_ItemDataBound">
                                        <ItemTemplate>      
                                    <tr runat="server" id="tableRow" class="sc_table_grey">
                                            <td> <asp:Label runat="server" ID="activityName"></asp:Label></td>
                                            <td><asp:Label runat="server" ID="activityDescription"></asp:Label></td>
                                            <td><asp:Label runat="server" ID="activityDate"></asp:Label></td>
                                            <td><asp:Label runat="server" ID="activityType"></asp:Label></td>
                                    </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                   </table> 
            </div>
    </section>

</asp:Content>
