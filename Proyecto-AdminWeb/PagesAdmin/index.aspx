<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proyecto_AdminWeb.PagesAdmin.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="../Styles/bienvenida.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="block">
        <div class="f">
            <h1 class="hola">Hola </h1>
            <asp:Label ID="lblNombre" runat="server" Text="Pablo" CssClass="lblNombre"></asp:Label>
        </div>

        <div class="bienvenido">
            <h1 class="titulo">Bienvenido al sistema Control Interno</h1>
         
            <img src="../Images/imginicio.png" />
              
        </div>

    </div>
</asp:Content>
