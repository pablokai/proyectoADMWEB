<%@ Page Title="" Language="C#" MasterPageFile="~/Jefe.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="CargaEvaluacion.aspx.cs" Inherits="Proyecto_AdminWeb.PagesJefe.CargaEvaluacion" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/carga.css" />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="lblTitulox" CssClass="indicador" runat="server"></asp:Label>

    <asp:Panel ID="panelMain" runat="server" Visible="false">


        <div class="unoportres">
            <div class="seccionuno">
                <img src="../Images/work.svg" />
                <h1>Datos de evaluación</h1>
                <div>
                    <h2>Id Evaluacion</h2>
                    <asp:Label ID="EvaluacionID" runat="server" Text="fdfd" CssClass="evaluacion"></asp:Label>
                </div>

                <div>
                    <h2>Área</h2>
                    <asp:Label ID="lblArea" runat="server" Text="fdfdf" CssClass="componente"></asp:Label>
                </div>
                <div>
                    <h2>Departamento</h2>
                    <asp:Label ID="lblDepartamento" runat="server" Text="fdfddf" CssClass="eje"></asp:Label>

                </div>
            </div>
            <div class="secciondos">
                <i class="fas fa-percentage fa-5x"></i>
                <h2>Porcentaje de evidencias completado </h2>
                <asp:Label ID="lblPorcentajex" runat="server" Text="6" CssClass="porcentaje"></asp:Label>
            </div>
        </div>


        <div class="tresporzona">
            <div class="zona">
                <div class="alinear">
                    <i class="fas fa-spinner fa-5x"></i>
                    <h1>Estado de la evaluación</h1>
                    <asp:Label ID="lblEstadox" runat="server" Text="En progreso" CssClass="num"></asp:Label>
                </div>
            </div>

            <div class="zona">
                <div class="alinear">
                    <i class="fas fa-clock fa-5x"></i>
                    <h1>Periódo</h1>
                    <asp:Label ID="lblPeriodox" runat="server" Text="Periodo lectivo 2021" CssClass="num"></asp:Label>
                </div>
            </div>
            <div class="zona">
                <div class="alinear">
                    <i class="fas fa-calendar-times fa-5x"></i>
                    <h1>Fecha de Finalización</h1>
                    <asp:Label ID="lblfechax" runat="server" Text="2021-12-31" CssClass="num"></asp:Label>
                </div>
            </div>
        </div>

        <h1 class="indicador" style="margin: 0; padding-top:0;">Resumen de avance</h1>
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

        <asp:Panel ID="pnlPrincipalx" runat="server">

            <asp:Label ID="lblComponentes" CssClass="indicador2" runat="server" Text="Componentes y ejes de evaluación"></asp:Label>

            <div id="divTabla" class="contenedor">

                <div class="boxdiv">
                    <img class="Imagenestt" src="../Images/ambiente.png" />
                    <p style="text-align: center;">Ambiente</p>
                    <asp:Button ID="Ambientebtn" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Ambientebtn_Click" />
                </div>
                <div class="boxdiv">
                    <img class="Imagenestt" src="../Images/riesgo-biologico.png" />
                    <p style="text-align: center;">Riesgos</p>
                    <asp:Button ID="Riesgosbtn" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Riesgosbtn_Click" />
                </div>
                <div class="boxdiv">
                    <img class="Imagenestt" src="../Images/actividad.png" />
                    <p style="text-align: center;">Actividades</p>
                    <asp:Button ID="Actividadesbtn" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Actividadesbtn_Click" />
                </div>
                <div class="boxdiv">
                    <img class="Imagenestt" src="../Images/sistemas.png" />
                    <p style="text-align: center;">Sistemas</p>
                    <asp:Button ID="Sistemasbtn" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Sistemasbtn_Click" />
                </div>
                <div class="boxdiv">
                    <img class="Imagenestt" src="../Images/Seguimiento.png" />
                    <p style="text-align: center;">Seguimiento</p>
                    <asp:Button ID="Seguimientosbtn" runat="server" Text="Mostrar" class="btn" CssClass="btn" OnClick="Seguimientosbtn_Click" />
                </div>

            </div>
        </asp:Panel>




        <%--    Primer panel bajo --%>
        <div id="divTabla1" class="contenedorA">

            <asp:Panel ID="pnlAmbiente" runat="server" Visible="false">

                <div class="boxdiv" style="margin: 30px; height: 200px;">
                    <i class="fas fa-users fa-3x"></i>
                    <p style="text-align: center;">Compromiso</p>
                    <asp:Button Style="text-align: center;" ID="btnCompromisox" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btnCompromisox_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 200px;">
                    <i class="fas fa-users fa-3x"></i>
                    <p style="text-align: center;">Ética</p>
                    <asp:Button ID="btneticax" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btneticax_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 200px;">
                    <i class="fas fa-users fa-3x"></i>
                    <p style="text-align: center;">Personal</p>
                    <asp:Button ID="btnPersonalx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btnPersonalx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 200px;">
                    <i class="fas fa-users fa-3x"></i>
                    <p style="text-align: center;">Estructura</p>
                    <asp:Button ID="btnEstructurax" Text="Ir" runat="server" CssClass="btnboxx" OnClick="btnEstructurax_Click" />
                </div>

            </asp:Panel>
        </div>
        <%--    2° panel bajo --%>
        <div id="divTabla2" class="contenedorA">

            <asp:Panel ID="pnlRiesgo" runat="server" Visible="false">


                <div class="boxdiv" style="margin: 30px; height: 220px;">
                    <i class="fas fa-exclamation-triangle fa-3x"></i>
                    <br />
                    <p style="text-align: center;">Marco Orientador</p>
                    <asp:Button ID="Marco_Orientadorx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Marco_Orientadorx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 220px;">
                    <i class="fas fa-exclamation-triangle fa-3x"></i>
                    <p style="text-align: center;">Herramienta para la admin info</p>
                    <asp:Button ID="Herramienta_infox" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Herramienta_infox_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 220px;">
                    <i class="fas fa-exclamation-triangle fa-3x"></i>
                    <p style="text-align: center;">Funcionamiento SEVRI</p>

                    <asp:Button ID="SEVRIx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="SEVRIx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 220px;">
                    <i class="fas fa-exclamation-triangle fa-3x"></i>
                    <p style="text-align: center;">Documentacion y comunicación</p>
                    <asp:Button ID="Documentacion_comunicacionx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Documentacion_comunicacionx_Click" />
                </div>

            </asp:Panel>
        </div>
        <%--    3° panel bajo --%>
        <div id="divTabla3" class="contenedorA">

            <asp:Panel ID="pnlActividades" runat="server" Visible="false">

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-handshake fa-3x"></i>
                    <p style="text-align: center;">Caracteristicas de las actividades de control</p>
                    <asp:Button ID="Caracteristicas_controlx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Caracteristicas_controlx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-handshake fa-3x"></i>
                    <p style="text-align: center;">Alcance de las actividades de control</p>
                    <asp:Button ID="Alcance_controlx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Alcance_controlx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-handshake fa-3x"></i>
                    <p style="text-align: center;">Formalidad de las actividades de control</p>
                    <asp:Button ID="Formalidad_controlx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Formalidad_controlx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-handshake fa-3x"></i>
                    <p style="text-align: center;">Aplicación de las actividades de control</p>
                    <asp:Button ID="Aplicacion_controlx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Aplicacion_controlx_Click" />
                </div>


            </asp:Panel>
        </div>
        <%--    4° panel bajo --%>
        <div id="divTabla4" class="contenedorA">

            <asp:Panel ID="pnlSistemas" runat="server" Visible="false">


                <div class="boxdiv" style="margin: 30px; height: 215px;">
                    <i class="fas fa-laptop fa-3x"></i>
                    <br />
                    <p style="text-align: center;">Alcance SI</p>
                    <asp:Button ID="AlcanceSIx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="AlcanceSIx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 215px;">
                    <i class="fas fa-laptop fa-3x"></i>
                    <br />
                    <p style="text-align: center;">Calidad info</p>
                    <asp:Button ID="Calidadinfox" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Calidadinfox_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 215px;">
                    <i class="fas fa-laptop fa-3x"></i>
                    <p style="text-align: center;">Calidad Comunicación</p>

                    <asp:Button ID="Comunicacionx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="Comunicacionx_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 215px;">
                    <i class="fas fa-laptop fa-3x"></i>
                    <br />
                    <p style="text-align: center;">Control SI</p>
                    <asp:Button ID="ControlSIx" Text="Ir" runat="server" CssClass="btnboxx" OnClick="ControlSIx_Click" />
                </div>


            </asp:Panel>
        </div>
        <%--    5° panel bajo --%>

        <div id="divTabla5" class="contenedorA">

            <asp:Panel ID="pnlSeguimiento" runat="server" Visible="false">

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-chart-pie fa-3x"></i>
                    <p style="text-align: center;">Participantes en el seguimiento del sistema de control</p>
                    <asp:Button ID="seg1x" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg1x_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-chart-pie fa-3x"></i>
                    <p style="text-align: center;">Formalidad del seguimiento del sistema de control</p>
                    <asp:Button ID="seg2x" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg2x_Click" />

                </div>

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-chart-pie fa-3x"></i>
                    <p style="text-align: center;">Alcance del seguimiento del sistema de control</p>
                    <asp:Button ID="seg3x" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg3x_Click" />
                </div>

                <div class="boxdiv" style="margin: 30px; height: 240px;">
                    <i class="fas fa-chart-pie fa-3x"></i>
                    <p style="text-align: center;">Contribucion del seguimiento a la mejora del sistema</p>
                    <asp:Button ID="seg4x" Text="Ir" runat="server" CssClass="btnboxx" OnClick="seg4x_Click" />
                </div>
                

            </asp:Panel>
        </div>

          <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                 <asp:Button ID="btnEnviar" runat="server" Text="Enviar evaluación" OnClick="btnEnviar_Click" CssClass="btnEnviar" />
                <ajaxToolkit:ModalPopupExtender ID="mpenviar" runat="server" PopupControlID="Panl1" TargetControlID="btnEnviar"
                    CancelControlID="btnCancelar" BackgroundCssClass="Background">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" Style="display: none">
                    <iframe style="width: 400px; height: 250px;" id="irm1" src="Enviar.aspx" runat="server"  ></iframe>
                    <br />
                    
                     <asp:Button ID="btnEnviarEvaluacion" runat="server" Text="Enviar evaluacion" CssClass="btnEnviar2" OnClick="btnEnviarEvaluacion_Click" />
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btnCerrar" OnClick="btnCancelar_Click" />
                </asp:Panel>

    </asp:Panel>


</asp:Content>
