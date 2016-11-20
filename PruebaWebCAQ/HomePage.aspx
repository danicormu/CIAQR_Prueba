﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PruebaWebCAQ.PruebaDeMenu" EnableEventValidation="false" ValidateRequest="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Presentation Section-->
    <section class="text-center color_section">
        <div class="container">
            <div class="row">
                <div class="sc_content user_header">
                    <div class="col-md-3 col-sm-6">
                        <a href="#">
                            <span class="sc_icon">
                                <img src="Resources/img/ico/team.png" />
                            </span>
                        </a>
                        <div class="sc_section">
                            <a href="HomePage.aspx#KnowUS">Profesores bien capacitados</a>
                        </div>
                        <div class="sc_section">La calidad primero</div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <a href="#">
                            <span class="sc_icon">
                                <img src="Resources/img/ico/schedule.png" />
                            </span>
                        </a>
                        <div class="sc_section">
                            <a href="ViewSchedule.aspx">Horarios</a>
                        </div>
                        <div class="sc_section">Busca tu horario</div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <a href="#">
                            <span class="sc_icon">
                                <img src="Resources/img/ico/chronogram.png" />
                            </span>
                        </a>
                        <div class="sc_section">
                            <a href="ViewChronogram.aspx">Cronogramas</a>
                        </div>
                        <div class="sc_section">Mira los eventos</div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <a href="#">
                            <span class="sc_icon">
                                <img src="Resources/img/ico/news.png" />
                            </span>
                        </a>
                        <div class="sc_section">
                            <a href="Events.aspx">Ultimos acontecimientos</a>
                        </div>
                        <div class="sc_section">Entérate de lo más reciente</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of Presentation Section-->
    <!-- Personal section-->
    <section id="KnowUs">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini">Nuestro Personal</h2>
                </div>
            </div>
            <div class="row">
                <div class="sc_team">
                    <asp:Repeater ID="personalRepeater" runat="server" OnItemDataBound="personalRepeater_ItemDataBound">
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
                                            <asp:Label runat="server" Style="color:#585858" ID="personalRol"></asp:Label></div>
                                        <ul class="sc_team_item_socials">
                                            <li>
                                                <a class="social_icons social_facebook" target="_blank" href="http://facebook.com">
                                                    <span></span>
                                                </a>
                                            </li>
                                           
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:Image runat="server" ID="test" />
                </div>
            </div>
        </div>
    </section>
    <!--End of Personal section-->
    <!--Contact us -->
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section id="ContactUs" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini" style="color: white;">Contáctenos</h2>
                </div>
            </div>
        </div>
    </section>
    <section class="mainWrap">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="columnsWrap">
                        <div class="col-sm-6 sc_column_item">
                            <figure class="sc_image  sc_image_shape_square">
                                <img src="Resources/img/contact.jpg" alt="" />
                            </figure>
                        </div>
                        <div class="col-sm-6 sc_column_item">
                            <h1>Estamos Dispuestos a Escucharte</h1>
                            <p>Nuestra prioridad es dar la mejor educación posible para el futuro de nuestros alumnos, ya que de ellos depende el futuro de nuestro país en desarrollo. sin embargo, es necesario mejorar en todo ámbito, para ello estamos dispuestos a ecucharlos y recibir sus sugerencias.</p>
                            <h1>Horario de Atención</h1>
                            <p>
                                <strong>Lunes – Viernes de 7am a 5pm
                                    <br />
                                    Escribenos a nuestro correo: colegioalejandroquesada@gmail.com
                                    <br />
                                    Sábados y Domingo cerrado
                                </strong>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="sc_contact_form sc_contact_form_contact">
                        <h1 class="title">Envianos un Mensaje</h1>
                        <div class="columnsWrap">
                            <div class="col-sm-7">
                                <input required="required" runat="server" id="contactName" type="text" placeholder="Nombre Completo" />
                                <br />
                                <input required="required" runat="server" id="contactMail" type="text" placeholder="E-mail" />
                                <br />
                                <input required="required" runat="server" id="contactSubject" type="text" placeholder="Asunto" />
                                <br />
                                <textarea required="required" runat="server" id="contactMessage" class="textAreaSize" placeholder="Escribenos tu mensaje"></textarea>
                                <div class="sc_contact_form_button">
                                    <div class="squareButton ico">
                                        <asp:Button runat="server" ID="senMail" Text="Enviar" OnClick="senMail_Click" />
                                        <asp:Button runat="server" ID="processbtn" OnClick="processbtn_Click" Style="visibility: hidden;" />
                                        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                                            CancelControlID="btnCancel"
                                            TargetControlID="processbtn"
                                            PopupControlID="Panel1"
                                            Drag="true"
                                            BackgroundCssClass="modalBackground">
                                        </asp:ModalPopupExtender>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        <asp:Panel ID="Panel1" Style="display: none" CssClass="modalPopup" align="center" runat="server">
            <p runat="server" id="message"></p>
            <hr />
            <input id="btnCancel" type="button" value="Aceptar" />
        </asp:Panel>
    </section>
    <!--end of Contact us -->
    <!-- Services Section --->
    <section id="Services" class="topTabsWrap color_section">
        <div class="container">
            <div class="row content">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini" style="color: white;">Servicios</h2>
                </div>
            </div>
        </div>
    </section>
    <!-- Comedor -->
    <section class="mainWrap with_sidebar sideBarLeft">
        <div class="container" role="main">
            <div class="row content">
                <div class="col-sm-12 col-md-8 col-lg-9 col-md-push-4 col-lg-push-ser">
                    <div class="sc_section sc_alignright col-sm-6 margin_bottom_small">
                        <a href="#" class="sc_banner">
                            <img src="Resources/img/comedor.jpg" class="sc_banner_image" alt="" />
                            <span class="sc_banner_title">Comedor Estudiantil</span>
                            <span class="sc_banner_content">Alimentando a la comunidad</span>
                        </a>
                    </div>
                    <h1 class="post_title entry-title">Comedor</h1>
                    <div class="post_text_area">
                        Conscientes de la importancia de la alimentación en nuestros alumnos, la elaboración de toda la comida 
                        se realiza íntegramente en nuestra instalaciones, donde disponemos de dos amplias cocinas totalmente
                         equipadas y con los máximos certificados de sanidad para alimentar diariamente a todos los alumnos 
                        cuyos padres han confiado en nosotros para su alimentación. Fieles a nuestro objetivo habitual, 
                        nos gusta coordinarnos con los padres para ofrecer una gestión integral de la alimentación.
                    </div>
                </div>
            </div>
        </div>
    </section>
   <!-- <div class="sc_column_item_ser">        
        <div class="sc_line_ser sc_line_style_solid"></div>
    </div> -->

    <!-- Becas -->
    <section class="mainWrap with_sidebar sideBarLeft">
        <div class="container" role="main">
            <div class="row content">
                <div class="col-sm-12 col-md-8 col-lg-9 col-md-push-4 col-lg-push-ser">
                    <div class="sc_section sc_alignright col-sm-6 margin_bottom_small">
                        <a href="#" class="sc_banner">
                            <img src="Resources/img/becas.jpg" class="sc_banner_image" alt="" />
                            <span class="sc_banner_title">Programa de Becas</span>
                            <span class="sc_banner_content">Becamos a los estudiantes de escazos recursos</span>
                        </a>
                    </div>
                    <h1 class="post_title entry-title">Becas</h1>
                    <div class="post_text_area">
                        Aunque lo más frecuente es que se concedan a familias con escasos recursos económicos, todos 
                        los alumnos que cursan enseñanzas oficiales pueden optar a becas, estudien en centros públicos 
                        o privados. Como norma general, estas ayudas se destinan a la financiación de matrícula, cuotas mensuales,
                         gasto de transporte, material escolar o gasto de comedor. 
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Biblioteca -->
    <section class="mainWrap with_sidebar sideBarLeft">
        <div class="container" role="main">
            <div class="row content">
                <div class="col-sm-12 col-md-8 col-lg-9 col-md-push-4 col-lg-push-ser">
                    <div class="sc_section sc_alignright col-sm-6 margin_bottom_small">
                        <a href="#" class="sc_banner">
                            <img src="Resources/img/Biblioteca.jpg" class="sc_banner_image" alt="" />
                            <span class="sc_banner_title">Biblioteca Estudiantil</span>
                            <span class="sc_banner_content">Libros para alimentar la cultura</span>
                        </a>
                    </div>
                    <h1 class="post_title entry-title">Biblioteca</h1>
                    <div class="post_text_area">
                        En el colegio Ing. Alejandro Ramirez, trabajamos para que todos nuestros servicios contribuyan al desarrollo integral 
                        de la comunidad. Es por ello que nuestras bibliotecas fomentan la lectura y facilitan el acceso 
                         al conocimiento, la construcción de ciudadanía, y el fortalecimiento de la educación y la cultura. 
                        Esto lo logramos  a través de actividades, servicios y programas que ayudan a los usuarios a desarrollar 
                        todas sus capacidades. Las bibliotecas hacen parte integral del sistema educativo del colegio,
                         ya que apoyan el desarrollo del currículo educativo, promueven el fomento de la lectura y la formación de 
                        una actitud investigativa.             
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Services Section -->
    <!--Gallery section-->
    <section id="Gallery" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini" style="color: white;">Galería</h2>
                </div>
            </div>
        </div>
    </section>
    <section class="portfolio_mansory_columns">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="style_portfolio_mc" class="masonryWrap">
                        <section class="masonry isotope" data-columns="3">
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/2.jpg" data-title="Banda de Garage">
                                        <img alt="Maecenas tristique sem ante" src="Resources/img/Gallery/2.jpg"/>
                                    </div>
                                    <h4>
                                        <a>Grupo Experimental</a>
                                    </h4>
                                    <p>El grupo experimental del colegio compuesta por varios estudiantes que han hecho muy buenas presentaciones encantando al público...</p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/12.jpg" data-title="Paseo del Colegio">
                                        <img alt="Vivamus pharetra justo" src="Resources/img/Gallery/12.jpg"/>
                                    </div>
                                    <h4>
                                        <a>Paseo del Colegio</a>
                                    </h4>
                                    <p>Se logra apreciar a los estudiantes junto a su profesor guía donde se refleja lo contentos que están de haber realizado el paseo... </p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/3.jpg" data-title="Día del Deporte">
                                        <img alt="Sed orci odio, adipiscing vel libero eget" src="Resources/img/Gallery/3.jpg"/>
                                    </div>
                                    <h4>
                                        <a>Día del Deporte</a>
                                    </h4>
                                    <p>Varios estudiantes de la institución en el día del deporte compartiendo con el Director académico de dicha institución... </p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/4.jpg" data-title="Actividad en el día del deporte">
                                        <img alt="Ut vitae lacus pretium" src="Resources/img/Gallery/4.jpg"/>
                                    </div>
                                    <h4>
                                        <a>Actividad en el día del deporte</a>
                                    </h4>
                                    <p>En el día del deporte los estudiantes del Colegio se divirtieron haciendo gran cantidad de actividades, donde la pasaron de maravilla... </p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/5.jpg" data-title="El equipo de fútbol">
                                        <img alt="Duis consequat arcu et lacus" src="Resources/img/Gallery/5.jpg"/>
                                    </div>
                                    <h4>
                                        <a>El equipo de fútbol</a>
                                    </h4>
                                    <p>El Colegio cuenta con su equipo de fútbol para torneos en los que se enfrentan a equipos de otros colegios de la región...</p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/6.jpg" data-title="La bonita imagen del Colegio">
                                        <img alt="Curabitur auctor adipiscing risus sed ornare" src="Resources/img/Gallery/6.jpg"/>
                                    </div>
                                    <h4>
                                        <a>La bonita imagen del Colegio</a>
                                    </h4>
                                    <p>En esta imagen se logra apreciar a un colegio al cuál se le ha dado un buen mantenimiento en su infraestructura recientemente... </p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/7.jpg" data-title="Una manera sana de divertirse">
                                        <img alt="Proin vel odio eu velit" src="Resources/img/Gallery/7.jpg"/>
                                    </div>
                                    <h4>
                                        <a>Una manera sana de divertirse</a>
                                    </h4>
                                    <p>En este día donde se disfruta sanamente, se logra apreciar donde los estudiantes juegan al Volleyball de una forma diferente... </p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/14.jpg" data-title="Los jardines del Colegio">
                                        <img alt="Lorem ipsum dolor sit amet" src="Resources/img/Gallery/14.jpg"/>
                                    </div>
                                    <h4>
                                        <a>Los jardines del Colegio</a>
                                    </h4>
                                    <p>Todos los jardines y otras zonas verdes las tratamos de mantener cuidadas dando una buena imagen del Colegio... </p>
                                    
                                </div>
                            </article>
                            <article class="isotopeElement isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/Gallery/bg/11.jpg" data-title="Nuestras Instalaciones">
                                        <img alt="Vestibulum ut lacus et" src="Resources/img/Gallery/11.jpg"/>
                                    </div>
                                    <h4>
                                        <a>Nuestras Instalaciones</a>
                                    </h4>
                                    <p>En este colegio nos preocupamos por mantener nuestras áreas verdes bien cuidadas para nuestros estudiantes...</p>
                                    
                                </div>
                            </article>
                        </section>
                    </div>                  
                </div>
            </div>  
        </div>   
    </section>
    <!--end of Gallery section-->
    <!--about us section -->
    <section id="AboutUs" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini" style="color: white;">Acerca de Nosotros</h2>
                </div>
            </div>
        </div>
    </section>
    <section class="mainWrap">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 sc_column_item">
                    <div class="col-sm-6 sc_column_item margin_bottom_mini margin_right_mini">
                        <figure class="sc_image  sc_image_shape_square">
                            <img src="Resources/img/11.jpg" alt="" />
                        </figure>
                    </div>
                    <h1>Acerca de la Institución</h1>
                    <p>El Colegio Ing. Alejandro Quesada Ramirez, fundado en el año 1996 durante la administración de Figueres Olsen, localizado en Concepción, distrito del cantón de la Unión, en la provincia de Cartago. Colegio público que se ubica en una zona urbana, el cuál cuenta con más de ochocientos estudiantes y docentes bien capacitados.</p>
                    <p>Nuestro colegio cuenta con servicios de comedor, becas, biblioteca, de transporte entre otros. Siempre nos hemos preocupado por el bienestar de nuestros estudiantes y de la comunidad.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="sc_title sc_title_regular text-center margin_bottom_mini">Conoce a Nuestros Educadores</h2>
                    <div class="sc_team">

                        <asp:Repeater runat="server" ID="teacherRepeater" OnItemDataBound="teacherRepeater_ItemDataBound">
                            <ItemTemplate>
                                <div class="col-md-3 col-sm-6 margin_bottom_small">
                                    <div class="sc_team_item">
                                        <div class="sc_team_item_avatar">
                                            <asp:Image runat="server" ID="professorImage" />
                                            <div class="sc_team_item_description">
                                                <asp:Label runat="server" ID="profDescription"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="sc_team_item_info">
                                            <h3 runat="server" id="profName" class="sc_team_item_title"></h3>
                                            <div runat="server" id="profRol" style="color:#585858" class="sc_team_item_position theme_accent2"></div>
                                            <ul class="sc_team_item_socials">
                                                <li>
                                                    <a class="social_icons social_facebook" target="_blank" href="http://facebook.com">
                                                        <span></span>
                                                    </a>
                                                </li>                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="sc_line sc_line_style_shadow margin_bottom_mini"></div>
                    <div class="row">
                        <div class="col-md-8 col-sm-12">
                            <div class="sc_skills sc_skills_arc margin_bottom_mini" data-type="arc" data-subtitle="Skills">
                                <div class="sc_skills_legend">
                                    <h2>Puntos Fuertes</h2>
                                    <ul>
                                        <li>Deporte</li>
                                        <li>Cultura</li>
                                        <li>Civismo</li>
                                        <li>Académico</li>
                                        <li>científico</li>
                                    </ul>
                                </div>
                                <div id="sc_skills" class="sc_skills_arc_canvas">
                                </div>
                                <div class="sc_skills_data">
                                    <div class="arc">
                                        <input type="hidden" class="text" value="JavaScript" />
                                        <input type="hidden" class="percent" value="95" />
                                        <input type="hidden" class="color" />
                                    </div>
                                    <div class="arc">
                                        <input type="hidden" class="text" value="CSS3" />
                                        <input type="hidden" class="percent" value="90" />
                                        <input type="hidden" class="color" />
                                    </div>
                                    <div class="arc">
                                        <input type="hidden" class="text" value="HTML5" />
                                        <input type="hidden" class="percent" value="80" />
                                        <input type="hidden" class="color" />
                                    </div>
                                    <div class="arc">
                                        <input type="hidden" class="text" value="PHP" />
                                        <input type="hidden" class="percent" value="53" />
                                        <input type="hidden" class="color" />
                                    </div>
                                    <div class="arc">
                                        <input type="hidden" class="text" value="MySQL" />
                                        <input type="hidden" class="percent" value="45" />
                                        <input type="hidden" class="color" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <h2>Nuestra Enseñanza</h2>
                            <div class="sc_skills sc_skills_bar sc_skills_horizontal" data-type="bar" data-subtitle="Skills" data-dir="horizontal">
                                <div class="sc_skills_info">Inglés</div>
                                <div class="sc_skills_item sc_skills_style_1">
                                    <div class="sc_skills_count">
                                        <div class="sc_skills_total" data-start="0" data-stop="98" data-step="1" data-max="100" data-speed="39" data-duration="3822" data-ed="%">0</div>
                                    </div>
                                </div>
                                <div class="sc_skills_info">Español</div>
                                <div class="sc_skills_item sc_skills_style_1">
                                    <div class="sc_skills_count">
                                        <div class="sc_skills_total" data-start="0" data-stop="66" data-step="1" data-max="100" data-speed="23" data-duration="1518" data-ed="%">0</div>
                                    </div>
                                </div>
                                <div class="sc_skills_info">Frances</div>
                                <div class="sc_skills_item sc_skills_style_1">
                                    <div class="sc_skills_count">
                                        <div class="sc_skills_total" data-start="0" data-stop="87" data-step="1" data-max="100" data-speed="32" data-duration="2784" data-ed="%">0</div>
                                    </div>
                                </div>
                                <div class="sc_skills_info">Matemática</div>
                                <div class="sc_skills_item sc_skills_style_1">
                                    <div class="sc_skills_count">
                                        <div class="sc_skills_total" data-start="0" data-stop="82" data-step="1" data-max="100" data-speed="32" data-duration="2624" data-ed="%">0</div>
                                    </div>
                                </div>
                                <div class="sc_skills_info">Ciencias</div>
                                <div class="sc_skills_item sc_skills_style_1">
                                    <div class="sc_skills_count">
                                        <div class="sc_skills_total" data-start="0" data-stop="76" data-step="1" data-max="100" data-speed="11" data-duration="836" data-ed="%">0</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sc_line sc_line_style_shadow margin_bottom_mini"></div>
                </div>
            </div>
        </div>
    </section>
    <!--end ofabout us section -->

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
