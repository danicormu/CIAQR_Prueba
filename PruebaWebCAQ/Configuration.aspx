<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="Configuration.aspx.cs" Inherits="PruebaWebCAQ.Configuration" %>
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
                                                                        <h4><asp:Label ID="lblMyUsername" runat="server"  /></h4>
                                                                        <asp:TextBox ID="newUserName" runat="server" placeholder="Nombre de Usuario" Width="70%"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-7">
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Crear</a> -->
                                                                            <asp:Button runat="server" ID="SaveUsername" OnClick="SaveUsername_Click" Text="Guardar Cambios"/>
                                                                            <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                        </div>
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                                            <asp:Button runat="server" ID="Button2" Text="Cancelar" />
                                                                        </div>
                                                                        <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
                                                                            TargetControlID="processbtn"
                                                                            cancelcontrolid="btnCancel" 
	                                                                        PopupControlID="Panel1"
	                                                                        drag="true" 
	                                                                        backgroundcssclass="modalBackground">
                                                                        </asp:ModalPopupExtender>
                                                                    </div>
                                                                    <br />
                                                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <asp:panel id="Panel1" style="display: none" CssClass="modalPopup" align="center" runat="server">
                                                <p runat="server" id="message"></p>
                                                <hr />
                                                <input id="btnCancel" type="button" value="Aceptar" />
                                            </asp:panel>
                                            <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Contraseña</h4>
                                                 <div class="sc_toggles_content">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="sc_contact_form sc_contact_form_contact">
                                                                <div class="columnsWrap">
                                                                    <div class="col-sm-7">
                                                                        <asp:TextBox ID="txt_ActPass" runat="server" TextMode="Password" placeholder="Contraseña Actual" Width="70%"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                        <asp:TextBox ID="txt_NewPass" runat="server" TextMode="Password" placeholder="Nueva Contraseña" Width="70%"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                        <asp:TextBox ID="txt_RepPass" runat="server" TextMode="Password" placeholder="Repetir Contraseña" Width="70%"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-7">
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Crear</a> -->
                                                                            <asp:Button runat="server" ID="btnSavePass" OnClick="btnSavePass_Click" Text="Guardar Cambios" />
                                                                        </div>
                                                                        <div class="sc_button sc_button_style_dark sc_button_size_big squareButton dark big">
                                                                            <!-- <a href="#" class="">Cancelar</a> -->
                                                                            <asp:Button runat="server" ID="Button4" Text="Cancelar"  />
                                                                        </div>
                                                                    </div>
                                                                    <br />
                                                                    <asp:Label ID="errorMessage" runat="server" Text="" ForeColor="Red" Visible="true"></asp:Label>
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
                                        </div>
                                        <br />
                                        <br />
                                        <div class="sc_toggles_item">
                                                <h4 class="sc_toggles_title">Ver Administradores</h4>
                                                <div class="sc_toggles_content">

                                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                                            <table>
                                                                <tbody>
                                                                    <tr>
                                                                        <th>Id</th>
                                                                        <th>Administrador</th>
                                                                        <th>Eliminar Administrador</th>
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
                                                                                    <asp:LinkButton runat="server" ID="btnDeleteAdmin" Text="Eliminar" CommandName="deleteAdmin"></asp:LinkButton>
                                                                                    <asp:Button runat="server" ID="processbtn2" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                                                                </td>
                                                                            </tr>
                                                                             <asp:ModalPopupExtender id="ModalPopupExtender2" runat="server" 
                                                                                TargetControlID="processbtn2"
                                                                                cancelcontrolid="btnToSayBye" 
	                                                                            PopupControlID="Panel2"
	                                                                            drag="true" 
	                                                                            backgroundcssclass="modalBackground1">
                                                                             </asp:ModalPopupExtender>
                                                                        </ItemTemplate>
                                                                    </asp:Repeater>
                                                                </tbody>
                                                            </table>
                                                            
                                                            <asp:panel id="Panel2" style="display: none" CssClass="modalPopup1" align="center" runat="server">
                                                                <p>ID de Administrador: <asp:Label runat="server" ID="adminInfo"></asp:Label></p>
                                                                <br />
                                                               <p>Para eliminar un admininstrador existente por favor indique sus credenciales de administrador en los espacios que se le proveen</p>
                                                                <hr />
                                                                <asp:TextBox runat="server" ID="usernameToConfirm" placeholder="nombre de usuario"></asp:TextBox>
                                                                <br />
                                                                <asp:TextBox runat="server" ID ="passToConfirm" placeholder ="contraseña" TextMode="Password"></asp:TextBox> 
                                                               <hr />
                                                                <asp:Button runat="server" ID="submitBtn" OnClick="submitBtn_Click" Text ="Aceptar"/>
                                                               <input id="btnToSayBye" type="button" value="Cancelar" />
                                                           </asp:panel>
                                                        </div>
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
        width: 400px;
        height: 400px;
    }
</style>
</asp:Content>
