<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminSchedule.aspx.cs" Inherits="PruebaWebCAQ.AdminSchedule" %>

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
                                    <h2 class="margin_top_small">Administrar Horario</h2>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="sc_contact_form sc_contact_form_contact">
                                                <div class="columnsWrap">
                                                    <div class="col-sm-7">
                                                        <input required="required" runat="server" id="schDay" width="70%" type="text" placeholder="Día" />
                                                        <br />
                                                        <br />
                                                        <input required="required" runat="server" id="schLevel" width="70%" type="text" placeholder="Nivel" />
                                                        <br />
                                                        <br />
                                                        <input required="required" runat="server" id="schGroup" width="70%" type="text" placeholder="Grupo" />
                                                        <br />
                                                        <br />

                                                    </div>
                                                    <div class="col-sm-7">
                                                        <div class="sc_button sc_button_style_light sc_button_size_huge squareButton light huge">
                                                            <!-- <a href="#" class="">Crear</a> -->
                                                            <asp:Button runat="server" ID="loadSchedule" Text="Mostrar Cronograma" />
                                                        </div>                                                        
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article class="hrShadow post">
                                    <h2 class="margin_top_small">Horarios</h2>
                                    <div class="sc_section sc_alignleft col-sm-table margin_bottom_small">
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
                                                        <td> - </td>   
                                                        <td> - </td> 
                                                        <td>RECESO</td> 
                                                        <td> - </td>                                                       
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
                                                        <td> - </td>   
                                                        <td> - </td> 
                                                        <td>RECESO</td> 
                                                        <td> - </td>                                                      
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
                                                        <td> - </td>   
                                                        <td> - </td> 
                                                        <td>ALMUERZO</td> 
                                                        <td> - </td>                                                      
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
                                                        <td> - </td>   
                                                        <td> - </td> 
                                                        <td>RECESO</td> 
                                                        <td> - </td>                                                        
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
                                                        <td> - </td>   
                                                        <td> - </td> 
                                                        <td>RECESO</td> 
                                                        <td> - </td>                                                      
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
                                            <asp:Button runat="server" ID="saveSchedule" Text="Guardar" />
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
