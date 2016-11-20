<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Administrative.aspx.cs" Inherits="PruebaWebCAQ.Administrative" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="KnowUs">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini">Junta Administrativa</h2>
                </div>
            </div>
            <div class="row">
                <div class="sc_team">
                    <asp:Repeater ID="administrativeRepeater" runat="server" OnItemDataBound="administrativeRepeater_ItemDataBound">
                        <ItemTemplate>
                            <div class="col-md-3 col-sm-6 margin_bottom_small">
                                <div class="sc_team_item">
                                    <div class="sc_team_item_avatar">
                                        <asp:Image runat="server" ID="personalImage" />
                                        <div class="sc_team_item_description">
                                            <asp:Label runat="server" Style="color:#fff" ID="personalDescription"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="sc_team_item_info">
                                        <h3 runat="server" id="personalName" class="sc_team_item_title"></h3>
                                        <div class="sc_team_item_position theme_accent2">
                                            <asp:Label runat="server" Style="color:#585858" ID="personalRol"></asp:Label>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
