<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="PruebaWebCAQ.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="Gallery" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini" style="color:white;">Galería</h2>
                </div>
            </div>
        </div>
    </section>
    <section class="portfolio_classic_two_columns">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="style_portfolio2" class="portfolioWrap">
                        <section class="masonry isotope" data-columns="4">
                             <asp:Repeater runat="server" ID="galleryRepeater" OnItemDataBound="galleryRepeater_ItemDataBound">
                                 <ItemTemplate>
                                     <article class="isotopeElement flt_65 flt_66 flt_7 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div runat="server" id="bigImageDiv" class="thumb hoverIncrease" >
                                        <asp:Image runat="server" ID="galleryImage"/>
                                    </div>
                                    <h4>
                                        <asp:label runat="server" id="galleryTittle"></asp:label>
                                    </h4>
                                    <asp:label runat="server" id="galleryDescription"></asp:label>
                                    <div class="masonryInfo">
                                        Publicado
                                        <asp:label runat="server" id="galleryDate" CssClass="post_date"></asp:label>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                                 </ItemTemplate>
                             </asp:Repeater>
                        </section>
                    </div>
                </div>
            </div>  
        </div>   
    </section>
   
</asp:Content>
