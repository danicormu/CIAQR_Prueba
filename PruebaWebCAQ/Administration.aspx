<%@ Page Language="C#" MasterPageFile="~/Administration.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="PruebaWebCAQ.Administration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="centerAdministration" runat="server">
     <section id="topOfPage" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="speedBar">
                        <a class="home" href="Administration.aspx">Administración</a> 
                    </div>
                    <h3 class="pageTitle h3">Bienvenido a la Zona de Administración</h3>
                </div>
            </div>
        </div>
    </section>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section id="dudas" class="mainWrap with_sidebar sideBarRight">
        <div class="container" role="main">
            <div class="row content">
                <!--preguntas de uso-->
                <div class="col-sm-12 col-md-8">
                    <div class="sc_column_item" id="useQuestions">
                        <h2>Preguntas de Uso</h2>
                        <p>A continuación se le presentan preguntas frecuentes acerca del uso de la administración. En esta sección encontrara respuestas acerca del uso de la sección de administración que le permitirá administrar el contenido de la aplicacion de una manera sencilla y práctica.</p>
                        <div class="sc_section"> 
                            <div class="panel-group sc_accordion sc_accordion_style_3" id="accordion3">
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion3" href="#collapse7">
                                                    ¿Cómo funciona la sección de administración?  
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse7" class="panel-collapse collapse in">
                                            <div class="sc_accordion_content">
                                                En el menú principal de la sección encontrará todas las opciones de la administración. En cada una de ellas podrá hacer los cambios necesarios como eliminar contenido o cambiarlo. 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion3" href="#collapse8" class="collapsed">
                                                    ¿Cómo agrego administradores?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse8" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                En la opción de configuración de la cuenta encontrará secciones disponibles para agregar cuentas de administradores, editarlas y eliminarlas incluso. Solo debe llenar el formulario y podra crear una cuenta de administrador nueva. O escoger una cuenta y editarla o eliminarla según sea necesario.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion3" href="#collapse9" class="collapsed">
                                                    ¿Cómo administrar personal?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse9" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                En la opción "Personal" del menú de administración encontrará un formulario que le ayudará a agregar personal. Más abajo en la misma sección encontrará a todos los elementos agregados con opciones de editar o eliminar. Es importante destacar que en la seccion de "Conozca a Nuestros Educadores" de la página principal aparecerán sólo los que en su "rol" diga "Profesor".
                                            </div>
                                        </div>
                                    </div>
                            </div> 
                        </div>
                    </div>
                    <!-- fin de preguntas de uso-->
                    <hr />
                    <!--admininstracion de contenido preguntas-->
                    <div id="adminQuestions" class="sc_column_item">
                        <h2>Preguntas de Administración de Contenido</h2>
                        <p>A continuación se le presentan preguntas frecuentes acerca de cómo se administra el contenido que aparece en la toda la aplicación. En esta sección encontrara respuestas acerca del uso de la sección de administración de contenido que le permitirá administrar las fotográfias, los horarios, los cronogramas y actividades e incluso los eventos de la aplicación de una forma sencilla.</p>
                        <div class="sc_section"> 
                            <div class="panel-group sc_accordion sc_accordion_style_3" id="accordion1">
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion1" href="#collapse1">
                                                    ¿Cómo funciona la galería?  
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse1" class="panel-collapse collapse in">
                                            <div class="sc_accordion_content">
                                                En el menú principal de la sección encontrará todas las opciones de la administración. En cada una de ellas podrá hacer los cambios necesarios como eliminar contenido o cambiarlo. 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion1" href="#collapse2" class="collapsed">
                                                    ¿Cómo agrego grupos y horarios?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse2" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                En la opción de configuración de la cuenta encontrará secciones disponibles para agregar cuentas de administradores, editarlas y eliminarlas incluso. Solo debe llenar el formulario y podra crear una cuenta de administrador nueva. O escoger una cuenta y editarla o eliminarla según sea necesario.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion1" href="#collapse3" class="collapsed">
                                                    ¿Cómo administrar los horarios?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse3" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                En la opción "Personal" del menú de administración encontrará un formulario que le ayudará a agregar personal. Más abajo en la misma sección encontrará a todos los elementos agregados con opciones de editar o eliminar. Es importante destacar que en la seccion de "Conozca a Nuestros Educadores" de la página principal aparecerán sólo los que en su "rol" diga "Profesor".
                                            </div>
                                        </div>
                                    </div>
                                <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion1" href="#collapse4" class="collapsed">
                                                    ¿Cómo funciona el cronograma?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse4" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                En la opción "Personal" del menú de administración encontrará un formulario que le ayudará a agregar personal. Más abajo en la misma sección encontrará a todos los elementos agregados con opciones de editar o eliminar. Es importante destacar que en la seccion de "Conozca a Nuestros Educadores" de la página principal aparecerán sólo los que en su "rol" diga "Profesor".
                                            </div>
                                        </div>
                                    </div>
                                <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion1" href="#collapse5" class="collapsed">
                                                    ¿Cómo agregar eventos al cronograma?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse5" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                En la opción "Personal" del menú de administración encontrará un formulario que le ayudará a agregar personal. Más abajo en la misma sección encontrará a todos los elementos agregados con opciones de editar o eliminar. Es importante destacar que en la seccion de "Conozca a Nuestros Educadores" de la página principal aparecerán sólo los que en su "rol" diga "Profesor".
                                            </div>
                                        </div>
                                    </div>
                            </div> 
                        </div>
                    </div>
                    <!-- fin de preguntas de administracion de contenido-->
                    <!--Preguntas frecuentes -->
                    <div id="frequentQuestions" class="sc_column_item">
                        <h2>Preguntas Frecuentes</h2>
                        <p>A continuación se le presentan preguntas frecuentes acerca de la aplicación en general y su uso de administración de contenido y horarios, así como de cronogramas y eventos. En esta sección encontrara respuestas acerca del uso de la sección de administración en general. Se espera que les sea de utilidad.</p>
                        <div class="sc_section"> 
                            <div class="panel-group sc_accordion sc_accordion_style_3" id="accordion2">
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion2" href="#collapse6">
                                                    ¿Por qué no me deja crear eventos el formulario de la seccion "Eventos o Publicaciones"?  
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse6" class="panel-collapse collapse in">
                                            <div class="sc_accordion_content">
                                                Posiblemente el problema está relacionado a que se debe crear primero un ronograma de eventos, antes de crear el evento en cuestión, ya que el mismo debe agregarse a un cronograma ya existente. Para esto debe ir a la opción de menú de administracion "Cronogramas" y crear un cronograma nuevo utilizando el formulario. 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion2" href="#collapse10" class="collapsed">
                                                    ¿Por qué no puedo agregar una materia solamente?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse10" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                Los horarios están diseñados para que se desplieguen en un estilo de tabla donde se detalla cada materia recibida durante el día. En la sección "Horarios" en la administracion se van a agregar todas las materias de determinado grupo que pertenece a un determinado nivel. Por lo tanto es el horario entero el que se debe ingresar para que así no haya manera de cometer errores. 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion2" href="#collapse11" class="collapsed">
                                                    ¿Por qué algunas tareas pueden tardar tanto en ejecutarse?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse11" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                La causa mas probable de este problema es la conexión a Internet. Sin embargo la aplicación ejecuta procesos que tardan un poco, como la creación de horarios y la carga inicial de las páginas principales. No se desespere si esto ocurre, ya que si ocurre algún fallo la aplicación se lo hara saber. Si alguna tarea llegara a tardar demasiado o incluso a no completarse por favor notifiquelo mediante el formulario de la sección <a href="Administration.aspx#contactMaster">"¿No encontro respuestas?"</a>.
                                            </div>
                                        </div>
                                    </div>
                                <div class="panel sc_accordion_item">
                                        <div>
                                            <h4 class="panel-title sc_accordion_title">
                                                <a data-toggle="collapse" data-parent="#accordion2" href="#collapse12" class="collapsed">
                                                    ¿Por qué la página me recarga si pulso botones?
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse12" class="panel-collapse collapse">
                                            <div class="sc_accordion_content">
                                                Como la pagina se autogestiona cada vez que se pulse un boton o se realice una acción la aplicación debe consultar si es valida. Para esto debe preguntarlo a el servidor. Una vez que la acción es realizada la respuesta recargará la página actual. Pero no se preocupe por esto ya que la aplicación le avisara por medio de un mensaje que todo ha salido bien, o le informará el error que ha ocurrido.
                                            </div>
                                        </div>
                                    </div>
                            </div> 
                        </div>
                    </div>
                    <!-- fin de Preguntas frecuentes -->
                    <div class="sc_contact_form sc_contact_form_contact" id="contactMaster">
                            <h1 class="title">¿No encontro respuestas?</h1>
                        <p>Puede contactar a los creadores de la aplicación para buscar respuestas a preguntas diferentes de las que se encuentran en esta sección e incluso reportar un problema. Por favor ayudenos a mejorar!</p>
                            <div data-formtype="contact">
                                <div class="columnsWrap">
                                    <div class="col-sm-4">
                                       
                                        <input runat="server" id="username" type="text" placeholder="Nombre Completo" name="username"/>
                                    </div>
                                    <div class="col-sm-4">
                                        
                                        <input runat="server" id="mail" type="text" placeholder="Email" name="email"/>
                                    </div>
                                    <div class="col-sm-4">
                                        
                                        <input runat="server" id="subject" type="text" placeholder="Asunto" name="subject"/>
                                    </div>
                                </div>
                                <div class="message">
                                    
                                    <textarea runat="server" id="messageToSend" class="textAreaSize" placeholder="Escriba su mensaje" name="message"></textarea>
                                </div>
                                <div class="squareButton ico">
                                    <asp:Button runat="server" ID="senMail" Text="Enviar" OnClick="senMail_Click" />
                                    <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility:hidden;" />
                                    <asp:ModalPopupExtender id="ModalPopupExtender1" runat="server" 
	                                    cancelcontrolid="btnCancel" 
                                        TargetControlID="processbtn"
	                                    PopupControlID="Panel1"
	                                    drag="true" 
	                                    backgroundcssclass="modalBackground">
                                     </asp:ModalPopupExtender>
                                </div>
                                <asp:panel id="Panel1" style="display: none" CssClass="modalPopup" align="center" runat="server">
                                   <p runat="server" id="message"></p>
                                   <hr />
                                   <input id="btnCancel" type="button" value="Aceptar" />
                               </asp:panel>
                            </div>
                        </div>
                </div>
                <div class="col-sm-12 col-md-4 fixedTopMenu">
                    <div class="widgetWrap widget widget_categories sc_column_item">
                        <div id="sidebar_main" class="widget_area sidebar_main sidebar" role="complementary">
                            <div id="timeline_slider" class="sc_section">
                                <div class="fixedTopMenu">
                                    <h3 class="sc_title sc_title_regular margin_bottom_mini">Secciones</h3>
                                    <ul class="sc_list sc_list_style_arrows">
                                        <li class="sc_list_item arrow-icon-right-open-big">
                                            <a href="Administration.aspx#useQuestions">Preguntas de Uso</a>
                                        </li>
                                        <li class="sc_list_item arrow-icon-right-open-big">
                                            <a href="Administration.aspx#adminQuestions">Preguntas de contenido</a>
                                        </li>
                                        <li class="sc_list_item arrow-icon-right-open-big">
                                            <a href="Administration.aspx#frequentQuestions">Preguntas frecuentes</a>
                                        </li>
                                        <li class="sc_list_item arrow-icon-right-open-big">
                                            <a href="Administration.aspx#contactMaster">Contacte al Web Master</a>
                                        </li>
                                    </ul>
                                    <div class="sc_line sc_line_style_shadow margin_top_small"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <style type="text/css">
        .modalBackground {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }

        .modalPopup {
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
</asp:Content>
