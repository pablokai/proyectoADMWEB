<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="HistorialEV.aspx.cs" Inherits="Proyecto_AdminWeb.PagesDirector.HistorialEV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="../Styles/HistorialEvalua.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="pnlPrincipal" runat="server" Visible="true">

        <h1 class="indicador">Historial de machotes</h1>
        <div id="divTabla" class="contenedor">

            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/ambiente.png" />
                <p style="text-align: center;">Ambiente</p>
                <asp:Button ID="Ambientebtnx" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Ambientebtnx_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/riesgo-biologico.png" />
                <p style="text-align: center;">Riesgos</p>
                <asp:Button ID="Riesgos1btnx" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Riesgos1btnx_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/actividad.png" />
                <p style="text-align: center;">Actividades</p>
                <asp:Button ID="Actividadesbtnx" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Actividadesbtnx_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/sistemas.png" />
                <p style="text-align: center;">Sistemas</p>
                <asp:Button ID="Sistemasbtnx" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Sistemasbtnx_Click" />
            </div>
            <div class="boxdiv">
                <img class="Imagenestt" src="../Images/Seguimiento.png" />
                <p style="text-align: center;">Seguimiento</p>
                <asp:Button ID="Seguimientosbtnx" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Seguimientosbtnx_Click" />
            </div>

        </div>
    </asp:Panel>


    <%--    Primer panel bajo --%>
    <div id="divTabla1" class="contenedorB">

        <asp:Panel ID="pnlAmbientex" runat="server" Visible="false">

            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <i class="fas fa-users fa-3x"></i>
                <p style="text-align: center;">Compromiso</p>
                <asp:Button Style="text-align: center;" ID="btnCompromiso" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btnCompromiso_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <i class="fas fa-users fa-3x"></i>
                <p style="text-align: center;">Ética</p>
                <asp:Button ID="btnetica" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btnetica_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <i class="fas fa-users fa-3x"></i>
                <p style="text-align: center;">Personal</p>
                <asp:Button ID="btnPersonal" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btnPersonal_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 200px;">
                <i class="fas fa-users fa-3x"></i>
                <p style="text-align: center;">Estructura</p>
                <asp:Button ID="btnEstructura" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btnEstructura_Click" />
            </div>

        </asp:Panel>
    </div>


    <%--    2° panel bajo --%>
    <div id="divTabla2" class="contenedorB">

        <asp:Panel ID="pnlRiesgox" runat="server" Visible="false">


            <div class="boxdiv" style="margin: 25px; height: 220px;">
                <i class="fas fa-exclamation-triangle fa-3x"></i>
                <br />
                <p style="text-align: center;">Marco Orientador</p>

                <asp:Button ID="Marco_Orientador" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Marco_Orientador_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 220px;">
                <i class="fas fa-exclamation-triangle fa-3x"></i>
                <p style="text-align: center;">Herramienta para la admin info</p>
                <asp:Button ID="Herramienta_info" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Herramienta_info_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 220px;">
                <i class="fas fa-exclamation-triangle fa-3x"></i>
                <p style="text-align: center;">Funcionamiento SEVRI</p>

                <asp:Button ID="SEVRI" Text="Ir" runat="server" CssClass="btnboxx" OnClick="SEVRI_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 220px;">
                <i class="fas fa-exclamation-triangle fa-3x"></i>
                <p style="text-align: center;">Documentacion y comunicación</p>
                <asp:Button ID="Documentacion_comunicación" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Documentacion_comunicación_Click" />
            </div>

        </asp:Panel>
    </div>

    <%--    3° panel bajo --%>
    <div id="divTabla3" class="contenedorB">

        <asp:Panel ID="pnlActividadesx" runat="server" Visible="false">

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-handshake fa-3x"></i>
                <p style="text-align: center;">Caracteristicas de las actividades de control</p>
                <asp:Button ID="Caracteristicas_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Caracteristicas_control_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-handshake fa-3x"></i>
                <p style="text-align: center;">Alcance de las actividades de control</p>
                <asp:Button ID="Alcance_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Alcance_control_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-handshake fa-3x"></i>
                <p style="text-align: center;">Formalidad de las actividades de control</p>
                <asp:Button ID="Formalidad_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Formalidad_control_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-handshake fa-3x"></i>
                <p style="text-align: center;">Aplicación de las actividades de control</p>
                <asp:Button ID="Aplicacion_control" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Aplicacion_control_Click" />
            </div>


        </asp:Panel>
    </div>

    <%--    4° panel bajo --%>
    <div id="divTabla4" class="contenedorB">

        <asp:Panel ID="pnlSistemasx" runat="server" Visible="false">

            <div class="boxdiv" style="margin: 30px; height: 215px;">
                <i class="fas fa-laptop fa-3x"></i>
                <br />
                <p style="text-align: center;">Alcance SI</p>

                <asp:Button ID="AlcanceSI" Text="Ir" runat="server" CssClass="btnboxx" OnClick="AlcanceSI_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 215px;">
                <i class="fas fa-laptop fa-3x"></i>
                <br />
                <p style="text-align: center;">Calidad info</p>

                <asp:Button ID="Calidadinfo" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Calidadinfo_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 215px;">
                <i class="fas fa-laptop fa-3x"></i>
                <p style="text-align: center;">Calidad Comunicación</p>
                <asp:Button ID="Comunicacion" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Comunicacion_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 215px;">
                <i class="fas fa-laptop fa-3x"></i>
                <br />
                <p style="text-align: center;">Control SI</p>

                <asp:Button ID="ControlSI" Text="Ir" runat="server" CssClass="btnboxx" OnClick="ControlSI_Click" />
            </div>


        </asp:Panel>
    </div>
    <%--    5° panel bajo --%>

    <div id="divTabla5" class="contenedorB">

        <asp:Panel ID="pnlSeguimientox" runat="server" Visible="false">

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-chart-pie fa-3x"></i>
                <p style="text-align: center;">Participantes en el seguimiento del sistema de control</p>
                <asp:Button ID="seg1" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg1_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-chart-pie fa-3x"></i>
                <p style="text-align: center;">Formalidad del seguimiento del sistema de control</p>
                <asp:Button ID="seg2" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg2_Click" />

            </div>

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-chart-pie fa-3x"></i>
                <p style="text-align: center;">Alcance del seguimiento del sistema de control</p>
                <asp:Button ID="seg3" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg3_Click" />
            </div>

            <div class="boxdiv" style="margin: 30px; height: 240px;">
                <i class="fas fa-chart-pie fa-3x"></i>
                <p style="text-align: center;">Contribucion del seguimiento a la mejora del sistema</p>
                <asp:Button ID="seg4" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg4_Click" />
            </div>


        </asp:Panel>
    </div>

    <asp:Panel ID="NIveles" runat="server" Visible="false">

        <div class="boxdiv3">
            <i class="fas fa-child fa-2x"></i>
            <asp:Button ID="N_Incipiente" Text="Incipiente" runat="server" CssClass="btnboxx2" OnClick="N_Incipiente_Click" />
        </div>
        <div class="boxdiv3">
            <i class="fas fa-user fa-2x"></i>
            <asp:Button ID="N_Novato" Text="Novato" runat="server" CssClass="btnboxx2" OnClick="N_Novato_Click" />
        </div>
        <div class="boxdiv3">
            <i class="fas fa-user-tie fa-2x"></i>
            <asp:Button ID="N_Competente" Text="Competente" runat="server" CssClass="btnboxx2" OnClick="N_Competente_Click" />
        </div>
        <div class="boxdiv3">
            <i class="fas fa-user-check fa-2x"></i>
            <asp:Button ID="N_Diestro" Text="Diestro" runat="server" CssClass="btnboxx2" OnClick="N_Diestro_Click" />
        </div>
        <div class="boxdiv3">
            <i class="fas fa-user-secret fa-2x"></i>
            <asp:Button ID="Experto" Text="Experto" runat="server" CssClass="btnboxx2" OnClick="Experto_Click" />
        </div>
    </asp:Panel>

    <asp:Panel ID="Tablaevaluaciones" runat="server" Visible="false">


            <div class="unoporzona2">
        <div class="unocompleto2">
            <h2 class="tituloevaluacion2">Historial de machotes</h2>

            <h4>ID Evaluación</h4>
			<input id="txtIDEval" type="text" runat="server" class="box20" value="" placeholder=""  />
            <asp:Button ID="btnBuscar" Text="Buscar" runat="server" CssClass="btnboxx2" OnClick="btnBuscar_Click" />


            <asp:GridView ID="gvPendientes" runat="server" AutoGenerateColumns="False"  CssClass="tabla">
                <Columns>

                    <asp:BoundField HeaderText="ID" DataField="ID_EVALUACION_PUNTO" />

                    <asp:BoundField HeaderText="Descripción" DataField="DESCRIPCION" />

                    <asp:BoundField HeaderText="Nivel" DataField="Nivel" />

                </Columns>
            </asp:GridView>
            </div>
                </div>
            </asp:Panel>
</asp:Content>
