<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="AdminChrono.aspx.cs" Inherits="PruebaWebCAQ.AdminChrono" %>
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
                                        <h2 class="margin_top_small">Administrar Cronograma</h2>
                                        <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="sc_contact_form sc_contact_form_contact">                                                              
                                                                <div class="columnsWrap">
                                                                    <div class="col-sm-7">
                                                                        <input required="required" runat="server" id="chronoActivity" width="70%" type="text" placeholder="Actividad" />
                                                                        <br />
                                                                        <br />
                                                                        <input required="required" runat="server" id="ActivityDate" width="70%" type="text" placeholder="Fecha" />
                                                                        <br />
                                                                        <br />
                                                                        <input required="required" runat="server" id="typeActivity" width="70%" type="text" placeholder="Tipo de Actividad" />
                                                                        <br />
                                                                        <br />
                                                                        <input required="required" runat="server" id="staHour" width="25%" type="text" placeholder="Hora Inicio" /><input required="required" runat="server" id="endHour" width="35%" type="text" placeholder="Hora Fin" />
                                                                        <br />
                                                                        <br />
                                                                        <textarea required="required" runat="server" id="activityDescription" width="70%" rows="15" class="textAreaSize" placeholder="Descripción..."></textarea>                                                                   
                                                                   </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>                                     
                                        <div class="postSharing">
                                            <ul>
                                                
                                                <li class="squareButton light ico">
                                                    <a class="fa-eye" title="Views - 308" href="features_shortcodes_zoom.html">308</a>
                                                </li>
                                                <li class="squareButton light ico">
                                                    <a class="fa-comment" title="Comments - 1" href="features_shortcodes_zoom.html">1</a>
                                                </li>
                                                <li class="squareButton light ico">
                                                    <a class="fa-star" title="Rating - 79.3" href="features_shortcodes_zoom.html">79.3</a>
                                                </li>
                                                <li class="squareButton light ico likeButton like" data-postid="109" data-likes="10" data-title-like="Like" data-title-dislike="Dislike">
                                                    <a class="fa-heart" title="Like - 10" href="#">
                                                        <span class="likePost">10</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </article>
                                    <article class="hrShadow post">
                                        <h2 class="margin_top_small">Cronograma</h2>
                                         <div class="sc_section sc_alignleft col-sm-6 margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Actividad</th>
                                                        <th>Fecha</th>
                                                        <th>Tipo de Actividad</th>
                                                        <th>Hora Inicio</th>
                                                        <th>Hora Fin</th>
                                                        <th>Descripción</th>
                                                        <th>Conf.</th>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Examen de Matematica</td>
                                                        <td>22 Feb</td>
                                                        <td>Examen</td>
                                                        <td>2:00 pm</td>
                                                        <td>4:20 pm</td>
                                                        <td>El ecsdxkndjds</td>
                                                        <td>
                                                            <button>Editar</button>
                                                            <button>Eliminar</button></td>
                                                    </tr>                                                    
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
        </section><section class="widgetTabs">
            <div class="mainWrap without_sidebar">
                <div class="container">
                    <div class="row content">
                        <div class="col-sm-12">
                            <div class="tab-content">
                                <div class="tab-pane fade in active blogContent" id="tabBlog">
                                    <article class="hrShadow post">
                                        <h2 class="margin_top_small">Administrar Cronograma</h2>
                                        <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="sc_contact_form sc_contact_form_contact">                                                              
                                                                <div class="columnsWrap">
                                                                    <div class="col-sm-7">
                                                                        <input required="required" runat="server" id="Text1" width="70%" type="text" placeholder="Actividad" />
                                                                        <br />
                                                                        <br />
                                                                        <input required="required" runat="server" id="Text2" width="70%" type="text" placeholder="Fecha" />
                                                                        <br />
                                                                        <br />
                                                                        <input required="required" runat="server" id="Text3" width="70%" type="text" placeholder="Tipo de Actividad" />
                                                                        <br />
                                                                        <br />
                                                                        <input required="required" runat="server" id="Text4" width="25%" type="text" placeholder="Hora Inicio" /><input required="required" runat="server" id="Text5" width="35%" type="text" placeholder="Hora Fin" />
                                                                        <br />
                                                                        <br />
                                                                        <textarea required="required" runat="server" id="Textarea1" width="70%" rows="15" class="textAreaSize" placeholder="Descripción..."></textarea>                                                                   
                                                                   </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>                                     
                                        <div class="postSharing">
                                            <ul>
                                                
                                                <li class="squareButton light ico">
                                                    <a class="fa-eye" title="Views - 308" href="features_shortcodes_zoom.html">308</a>
                                                </li>
                                                <li class="squareButton light ico">
                                                    <a class="fa-comment" title="Comments - 1" href="features_shortcodes_zoom.html">1</a>
                                                </li>
                                                <li class="squareButton light ico">
                                                    <a class="fa-star" title="Rating - 79.3" href="features_shortcodes_zoom.html">79.3</a>
                                                </li>
                                                <li class="squareButton light ico likeButton like" data-postid="109" data-likes="10" data-title-like="Like" data-title-dislike="Dislike">
                                                    <a class="fa-heart" title="Like - 10" href="#">
                                                        <span class="likePost">10</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </article>
                                    <article class="hrShadow post">
                                        <h2 class="margin_top_small">Cronograma</h2>
                                         <div class="sc_section sc_alignleft col-sm-6 margin_bottom_small">
                                        <div class="sc_table sc_table_style_1 sc_table_size_big">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Actividad</th>
                                                        <th>Fecha</th>
                                                        <th>Tipo de Actividad</th>
                                                        <th>Hora Inicio</th>
                                                        <th>Hora Fin</th>
                                                        <th>Descripción</th>
                                                        <th>Conf.</th>
                                                    </tr>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Examen de Matematica</td>
                                                        <td>22 Feb</td>
                                                        <td>Examen</td>
                                                        <td>2:00 pm</td>
                                                        <td>4:20 pm</td>
                                                        <td>El ecsdxkndjds</td>
                                                        <td>
                                                            <button>Editar</button>
                                                            <button>Eliminar</button></td>
                                                    </tr>                                                    
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
