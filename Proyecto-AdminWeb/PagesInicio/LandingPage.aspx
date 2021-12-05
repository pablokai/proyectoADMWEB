<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="Proyecto_AdminWeb.PagesInicio.LandingPage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard</title>

    <link rel="stylesheet" href="../Styles/home.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="showcase">
        <header>
            <img class="logo" src="../Images/logo.svg" />
            <div class="navbar">
                <a href="#">Inicio</a>
                <a href="#">Sobre Nosotros</a>
                <a href="#">Contacto</a>
            </div>
            <!-- div class="toggle"></div> -->
        </header>
        <video src="../Images/videocover.mp4" muted loop autoplay></video>
        <div class="overlay"></div>
        <div class="text">
            <h2>Bienvenido al sistema </h2>
            <h3>de </h3>
            <h3 class="control">Control</h3>
            <h3 class="interno">Interno</h3>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat.
            </p>
            <a href="#">Ver más</a>
        </div>
        <ul class="social">
            <li><a href="#">
                <img src="https://i.ibb.co/x7P24fL/facebook.png"></a></li>
            <li><a href="#">
                <img src="https://i.ibb.co/Wnxq2Nq/twitter.png"></a></li>
            <li><a href="#">
                <img src="https://i.ibb.co/ySwtH4B/instagram.png"></a></li>
        </ul>
    </div>
    <div class="cover">
        
        <div>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat.
            </p>
        </div>
    </div>

     <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
     <asp:Label ID="lblHidden" runat="server" Text=""></asp:Label>
                <ajaxtoolkit:modalpopupextender id="mpePopUp" runat="server" targetcontrolid="lblHidden" popupcontrolid="divPopUp" backgroundcssclass="modalBackground">
                </ajaxtoolkit:modalpopupextender>

<div id="divPopUp" class="pnlBackGround">
     <div id="Header" class="header" >MyHeader</div>
     <div id="main" class="main">Main PopUp </div>
     <div id="buttons">
          <div id="DivbtnOK" class="buttonOK"><asp:Button id="btnOk" runat="server" text="Ok" /></div>
          <div id="Divbtncancel" class="buttonOK"><asp:Button id="btnCancel" runat="server" text="Cancel" /></div>
     </div>
</div>



</asp:Content>

