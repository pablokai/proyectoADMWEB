<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Espera.aspx.cs" Inherits="Proyecto_AdminWeb.PagesInicio.Espera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina Espera</title>
    <link rel="stylesheet" href="../Styles/sinrol.css">
</head>
<body>
    <form id="form1" runat="server">
        <header>
             <div class="logo">
                  <img src="../Images/logo.svg">
               </div>
            <div class="config_area">
                <img src="../Images/settings.png">
            </div>
            <div class="user_area">
                <img src="../Images/profileheader.svg"><asp:Label ID="lblUsername2" runat="server" Text="Usuario" CssClass="username"></asp:Label>
            </div>
            <div class="right_area">
                <asp:Button ID="btnSalir" class="logout_btn" runat="server" Text="Cerrar Sesión" OnClick="btnSalir_Click"  />
            </div>
        </header>

         <div class="header">
            <h1>Su solicitud está siendo procesada</h1>
            <h1>Se le notificará su aceptación o rechazo por correo electrónico</h1>

            <p>Será redirigido en 8 segundos</p>
        </div>
    </form>
</body>
</html>
