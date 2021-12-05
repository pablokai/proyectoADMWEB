
<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="DefinirEvaluacion.aspx.cs" Inherits="Proyecto_AdminWeb.PagesDirector.DefinirEvaluacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/editarmachote.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="pnlPrincipal" runat="server">

        <div>
            <h1 class="indicador">Ingrese el nombre de la nueva evaluación</h1>
            <asp:TextBox ID="TextBox1" CssClass="Texto" runat="server"></asp:TextBox>
        </div>

        <!--BOTON NUEVA EVALUACION-->
        <asp:Button ID="Button6" runat="server" Text="Crear Nueva Evaluación" CssClass="btn1" OnClick="Evaluacion_Click" />

        <!--DROPDOWNLIST-->
        <div id="iddropdown">
            <h1 class="indicador">Evaluaciones existentes</h1>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropDown"></asp:DropDownList>
        </div>

        <h1 class="indicador">Seleccione el componente</h1>

        <!--PANEL PRINCIPAL-->
        <div id="divTabla" class="contenedor">
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/ambiente.png" />
                <p style="text-align: center;">Ambiente</p>
                <asp:Button ID="Button1" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Ambientebtn_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/riesgo-biologico.png" />
                <p style="text-align: center;">Riesgos</p>
                <asp:Button ID="Button2" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Riesgos1btn_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/actividad.png" />
                <p style="text-align: center;">Actividades</p>
                <asp:Button ID="Button3" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Actividadesbtn_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/sistemas.png" />
                <p style="text-align: center;">Sistemas</p>
                <asp:Button ID="Button4" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Sistemasbtn_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/Seguimiento.png" />
                <p style="text-align: center;">Seguimiento</p>
                <asp:Button ID="Button5" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Seguimientosbtn_Click" />
            </div>
        </div>
    </asp:Panel>

    <!--PANEL-->
    <div id="divTabla1" class="contenedorA">
        <asp:Panel ID="pnlAmbiente" runat="server" Visible="false">
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Compromiso</p>
                <asp:Button Style="text-align: center;" ID="btnCompromiso" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Amb1_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Ética</p>
                <asp:Button ID="btnetica" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Amb2_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Personal</p>
                <asp:Button ID="btnPersonal" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Amb3_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Estructura</p>
                <asp:Button ID="btnEstructura" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Amb4_Click" />
            </div>
        </asp:Panel>
    </div>

    <!--PANEL-->
    <div id="divTabla2" class="contenedorA">
        <asp:Panel ID="pnlRiesgo" runat="server" Visible="false">
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Marco Orientador</p>
                <br />
                <asp:Button ID="Marco_Orientador" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Rie1_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Herramienta para la admin info</p>
                <asp:Button ID="Herramienta_info" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Rie2_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Funcionamiento SEVRI</p>
                <br />
                <asp:Button ID="SEVRI" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Rie3_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Documentacion y comunicación</p>
                <asp:Button ID="Documentacion_comunicación" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Rie4_Click" />
            </div>
        </asp:Panel>
    </div>

    <!--PANEL-->
    <div id="divTabla3" class="contenedorA">
        <asp:Panel ID="pnlActividades" runat="server" Visible="false">
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Caracteristicas de las actividades de control</p>
                <asp:Button ID="Caracteristicas_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Act1_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Alcance de las actividades de control</p>
                <asp:Button ID="Alcance_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Act2_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Formalidad de las actividades de control</p>
                <asp:Button ID="Formalidad_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Act3_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Aplicación de las actividades de control</p>
                <asp:Button ID="Aplicacion_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Act4_Click" />
            </div>
        </asp:Panel>
    </div>

    <!--PANEL-->
    <div id="divTabla4" class="contenedorA">
        <asp:Panel ID="pnlSistemas" runat="server" Visible="false">
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Alcance SI</p>
                <asp:Button ID="AlcanceSI" Text="Ir" runat="server" CssClass="btnboxx" OnClick="sis1_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Calidad info</p>
                <asp:Button ID="Calidadinfo" Text="Ir" runat="server" CssClass="btnboxx" OnClick="sis2_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Calidad Comunicación</p>
                <asp:Button ID="Comunicacion" Text="Ir" runat="server" CssClass="btnboxx" OnClick="sis3_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Control SI</p>
                <asp:Button ID="ControlSI" Text="Ir" runat="server" CssClass="btnboxx" OnClick="sis4_Click" />
            </div>
        </asp:Panel>
    </div>

    <!--PANEL-->
    <div id="divTabla5" class="contenedorA">
        <asp:Panel ID="pnlSeguimiento" runat="server" Visible="false">
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Participantes en el seguimiento del sistema de control</p>
                <asp:Button ID="seg1" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg1_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Formalidad del seguimiento del sistema de control</p>
                <asp:Button ID="seg2" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg2_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Alcance del seguimiento del sistema de control</p>
                <asp:Button ID="seg3" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg3_Click" />
            </div>
            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <p style="text-align: center;">Contribucion del seguimiento a la mejora del sistema</p>
                <asp:Button ID="seg4" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg4_Click" />
            </div>
        </asp:Panel>
    </div>
</asp:Content>
