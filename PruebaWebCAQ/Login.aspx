<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PruebaWebCAQ.Login"  EnableEventValidation="false" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <pages validateRequest="false" enableEventValidation="false" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>    
</head>
<body>
    <section id="topOfPage" class="topTabsWrap color_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="speedBar">
                        <a class="home" href="HomePage.aspx">Inicio</a>
                        <span class="breadcrumbs_delimiter" style="color:lightgray">/</span>
                        <a class="current" href="Login.aspx">Login</a>
                    </div>
                    <a href="Login.aspx"><h3 class="pageTitle h3">Login</h3></a>
                </div>
            </div>
        </div>
    </section>

    <form id="form1" runat="server">
        <div align="center">
            <br />
            <br />
            <br />
            <br />
            <br />
            <div id="user-popUp" class="user-popUp mfp-with-anim mfp-hide">
                <div class="sc_tabs">
                    <ul class="loginHeadTab">
                        <li><a href="#loginForm" class="loginFormTab icon">Log In</a></li>                       
                    </ul>
                    <div id="loginForm" class="formItems registerFormBody">
                        <div class="itemformLeft">
                            <form action="#" method="post" name="login_form" class="formValid">
                                <input type="hidden" name="redirect_to" value="#"/>
                                <ul class="formList">
                                    <li class="icon formLogin">
                                        <asp:TextBox ID="txt_user" runat="server"  placeholder="Usuario"></asp:TextBox>
                                       <!-- <input type="text" id="login" name="log" value="" placeholder="Login"/>-->
                                    </li> 
                                    <li class="icon formPass">
                                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                                       <!-- <input type="password" id="password" name="pwd" value="" placeholder="Password"/> -->
                                    </li>   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <li class="boxEnter">
                                        <asp:Button class="sendEnter enter" ID="Button1" runat="server" Text="Ingresar" OnClick="btnlogin_Click" />            
                                    </li>   
                                    <li class="boxCancel">
                                        <asp:Button class="cancelEnter enter" ID="Button2" runat="server" Text="Cancelar" OnClick="btnCancel_Click" />
                                    </li>
                                    <li>
                                        <br />
                                        <asp:Label ID="lbl_message" runat="server" ForeColor="Red" Text="Error en usuario o contraseña*" Visible="false"></asp:Label>
                                        <asp:Label ID="lbl_fillspace" runat="server" ForeColor="Red" Text="Los espacios no pueden estar vacíos*" Visible="false"></asp:Label>
                                        <br />                                          
                                    </li>
                                </ul>
                            </form>
                        </div>                     
                    </div>
                </div>
                <button title="Close (Esc)" type="button" class="mfp-close">×</button>
            </div>
        </div>
    </form>

     <!-- CSS links 
    
    
    <link rel="stylesheet" href="Resources/css/royalslider.css"/>
    
   
    <link rel="stylesheet" id="theme-skin-css" href="Resources/css/kinder.css" type="text/css" media="all"/>
   
        -->
    <link rel="stylesheet" href="Resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Resources/css/login_style.css"/> 
    <link rel="stylesheet" id="responsive-css" href="Resources/css/responsive.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="Resources/css/fonts.css"/>
    <style id="theme-skin-inline-css" type="text/css"></style>
    <!-- Scripts links -->
    <script src="Resources/js/vendor/jquery-1.11.3.min.js"></script>
    <script src="Resources/js/vendor/bootstrap.min.js"></script>
    <script src="Resources/js/vendor/jquery.ui.totop.js"></script>

    <!--<script src="custom_tools/js/customizer.js"></script>-->

    <script type="text/javascript" src="Resources/js/main/__packed.js"></script>
    <script type="text/javascript" src="Resources/js/main/shortcodes_init.min.js"></script>
    <script type="text/javascript" src="Resources/js/main/_main.js"></script>
    <script src="Resources/js/vendor/jquery.elevateZoom-3.0.8.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script src="Resources/js/main/g_maps.js"></script>

   
</body>
</html>
