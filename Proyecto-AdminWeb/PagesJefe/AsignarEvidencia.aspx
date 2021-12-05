<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsignarEvidencia.aspx.cs" Inherits="Proyecto_AdminWeb.PagesJefe.AsignarEvidencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Styles/asignarevidencia.css" />
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <h1>Asignación de evidencias</h1>
             <h3>Elija un empleado para asignar las evidencias</h3>
              <asp:DropDownList ID="ddlEmpleados" runat="server" CssClass="ddl">
               </asp:DropDownList>
             <asp:Button ID="btnAsignar" runat="server" Text="Asignar" CssClass="btn" />
             <asp:Label ID="lblMensaje" runat="server" Text="Se han asignado las evidencias"></asp:Label>
            <p>Si hay preguntas sin llenar se enviarán incompletas</p>
        </div>
    </form>
</body>
</html>
