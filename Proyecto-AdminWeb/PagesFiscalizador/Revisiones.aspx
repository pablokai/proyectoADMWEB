<%@ Page Title="" Language="C#" MasterPageFile="~/Fiscalizador.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Revisiones.aspx.cs" Inherits="Proyecto_AdminWeb.PagesFiscalizador.Revisiones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/pruebasdivs3.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="indicador">Indicadores de revisiones</h1>

    <div class="tresporzona">
        <div class="zona">
            <div class="alinear">
                <i class="fas fa-spinner fa-5x"></i>
                <h1>Pendientes</h1>
                <asp:Label ID="lblPendientes" runat="server" Text="8" CssClass="num"></asp:Label>
            </div>
        </div>

        <div class="zona">
            <div class="alinear">
                <i class="fas fa-check-square fa-5x"></i>
                <h1>Aprobadas</h1>
                <asp:Label ID="lblAprobados" runat="server" Text="3" CssClass="num"></asp:Label>
            </div>
        </div>
        <div class="zona">
            <div class="alinear">
                <i class="fas fa-window-close fa-5x"></i>
                <h1>Rechazadas</h1>
                <asp:Label ID="lblRechazados" runat="server" Text="1" CssClass="num"></asp:Label>
            </div>
        </div>
    </div>


    <div class="unoporzona">
        <div class="unocompleto">
            <h1 class="tituloevaluacion">Evaluaciones pendientes</h1>

            <asp:GridView ID="gvPendientes" runat="server" AutoGenerateColumns="False" OnRowCommand="gvPendientes_RowCommand" CssClass="tabla">
                <Columns>
                    <asp:TemplateField HeaderText="ID Evaluación">

                        <ItemTemplate>

                            <asp:Label ID="lblEvaluacion" runat="server" Text='<%# Eval("IDEVALUACION") %>' CssClass="codigo"></asp:Label>

                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:BoundField HeaderText="Descripción" DataField="DESCRIPCION" />

                    <asp:BoundField HeaderText="Fecha" DataField="FECHA" />

                    <asp:BoundField HeaderText="Area" DataField="AREA" />

                    <asp:BoundField HeaderText="Periódo" DataField="IDPERIODO" />

                    <asp:TemplateField HeaderText="Departamento">

                        <ItemTemplate>

                            <asp:Label ID="lblDepartamento" runat="server" Text='<%# Eval("DEPARTAMENTO") %>' CssClass="codigo"></asp:Label>

                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Ver">
                        <ItemTemplate>
                            <asp:Button runat="server" CommandName="BTNver" Text="Ver" CssClass="btnver" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>



    <asp:Panel ID="pnlPrincipal" runat="server" Visible="false">



          <h1 class="indicador" style="margin: 0; padding-top:0;">Resumen de preguntas pendientes</h1>
        <div class="cincoporzona">

            <div class="cincozona">
                <h1>Ambiente</h1>
                <h4>Preguntas restantes</h4>
                <i class="fas fa-users fa-2x"></i>
                <asp:Label ID="lblCompromisonum" runat="server" Text="54" CssClass="componentetotal"></asp:Label>
            </div>

            <div class="cincozona">
                <h1>Riesgo</h1>
                <h4>Preguntas restantes</h4>
                <i class="fas fa-exclamation-triangle fa-2x"></i>
                <asp:Label ID="lblRiesgonum" runat="server" Text="54" CssClass="componentetotal"></asp:Label>
            </div>
            <div class="cincozona">
                <h1>Actividades</h1>
                <h4>Preguntas restantes</h4>
                <i class="fas fa-handshake fa-2x"></i>
                <asp:Label ID="lblActividadesnum" runat="server" Text="54" CssClass="componentetotal"></asp:Label>
            </div>
            <div class="cincozona">
                <h1>Sistemas</h1>
                <h4>Preguntas restantes</h4>
                <i class="fas fa-laptop fa-2x"></i>
                <asp:Label ID="lblSistemasnum" runat="server" Text="54" CssClass="componentetotal"></asp:Label>
            </div>
            <div class="cincozona">
                <h1>Seguimiento</h1>
                <h4>Preguntas restantes</h4>
                <i class="fas fa-chart-pie fa-2x"></i>
                <asp:Label ID="lblSeguimientonum" runat="server" Text="54" CssClass="componentetotal"></asp:Label>
            </div>
        </div>



        <h1 class="indicador">Componentes y ejes de la evaluación</h1>

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
    <div id="divTabla1" class="contenedorA">

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
    <div id="divTabla2" class="contenedorA">

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
    <div id="divTabla3" class="contenedorA">

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
    <div id="divTabla4" class="contenedorA">

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

    <div id="divTabla5" class="contenedorA">

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

      <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                 <asp:Button ID="btnEnviar" runat="server" Text="Enviar revisión a la dirección" OnClick="btnEnviar_Click1" CssClass="btnEnviar" />
                <ajaxToolkit:ModalPopupExtender ID="mpenviar" runat="server" PopupControlID="Panl1" TargetControlID="btnEnviar"
                    CancelControlID="btnCancelar" BackgroundCssClass="Background">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" Style="display: none">
                    <iframe style="width: 500px; height: 650px;" id="irm1" src="Revisar.aspx" runat="server"  ></iframe>
                    <br />
                     <asp:Button ID="btnTerminar" runat="server" Text="Enviar y terminar" CssClass="btnEnviar2" OnClick="btnTerminar_Click" />
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btnCerrar" OnClick="btnCancelar_Click1" />
                </asp:Panel>

</asp:Content>
