<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminTeam.aspx.cs" Inherits="PruebaWebCAQ.AdminTeam" %>

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
                                                        <asp:TextBox ID="personName_txt" runat="server" required="true" placeholder="Nombre Completo" Width="100%"></asp:TextBox>
                                                        <!-- <br />
                                                        <br />
                                                        <asp:TextBox ID="personSubj_txt" runat="server" placeholder="Asignatura" Width="70%"></asp:TextBox> -->
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="personRol_txt" runat="server" required="true" placeholder="Rol (Profesor, Director, Otro..)" Width="100%"></asp:TextBox>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox ID="personDescription_txt" runat="server" required="true" placeholder="Descripción de la persona..." TextMode="MultiLine" Rows="10" Height="75px" Width="100%" />
                                                    </div>
                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                            <asp:FileUpload ID="imgUpload" runat="server" />                                                            
                                                        </div>
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">                                                            
                                                            <asp:Button runat="server" ID="uploadPImage" Text="Cargar" OnClick="uploadPImage_Click"/>
                                                        </div>
                                                        <br />
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">                                                            
                                                            <asp:Button runat="server" ID="createPerson" Text="Crear" OnClick="createPerson_Click" />
                                                        </div>
                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">                                                            
                                                            <asp:Button runat="server" ID="cancelPerson" Text="Cancelar" OnClick="cancelPerson_Click" />
                                                        </div>
                                                    </div>
                                                    <br />                                                    
                                                    <asp:Label ID="lblImage" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                    <asp:Label ID="lblWarning" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                </div>                                                
                                            
                                            </article>
                                        </div>
                                    </div>


                                </article>
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
                                                                    <asp:Label runat="server" ID="asIdPerson" /></td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asNamePerson" Width="190px" />
                                                                    <asp:TextBox runat="server" ID="txtNamePer" Visible="false"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asRolePerson" />
                                                                    <asp:TextBox runat="server" ID="txtRolePer" Visible="false"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="asDescPerson" Width="280px" />
                                                                    <asp:TextBox runat="server" ID="txtDescPer" Visible="false"></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton runat="server" ID="btn_Edit" Text="Editar" CommandName="personEdit" />
                                                                    <asp:LinkButton runat="server" ID="btn_Update" Text="Actualizar" CommandName="personUpdate" Visible="false"></asp:LinkButton>
                                                                    <asp:LinkButton runat="server" ID="btn_CancelUpdate" Text="Cancelar" CommandName="perCancelUpdate" Visible="false"></asp:LinkButton>
                                                                    <asp:LinkButton runat="server" ID="btn_Delete" CommandName="personDelete" OnClientClick='javascript:return confirm("Está seguro que desea eliminar la persona?")'>Eliminar</asp:LinkButton>
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
    </section>
</asp:Content>
