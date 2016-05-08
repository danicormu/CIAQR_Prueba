<%@ Page Title="" Language="C#" MasterPageFile="~/MainMenu.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PruebaWebCAQ.PruebaDeMenu" EnableEventValidation="false" ValidateRequest="false" %>

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
                            <span class="sc_icon rt-icon-diamond "></span>
                        </a>
                        <div class="sc_section">
                            <a href="HomePage.aspx#KnowUS">Profesores bien capacitados</a>
                        </div>
                        <div class="sc_section">Aliquam erat volutpat</div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <a href="#">
                            <span class="sc_icon rt-icon-heart4 "></span>
                        </a>
                        <div class="sc_section">
                            <a href="#">Horarios</a>
                        </div>
                        <div class="sc_section">Dipisicing elit</div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <a href="#">
                            <span class="sc_icon rt-icon-star "></span>
                        </a>
                        <div class="sc_section">
                            <a href="ViewChronogram.aspx">Cronogramas</a>
                        </div>
                        <div class="sc_section">Dolor sit amet</div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <a href="#">
                            <span class="sc_icon rt-icon-clipboard "></span>
                        </a>
                        <div class="sc_section">
                            <a href="Events.aspx">Ultimos acontecimientos</a>
                        </div>
                        <div class="sc_section">Cras id convallis</div>
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
                                            <asp:Label runat="server" ID="personalDescription"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="sc_team_item_info">
                                        <h3 runat="server" id="personalName" class="sc_team_item_title"></h3>
                                        <div class="sc_team_item_position theme_accent2">
                                            <asp:Label runat="server" ID="personalRol"></asp:Label></div>
                                        <ul class="sc_team_item_socials">
                                            <li>
                                                <a class="social_icons social_facebook" target="_blank" href="http://facebook.com">
                                                    <span></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="social_icons social_twitter" target="_blank" href="http://twitter.com">
                                                    <span></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="social_icons social_gplus" target="_blank" href="http://gplus.com">
                                                    <span></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="social_icons social_dribbble" target="_blank" href="http://dribbble.com">
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
            <div class="row">
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
                        nos gusta coordinarnos con los padres para ofrecer una gestión integral de la alimentación, por lo 
                        que proponemos un menú para las cenas en la que los padres puedan tener una sugerencia de cara a que la 
                        alimentación de los niños quede lo más equilibrada, sana y nutritiva posible.               
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
                            <img src="Resources/img/Becas.jpg" class="sc_banner_image" alt="" />
                            <span class="sc_banner_title">Programa de Becas</span>
                            <span class="sc_banner_content">Becamos a los estudiantes que escasez de recursos</span>
                        </a>
                    </div>
                    <h1 class="post_title entry-title">Becas</h1>
                    <div class="post_text_area">
                        Aunque lo más frecuente es que se concedan a familias con escasos recursos económicos, todos 
                        los alumnos que cursan enseñanzas oficiales pueden optar a becas, estudien en centros públicos 
                        o privados. Como norma general, estas ayudas se destinan a la financiación de matrícula, cuotas mensuales,
                         gasto de transporte, material escolar o gasto de comedor. Pero también se conceden becas a los mejores 
                        expedientes académicos, becas para alumnos con necesidades especiales, para aprender idiomas y realizar intercambios 
                        con centros extranjeros.               
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
    <section class="portfolio_classic_two_columns">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="style_portfolio2" class="portfolioWrap">
                        <div class="isotopeFiltr"></div>
                        <section class="masonry isotope" data-columns="4">
                            <article class="isotopeElement flt_65 flt_66 flt_7 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/masonry4.jpg" data-title="Duis consequat arcu et lacus">
                                        <img alt="Duis consequat arcu et lacus" src="Resources/img/portfolio/masonry4-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Duis consequat arcu et lacus</a>
                                    </h4>
                                    <p>Duis consequat arcu et lacus interdum lobortis at ac nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">February 12, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_36 flt_51 flt_64 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/masonry3.jpg" data-title="Proin vel odio eu veliet">
                                        <img alt="Proin vel odio eu veliet" src="Resources/img/portfolio/masonry3-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Proin vel odio eu veliet</a>
                                    </h4>
                                    <p>Proin vel odio eu velit pellentesque rhoncus sed nec lectus. Curabitur in vulputate felis. Fusce id tellus dui. Maecenas a dictum odio, id... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">February 11, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_65 flt_36 flt_7 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/masonry12.jpg" data-title="Duis facilisis enim quis tortor">
                                        <img alt="Duis facilisis enim quis tortor" src="Resources/img/portfolio/masonry12-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Duis facilisis enim quis tortor</a>
                                    </h4>
                                    <p>Ut a neque tellus. Duis facilisis enim quis tortor pharetra dapibus. Phasellus nunc velit, feugiat sed lobortis in, accumsan facilisis turpis... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">February 10, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_66 flt_51 flt_64 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/masonry1.jpg" data-title="Lorem ipsum dolor sit amet">
                                        <img alt="Lorem ipsum dolor sit amet" src="Resources/img/portfolio/masonry1-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Lorem ipsum dolor sit amet</a>
                                    </h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur augue tortor, faucibus quis velit vitae, mattis ornare metus. Ut erat justo... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">February 9, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_36 flt_66 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/portfolio16x9_8.jpg" data-title="Phasellus ultricies egestas">
                                        <img alt="Phasellus ultricies egestas" src="Resources/img/portfolio/portfolio16x9_8-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Phasellus ultricies egestas</a>
                                    </h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis turpis tempus, vestibulum sapien in, euismod ante. Donec sodales... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">February 7, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_65 flt_36 flt_64 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/masonry2.jpg" data-title="Donec lacinia elementum nunc">
                                        <img alt="Donec lacinia elementum nunc" src="Resources/img/portfolio/masonry2-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Donec lacinia elementum nunc</a>
                                    </h4>
                                    <p>Donec lacinia elementum nunc, sed condimentum eros dictum ut. Sed pretium lacinia tortor, ac porta sapien congue sed. Morbi quis nisl dolor... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">January 17, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_66 flt_10 flt_51 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/masonry6.jpg" data-title="Maecenas tristique sem ante">
                                        <img alt="Maecenas tristique sem ante" src="Resources/img/portfolio/masonry6-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Maecenas tristique sem ante</a>
                                    </h4>
                                    <p>Maecenas tristique sem ante. Donec imperdiet pretium sodales. Sed in eros fermentum, facilisis magna eu, tempus mauris. Curabitur mollis lacus ac... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">January 16, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_36 flt_66 flt_7 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/portfolio_item.jpg" data-title="Vivamus pharetra justo eget">
                                        <img alt="Vivamus pharetra justo eget" src="Resources/img/portfolio/portfolio_item-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Vivamus pharetra justo eget</a>
                                    </h4>
                                    <p>Vivamus pharetra justo eget placerat commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">January 15, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_65 flt_51 flt_64 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/Depositphotos_7132665_original.jpg" data-title="Sed orci odio, adipiscing">
                                        <img alt="Sed orci odio, adipiscing" src="Resources/img/portfolio/Depositphotos_7132665_original-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Sed orci odio, adipiscing</a>
                                    </h4>
                                    <p>Sed orci odio, adipiscing vel libero eget, volutpat dictum orci. Donec eu euismod dui, nec ullamcorper urna. Cras vel sapien eu diam imperdiet... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">January 14, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_65 flt_36 flt_51 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/portfolio16x9_2.jpg" data-title="Ut vitae lacus pretium">
                                        <img alt="Ut vitae lacus pretium" src="Resources/img/portfolio/portfolio16x9_2-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Ut vitae lacus pretium</a>
                                    </h4>
                                    <p>Ut vitae lacus pretium, molestie massa a, placerat urna. Donec viverra nisl id nisl accumsan, ac cursus est dictum. Pellentesque es habitant morbi... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">January 13, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_10 flt_7 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/Depositphotos_34399519_original.jpg" data-title="Curabitur auctor adipiscing">
                                        <img alt="Curabitur auctor adipiscing" src="Resources/img/portfolio/Depositphotos_34399519_original-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Curabitur auctor adipiscing</a>
                                    </h4>
                                    <p>Curabitur auctor adipiscing risus sed ornare. Aliquam a auctor augue. Nullam nisl lorem, sodales sed odio ac, auctor accumsan libero. Ut convallis... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">January 12, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
                                </div>
                            </article>
                            <article class="isotopeElement flt_65 flt_7 isotopeElementShow">
                                <div class="isotopePadding">
                                    <div class="thumb hoverIncrease" data-image="Resources/img/portfolio/masonry10.jpg" data-title="Lorem ipsum dolor sit amet">
                                        <img alt="Lorem ipsum dolor sit amet" src="Resources/img/portfolio/masonry10-250x141.jpg" />
                                    </div>
                                    <h4>
                                        <a href="#">Lorem ipsum dolor sit amet</a>
                                    </h4>
                                    <p>Maecenas tristique sem ante. Donec imperdiet pretium sodales. Sed in eros fermentum, facilisis magna eu, tempus mauris. Curabitur mollis lacus ac... </p>
                                    <div class="masonryInfo">
                                        Posted
                                        <a href="#" class="post_date">January 8, 2014</a>
                                    </div>
                                    <div class="masonryMore">
                                        <ul>
                                            <li class="squareButton light ico">
                                                <a class="fa-link" title="More" href="#">More</a>
                                            </li>
                                            <li class="squareButton light ico">
                                                <a class="fa-comment" title="Comments - 0" href="#comments">0</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="inlineShadow"></span>
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
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
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
                                            <div runat="server" id="profRol" class="sc_team_item_position theme_accent2"></div>
                                            <ul class="sc_team_item_socials">
                                                <li>
                                                    <a class="social_icons social_facebook" target="_blank" href="http://facebook.com">
                                                        <span></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="social_icons social_twitter" target="_blank" href="http://twitter.com">
                                                        <span></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="social_icons social_rss" target="_blank" href="http://rss.com">
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
