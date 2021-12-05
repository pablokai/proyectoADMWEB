<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Revisar.aspx.cs" Inherits="Proyecto_AdminWeb.PagesFiscalizador.Revisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Styles/Revisar.css" />
</head>
<body>
    <form id="form1" runat="server">
         <h1>Envio de correo</h1>
        <div class="bloque2">
          <p>Asegúrese de revisar todas las evidencias antes de enviar</p>
        </div>
        <div class="bloque3">
            
    <asp:Label ID="lblObservaciones" runat="server" CssClass="lbl" Text="Observaciones"></asp:Label>  
   <h3>Indique sus observaciones para ser enviadas al director de área</h3>
    <asp:TextBox ID="txtObservaciones" runat="server" CssClass="texto" TextMode="MultiLine" ></asp:TextBox>  
  
    </div>
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar correo" CssClass="btn" OnClick="btnEnviar_Click" />
        <asp:Label ID="lblError" runat="server" CssClass="lblError" Text="" Visible="false"></asp:Label>  
    </form>
 
</body>
</html>
