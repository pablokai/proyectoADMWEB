<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaSinRol.aspx.cs" Inherits="Proyecto_AdminWeb.PagesInicio.PaginaSinRol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina Sin Rol</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png">

    <link rel="stylesheet" href="../Styles/sinrol.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,600;1,200;1,400;1,600&display=swap"
        rel="stylesheet">
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
                <asp:Button ID="btnSalir" class="logout_btn" runat="server" Text="Cerrar Sesión" OnClick="btnSalir_Click" />
            </div>
        </header>


        <div class="header">
            <h1>Bienvenido</h1>
            <h1>Elija un rol para ser asignado</h1>

            <p>Actualmente cuenta con el rol de empleado independiente</p>
        </div>
        <div class="row1-container">
            <div class="box box-down cyan">
                <h2>Fiscalizador</h2>
                <p>Monitorea y revisa evaluaciones</p>
                <img src="https://assets.codepen.io/2301174/icon-supervisor.svg" alt="">
                <asp:Button ID="btnFiscalizador" runat="server" Text="Solicitar Rol" CssClass="btn" OnClick="btnFiscalizador_Click" />
            </div>

            <div class="box red">
                <h2>Director de área</h2>
                <p>Gestiona y asigna evaluaciones</p>
                <img src="https://assets.codepen.io/2301174/icon-team-builder.svg" alt="">
                <label for="ddlArea">Area</label>
                <asp:DropDownList ID="ddlArea" runat="server" CssClass="ddl">                   
                </asp:DropDownList>
                <asp:Button ID="btnDirector" runat="server" Text="Solicitar Rol" CssClass="btn" OnClick="btnDirector_Click" />
            </div>

            <div class="box box-down blue">
                <h2>Jefe de Departamento</h2>
                <p>Completa la evaluación de control interno</p>
                <img src="https://assets.codepen.io/2301174/icon-calculator.svg" alt="">
                <label for="ddlDepartamento1">Departamento</label>
                <asp:DropDownList ID="ddlDepartamento1" runat="server" CssClass="ddl">
                  
                </asp:DropDownList>
                <asp:Button ID="btnJefe" runat="server" Text="Solicitar Rol" CssClass="btn" OnClick="btnJefe_Click" />
            </div>
        </div>
        <div class="row2-container">
            <div class="box orange">
                <h2>Empleado de Departamento</h2>
                <p>Adjunta evidencias de evaluación</p>
                <img src="../Images/employee-of-the-month.png" alt="" width="60" height="60">
                <label for="ddlDepartamento2">Departamento</label>
                <asp:DropDownList ID="ddlDepartamento2" runat="server" CssClass="ddl">
                
                </asp:DropDownList>
                <asp:Button ID="btnEmpleado" runat="server" Text="Solicitar Rol" CssClass="btn" OnClick="btnEmpleado_Click" />

            </div>
        </div>
        <footer class="footer">
            <div class="icons">
                <a href="#"><i class="fas fa-envelope"></i></a>
                <a href="https://www.cuc.ac.cr/app/cms/www/index.php"><i class="fas fa-globe"></i></a>
                <a href="https://www.youtube.com/channel/UCcbKGfA6OlUpA1QSu-gLzgA"><i class="fab fa-youtube"></i></a>
            </div>
            <p class="company-name">
                Copyright 2021 © Control Interno
            </p>
        </footer>
    </form>
</body>
</html>



