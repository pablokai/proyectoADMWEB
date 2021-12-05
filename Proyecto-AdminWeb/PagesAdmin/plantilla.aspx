<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="plantilla.aspx.cs" Inherits="Proyecto_AdminWeb.PagesAdmin.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/plantillacontenido.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="unoporzona">
        <div class="unocompleto">
        </div>
    </div>

    <div class="dosporzona">
        <div class="derecha"></div>
        <div class="izquierda">
        </div>

    </div>

    <div class="tresporzona">
        <div class="zona"></div>
        <div class="zona"></div>
        <div class="zona"></div>
    </div>

    <div class="cuatroporzona">
        <div class="cuatrozona"></div>
        <div class="cuatrozona"></div>
        <div class="cuatrozona"></div>
        <div class="cuatrozona"></div>
    </div>


     <div class="cincoporzona">
        <div class="cincozona">
            <h1>Compromiso</h1>            
            <h4>Preguntas restantes</h4>
             <i class="fas fa-users fa-2x"></i>
            <asp:Label ID="lblCompromiso" runat="server" Text="54" CssClass="componentetotal" ></asp:Label>
        </div>
            
         <div class="cincozona"></div>
         <div class="cincozona"></div>
         <div class="cincozona"></div>
          <div class="cincozona"></div>
    </div>

    <div class="unoportres">
        <div class="seccionuno"></div>
        <div class="secciondos"></div>
    </div>





</asp:Content>
