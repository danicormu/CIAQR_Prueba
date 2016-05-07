<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminSchedule.aspx.cs" Inherits="PruebaWebCAQ.AdminSchedule" %>
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
                                    <h2 class="margin_top_small">Administrar Horarios</h2>
                                    <hr />
                                    <h3 class="margin_top_small">Crear Horario</h3>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
                                        <div class ="container">
                                            <div class="col-lg-2">
                                                <p>Seleccione el Nivel:</p>
                                                <asp:DropDownList runat="server" ID="selectLevel">
                                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Button runat="server" ID="selectLvl" CssClass="button" Text="Seleccionar" OnClick="selectLvl_Click" />
                                            </div>
      
                                            <div class="col-lg-2">
                                                <p>Seleccione el Grupo:</p>
                                                <asp:DropDownList runat="server" ID="groupSlct">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-lg-2">
                                                <p>Seleccione el Día:</p>
                                                <asp:DropDownList runat="server" ID="selectDay">
                                                    <asp:ListItem Text="Lunes" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Martes" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="Miércoles" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="Jueves" Value="4"></asp:ListItem>
                                                    <asp:ListItem Text="Viernes" Value="5"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Hora Inicio</th>
                                                        <th>Hora Fin</th>
                                                        <th>Materia</th>
                                                        <th>Profesor(a)</th>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblFirHI" runat="server" Text="7:00 am"></asp:Label></td>
                                                        <td><asp:Label ID="lblFirHF" runat="server" Text="7:40 am"></asp:Label></td>
                                                        <td><asp:TextBox ID="firstLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="fisrtLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblSecHI" runat="server" Text="7:40 am"></asp:Label></td>                                                        
                                                        <td><asp:Label ID="lblSecHF" runat="server" Text="8:20 am"></asp:Label></td>
                                                        <td><asp:TextBox ID="secLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="secLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="rowColor">
                                                        <td><asp:Label ID="lblFBreakHI" runat="server" Text="8:20 am"></asp:Label></td>   
                                                        <td><asp:Label ID="lblFBreakHF" runat="server" Text="8:35 am"></asp:Label></td> 
                                                        <td><asp:Label ID="lblFBreak" runat="server" Text="RECESO"></asp:Label></td>
                                                        <td> - - - - </td>                                                       
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblThiHI" runat="server" Text="8:35 am"></asp:Label></td>
                                                        <td><asp:Label ID="lblThiHF" runat="server" Text="9:15 am"></asp:Label></td>
                                                        <td><asp:TextBox ID="thirdLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="thirdLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblFouHI" runat="server" Text="9:15 am"></asp:Label></td>
                                                        <td><asp:Label ID="lblFouHF" runat="server" Text="9:55 am"></asp:Label></td>
                                                        <td><asp:TextBox ID="fouthLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="fouthLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="rowColor">
                                                        <td><asp:Label ID="lblSBreakHI" runat="server" Text="9:55 am"></asp:Label></td>   
                                                        <td><asp:Label ID="lblSBreakHF" runat="server" Text="10:00 am"></asp:Label></td> 
                                                        <td><asp:Label ID="lblSBreak" runat="server" Text="RECESO"></asp:Label></td>
                                                        <td> - - - - </td>                                                        
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblFifHI" runat="server" Text="10:00 am"></asp:Label></td>
                                                        <td><asp:Label ID="lblFifHF" runat="server" Text="10:40 am"></asp:Label></td>
                                                        <td><asp:TextBox ID="fifthLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="fifthLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblSixHI" runat="server" Text="10:40 am"></asp:Label></td>
                                                        <td><asp:Label ID="lblSixHF" runat="server" Text="11:20 am"></asp:Label></td>
                                                        <td><asp:TextBox ID="sixthLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="sixthLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="rowColor">
                                                        <td><asp:Label ID="lblLunchHI" runat="server" Text="11:20 am"></asp:Label></td>   
                                                        <td><asp:Label ID="lblLunchHF" runat="server" Text="12:00 md"></asp:Label></td> 
                                                        <td><asp:Label ID="lblLunch" runat="server" Text="ALMUERZO"></asp:Label></td> 
                                                        <td> - - - - </td>                                                      
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblSevHI" runat="server" Text="12:00 md"></asp:Label></td>
                                                        <td><asp:Label ID="lblSevHF" runat="server" Text="12:40 pm"></asp:Label></td>
                                                        <td><asp:TextBox ID="seventhLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="sevenththirdLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblEigHI" runat="server" Text="12:40 pm"></asp:Label></td>
                                                        <td><asp:Label ID="lblEigHF" runat="server" Text="1:20 pm"></asp:Label></td>
                                                        <td><asp:TextBox ID="eigthLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="eigthLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="rowColor">
                                                        <td><asp:Label ID="lblTBreakHI" runat="server" Text="1:20 pm"></asp:Label></td>   
                                                        <td><asp:Label ID="lblTBreakHF" runat="server" Text="1:25 pm"></asp:Label></td> 
                                                        <td><asp:Label ID="lblTBreak" runat="server" Text="RECESO"></asp:Label></td>
                                                        <td> - - - - </td>                                                         
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblNinHI" runat="server" Text="1:25 pm"></asp:Label></td>
                                                        <td><asp:Label ID="lblNinHF" runat="server" Text="2:05 pm"></asp:Label></td>
                                                        <td><asp:TextBox ID="ninethLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="ninethLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblTenHI" runat="server" Text="2:05 pm"></asp:Label></td>
                                                        <td><asp:Label ID="lblTenHF" runat="server" Text="2:45 pm"></asp:Label></td>
                                                        <td><asp:TextBox ID="tenthLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="tenthLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="rowColor">
                                                        <td><asp:Label ID="lblFoBreakHI" runat="server" Text="2:45 pm"></asp:Label></td>   
                                                        <td><asp:Label ID="lblFoBreakHF" runat="server" Text="3:00 pm"></asp:Label></td> 
                                                        <td><asp:Label ID="lblFoBreak" runat="server" Text="RECESO"></asp:Label></td>
                                                        <td> - - - - </td>                                                      
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblEleHI" runat="server" Text="3:00 pm"></asp:Label></td>
                                                        <td><asp:Label ID="lblEleHF" runat="server" Text="3:40 pm"></asp:Label></td>
                                                        <td><asp:TextBox ID="eleventhLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="eleventhLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td><asp:Label ID="lblTweHI" runat="server" Text="3:40 pm"></asp:Label></td>
                                                        <td><asp:Label ID="lblTweHF" runat="server" Text="4:20 pm"></asp:Label></td>
                                                        <td><asp:TextBox ID="twelvethLecSb" runat="server"></asp:TextBox></td>
                                                        <td><asp:TextBox ID="twelvethLecTeacher" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="rowColor">
                                                        <td> - </td>  
                                                        <td> - </td>
                                                        <td> - </td>
                                                        <td> - </td>                                                                                                           
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-sm-7">
                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                            <!-- <a href="#" class="">Crear</a> -->
                                            <asp:Button runat="server" ID="saveSchedule" Text="Guardar Horario" OnClick="saveSchedule_Click" />
                                            <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                            <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                            cancelcontrolid="btnCancel" 
                                                TargetControlID="processbtn"
	                                            PopupControlID="Panel1"
	                                            drag="true" 
	                                            backgroundcssclass="modalBackground">
                                             </asp:ModalPopupExtender>
                                            <asp:panel id="Panel1" style="display: none" CssClass="modalPopup" align="center" runat="server">
                                               <p runat="server" id="message"></p>
                                               <hr />
                                               <input id="btnCancel" type="button" value="Aceptar" />
                                            </asp:panel>
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
    <section class="widgetTabs">
        <div class="mainWrap without_sidebar">
            <div class="container">
                <div class="row content">
                    <div class="col-sm-12">
                        <div class="tab-content">
                            <div class="tab-pane fade in active blogContent">
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Ver Horarios</h2>
                                    <hr />
                                    <div class="sc_table sc_table_style_1 sc_table_size_big">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <th>ID de Referencia</th>
                                                    <th>Día</th>
                                                    <th>Grupo</th>
                                                    <th>Nivel</th>
                                                    <th>Eliminar</th>
                                                    <th>Editar</th>
                                                </tr>
                                                <asp:Repeater runat="server" ID="scheduleRepeater" OnItemDataBound="scheduleRepeater_ItemDataBound" OnItemCommand="scheduleRepeater_ItemCommand">
                                                     <ItemTemplate>
                                                         <tr>
                                                             <th><asp:Label runat="server" ID="idSchedule"></asp:Label></th>
                                                             <th><asp:Label runat="server" ID="scheduleDay"></asp:Label></th>
                                                             <th><asp:Label runat="server" ID="scheduleGroup"></asp:Label></th>
                                                             <th><asp:Label runat="server" ID="scheduleLevel"></asp:Label></th>
                                                             <th><asp:LinkButton runat="server" ID="deleteBtn" CommandName="delete" OnClientClick='javascript:return confirm("Está seguro qué desea eliminar el horario?")'></asp:LinkButton></th>
                                                             <th><asp:LinkButton runat="server" ID="editBtn" CommandName="edit"></asp:LinkButton></th>
                                                         </tr>
                                                     </ItemTemplate>
                                                 </asp:Repeater>   
                                                <tr></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </article>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>

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
</asp:Content>
