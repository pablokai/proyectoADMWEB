<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="Empleado_ConfigB.aspx.cs" Inherits="Proyecto_AdminWeb.PagesEmpleado.Empleado_ConfigB" %>
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
                <h1>Tu rol no genera correos</h1>
        </div>
        </div>
</asp:Content>
