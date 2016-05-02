<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="Configuration.aspx.cs" Inherits="PruebaWebCAQ.Configuration" %>
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
                                    <h2 class="margin_top_small">Mi cuenta</h2>
                                    <div class="sc_section sc_alignleft col-sm-table">
                                        <div class="sc_toggles sc_toggles_style_2">
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Nombre de Usuario</h4>
                                                <div class="sc_toggles_content">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="sc_contact_form sc_contact_form_contact">
                                                                <div class="columnsWrap">
                                                                    <div class="col-sm-7">
                                                                        <h4><asp:Label ID="lblMyUsername" runat="server" Text="danicormu"  /></h4>
                                                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Nombre de Usuario" Width="70%"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-7">
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Crear</a> -->
                                                                            <asp:Button runat="server" ID="Button1" Text="Guardar Cambios"/>
                                                                        </div>
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                                            <asp:Button runat="server" ID="Button2" Text="Cancelar" />
                                                                        </div>
                                                                    </div>
                                                                    <br />
                                                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Contraseña</h4>
                                                 <div class="sc_toggles_content">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="sc_contact_form sc_contact_form_contact">
                                                                <div class="columnsWrap">
                                                                    <div class="col-sm-7">
                                                                        <asp:TextBox ID="txt_ActPass" runat="server" TextMode="Password" placeholder="Contraseña Actual" Width="70%" Required="true"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                        <asp:TextBox ID="txt_NewPass" runat="server" TextMode="Password" placeholder="Nueva Contraseña" Width="70%" Required="true"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                        <asp:TextBox ID="txt_RepPass" runat="server" TextMode="Password" placeholder="Repetir Contraseña" Width="70%" Required="true"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-7">
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Crear</a> -->
                                                                            <asp:Button runat="server" ID="btnSavePass" Text="Guardar Cambios" />
                                                                        </div>
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                                            <asp:Button runat="server" ID="Button4" Text="Cancelar"  />
                                                                        </div>
                                                                    </div>
                                                                    <br />
                                                                    <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>                                           
                                        </div>
                                    </div>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Administradores</h2>
                                    <div class="sc_section sc_alignleft col-sm-table">
                                        <div class="sc_toggles sc_toggles_style_2">
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Crear Administrador</h4>
                                                <div class="sc_toggles_content">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="sc_contact_form sc_contact_form_contact">
                                                                <div class="columnsWrap">
                                                                    <div class="col-sm-7">
                                                                        <asp:TextBox ID="AdminUser_txt" runat="server" placeholder="Nombre de Usuario" Width="70%"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                        <asp:TextBox ID="AdminPass_txt" runat="server" TextMode="Password" placeholder="Contraseña" Width="70%"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                        <asp:CheckBox Style="float: left" runat="server" Checked="false" ID="chkShowPass" Text="Mostrar Contraseña"      />
                                                                    </div>

                                                                    <div class="col-sm-7">
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Crear</a> -->
                                                                            <asp:Button runat="server" ID="createAdmin" Text="Nuevo Administrador" OnClick="createAdmin_Click" />
                                                                        </div>
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                                            <asp:Button runat="server" ID="cancelAdmin" Text="Cancelar" />
                                                                        </div>
                                                                    </div>
                                                                    <br />
                                                                    <asp:Label ID="lblWarning" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Editar Administrador</h4>
                                                <div class="sc_toggles_content">

                                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                                            <table>
                                                                <tbody>
                                                                    <tr>
                                                                        <th>Id</th>
                                                                        <th>Administrador</th>
                                                                        <th>Edición</th>
                                                                    </tr>
                                                                    <asp:Repeater ID="administratorTable" runat="server" OnItemDataBound="administratorTable_ItemDataBound" OnItemCommand="administratorTable_ItemCommand">
                                                                        <ItemTemplate>
                                                                            <tr runat="server" id="tableRow">
                                                                                <td>
                                                                                    <asp:Label runat="server" ID="asAdminId" />

                                                                                </td>
                                                                                <td>
                                                                                    <asp:Label runat="server" ID="asAdminName" />
                                                                                </td>
                                                                                <td>
                                                                                    <asp:LinkButton runat="server" ID="btnEditAdmin" Text="Editar" CommandName="editAdmin"></asp:LinkButton>
                                                                                    <asp:LinkButton runat="server" ID="btnDeleteAdmin" Text="Eliminar" CommandName="deleteAdmin"></asp:LinkButton>
                                                                                </td>
                                                                            </tr>

                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Eliminar Administrador</h4>
                                                <div class="sc_toggles_content">
                                                </div>
                                            </div>
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
    <script type="text/javascript">
    $(function () {
        $("#chkShowPass").bind("click", function () {
            var AdminPass_txt = $("[id*=AdminPass_txt]");
            if ($(this).is(":checked")) {
                AdminPass_txt.after('<input id = "txt_' + AdminPass_txt.attr("id") + '" type = "text" value = "' + AdminPass_txt.val() + '" />');
                AdminPass_txt.hide();
            } else {
                AdminPass_txt.val(AdminPass_txt.next().val());
                AdminPass_txt.next().remove();
                AdminPass_txt.show();
            }
        });
    });
</script>
</asp:Content>
