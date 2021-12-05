<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Observaciones.aspx.cs" Inherits="Proyecto_AdminWeb.PagesFiscalizador.Observaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Styles/popup.css" />
</head>
<body>
    <form id="form1" runat="server">
   <h1>Envio de correo</h1>
     <div class="bloque1">
        <!-- <asp:Label ID="lblEvidencia" runat="server" CssClass="lbl2" Text="ID Evidencia" ></asp:Label>
        <asp:Label ID="lblIDEvidencia" runat="server" CssClass="lbltext" Text="dsds"></asp:Label> 
        </div>-->
        <div class="bloque2">
          <asp:Label ID="lblDepartamento" runat="server" CssClass="lbl2" Text="ID Departamento"></asp:Label>
        <asp:Label ID="lblIDDepartamento" runat="server" CssClass="lbltext" Text="dsdsdsd"></asp:Label>  
</div>
        <div class="bloque3">
    <asp:Label ID="lblObservaciones" runat="server" CssClass="lbl" Text="Observaciones"></asp:Label>  
   
    <asp:TextBox ID="txtObservaciones" runat="server" CssClass="texto" TextMode="MultiLine" ></asp:TextBox>  
  
    </div>
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar correo" CssClass="btn" OnClick="btnEnviar_Click" />
        <asp:Label ID="lblError" runat="server" CssClass="lblError" Text="" Visible="false"></asp:Label>  
    </form>
</body>
</html>
