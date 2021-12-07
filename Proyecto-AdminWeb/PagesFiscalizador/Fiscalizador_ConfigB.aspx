<%@ Page Title="" Language="C#" MasterPageFile="~/Fiscalizador.Master" AutoEventWireup="true" CodeBehind="Fiscalizador_ConfigB.aspx.cs" Inherits="Proyecto_AdminWeb.PagesFiscalizador.Fiscalizador_ConfigB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link rel="stylesheet" href="../Styles/ConfigBin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="unoporzona">
        <div class="unocompleto">
            <h4>Tu correo</h4>
				<input id="txtTuCorreo" type="text" runat="server" class="box" value="" placeholder=""  />
            <asp:Button ID="btnModgmail" runat="server" CssClass="btn" Text="Actualizar" OnClick="btnModgmail_Click"   />
            <h4>Correo del sistema</h4>
				<input id="txtCorreoSYS" type="text" runat="server" class="box" value="" placeholder=""  />
            </div>
            <div class="unoportres">
                        <h4>Mensaje de observación</h4>
				<input id="txtobservacion" type="text" runat="server" class="boxb" value="" placeholder=""  />
                <div>
                 <asp:Button ID="btnmodmsobs1" runat="server" CssClass="btn" Text="Cambiar" OnClick="btnmodmsobs1_Click"   />
                </div>


        </div>
        </div>
</asp:Content>
