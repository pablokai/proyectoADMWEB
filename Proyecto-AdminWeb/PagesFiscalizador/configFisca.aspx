<%@ Page Title="" Language="C#" MasterPageFile="~/Fiscalizador.Master" AutoEventWireup="true" CodeBehind="configFisca.aspx.cs" Inherits="Proyecto_AdminWeb.PagesFiscalizador.configFisca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/config.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="unocompleto">
            <div class="center">

					<h4>NOMBRE</h4>
					<input id="txtNombre" type="text" runat="server" class="box" value="" placeholder=""  />
					
					<h4>PRIMER APELLIDO</h4>
					<input id="txt1App" type="text" runat="server" class="box" value="" placeholder=""  />

					<h4>SEGUNDO APELLIDO</h4>
					<input id="txt2App" type="text" runat="server" class="box" value="" placeholder=""  />

					<h4>CORREO</h4>
					<input id="txtcorreo" type="text" runat="server" class="box" value="" placeholder=""  />

					<h4>TELEFONO</h4>
					<input id="txtcel" type="text" runat="server" class="box" value="" placeholder=""  />
					
					<h4>CONTRASEÑA</h4>
					<input id="txtpass" type="text" runat="server" class="box" value="" placeholder=""  />

					<h4>FECHA NACIMIENTO</h4>
					<input id="txtFechaN" type="date" runat="server" class="box" value="" placeholder=""   /><br />
                <br />
				

				<asp:Button ID="xx" runat="server" CssClass="btn" Text="Actualizar" OnClick="xx_Click"  />
				<asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>
				</div>
			</div>
</asp:Content>
