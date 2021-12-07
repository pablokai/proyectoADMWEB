<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_ConfigB.aspx.cs" Inherits="Proyecto_AdminWeb.PagesAdmin.Admin_ConfigB" %>
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
<%--            <asp:Button ID="btnModgmailSYS" runat="server" CssClass="btn" Text="Actualizar" OnClick="btnModgmail_Click"   />--%>

            </div>
        <div class="unoportres">
                        <h4>Mensaje de aceptación</h4>
				<input id="txtmsjAcepta" type="text" runat="server" class="boxb" value="" placeholder=""  />
                <div>
                 <asp:Button ID="btnmodmsj1" runat="server" CssClass="btn" Text="Cambiar" OnClick="btnmodmsj1_Click"   />
                </div>
                <h4>Mensaje de rechazo</h4>
				<input id="txtmsjRecha" type="text" runat="server" class="boxb" value="" placeholder=""  />
            <div>
                <asp:Button ID="btnmodmsj2" runat="server" CssClass="btn" Text="Cambiar" OnClick="btnmodmsj2_Click"   />
            </div>

        </div>
        </div>

        
</asp:Content>
