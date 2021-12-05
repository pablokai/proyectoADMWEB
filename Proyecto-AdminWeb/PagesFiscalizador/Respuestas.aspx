<%@ Page Title="" Language="C#" MasterPageFile="~/Fiscalizador.Master" AutoEventWireup="true" CodeBehind="Respuestas.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="Proyecto_AdminWeb.PagesFiscalizador.Respuestas" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/respuestas.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btnVolver" OnClick="btnVolver_Click" />
    <div class="unoportres">
        <div class="seccionuno">
            <img src="../Images/search.png" />
            <h1>Datos de evaluación</h1>
            <div>
                <h2>Id Evaluacion</h2>
                <asp:Label ID="IDEvaluacion" runat="server" Text="fdfd" CssClass="evaluacion"></asp:Label>
            </div>

            <div>
                <h2>Componente</h2>
                <asp:Label ID="Componente" runat="server" Text="fdfdf" CssClass="componente"></asp:Label>
            </div>
            <div>
                <h2>Eje</h2>
                <asp:Label ID="Eje" runat="server" Text="fdfddf" CssClass="eje"></asp:Label>

            </div>
        </div>
        <div class="secciondos">
            <i class="fas fa-percentage fa-5x"></i>
            <h2>Porcentaje de evidencias revisado </h2>
            <asp:Label ID="lblPorcentaje" runat="server" Text="20" CssClass="porcentaje"></asp:Label>
        </div>
    </div>


    <div class="fichas">
        <div class="first hero">
            <img class="hero-profile-img" src="../Images/incipiente.jpg" alt="">
            <div class="hero-description-bk"></div>
            <div class="hero-logo">
                <i class="fas fa-child fa-3x"></i>
            </div>
            <div class="hero-description">
                <p>Incipiente</p>
            </div>
            <div class="hero-date">
            </div>
            <div class="hero-btn">
                <asp:Button ID="btnIncipiente" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnIncipiente_Click" />

            </div>
        </div>

        <div class="first hero">
            <img class="hero-profile-img" src="../Images/novato.jpg" alt="">
            <div class="hero-description-bk"></div>
            <div class="hero-logo">
                <i class="fas fa-user fa-3x"></i>
            </div>
            <div class="hero-description">
                <p>Novato</p>
            </div>
            <div class="hero-date">
            </div>
            <div class="hero-btn">
                <asp:Button ID="btnNovato" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnNovato_Click" />

            </div>

        </div>

        <div class="first hero">
            <img class="hero-profile-img" src="../Images/competente.jpg" alt="">
            <div class="hero-description-bk"></div>
            <div class="hero-logo">
                <i class="fas fa-user-tie fa-3x"></i>
            </div>
            <div class="hero-description">
                <p>Competente</p>
            </div>
            <div class="hero-date">
            </div>
            <div class="hero-btn">
                <asp:Button ID="btnCompetente" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnCompetente_Click" />

            </div>

        </div>

        <div class="first hero">
            <img class="hero-profile-img" src="../Images/diestro.jpg" alt="">
            <div class="hero-description-bk"></div>
            <div class="hero-logo">
                <i class="fas fa-user-check fa-3x"></i>
            </div>
            <div class="hero-description">
                <p>Diestro</p>
            </div>
            <div class="hero-date">
            </div>
            <div class="hero-btn">
                <asp:Button ID="btnDiestro" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnDiestro_Click" />

            </div>

        </div>

        <div class="first hero">
            <img class="hero-profile-img" src="../Images/experto.jpg" alt="">
            <div class="hero-description-bk"></div>
            <div class="hero-logo">
                <i class="fas fa-user-secret fa-3x"></i>
            </div>
            <div class="hero-description">
                <p>Experto</p>
            </div>
            <div class="hero-date">
            </div>
            <div class="hero-btn">
                <asp:Button ID="btnExperto" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnExperto_Click" />
            </div>
        </div>

    </div>




    <div class="unoporzona">
        <asp:Label ID="lblVacio" runat="server" Text="No hay preguntas pendientes" Visible="false" CssClass="titulo"></asp:Label>


        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo1" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID1" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta1" runat="server" Text="" CssClass="lblPregunta"></asp:Label>
                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia1" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer1" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer1_Click" />                    
                </div>


                <div class="btns">
                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar1" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar1_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar1" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar1_Click" />
                    <asp:Label ID="lblEstado1" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                    <i class="fas fa-share" id="iobservacion"></i>
                    <asp:Button ID="Button1" runat="server" Text="Hacer observaciones" OnClick="Button1_Click1" CssClass="btnObservacion" />
                </div>

                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>

                <ajaxToolkit:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl11" TargetControlID="Button1"
                    CancelControlID="Button2" BackgroundCssClass="Background">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="Panl11" runat="server" CssClass="Popup" align="center" Style="display: none">
                    <iframe style="width: 500px; height: 565px;" id="irm1" src="Observaciones.aspx" runat="server"></iframe>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Cerrar" CssClass="btnCerrar" OnClick="Button2_Click" />
                </asp:Panel>


            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="false">
            <div class="unocompleto">



                <asp:Label ID="lblTitulo2" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID2" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta2" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia2" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer2" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer2_Click" />
                </div>
                <div class="btns">

                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar2" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar2_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar2" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar2_Click" />
                    <asp:Label ID="lblEstado2" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                      <i class="fas fa-share" id="iobservacion"></i>
                    <asp:Button ID="Button3" runat="server" Text="Hacer observaciones" OnClick="Button3_Click" CssClass="btnObservacion" />
                </div>

                <ajaxToolkit:ModalPopupExtender ID="mp2" runat="server" PopupControlID="Panel11" TargetControlID="Button3"
                    CancelControlID="Button4" BackgroundCssClass="Background">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="Panel11" runat="server" CssClass="Popup" align="center" Style="display: none">
                    <iframe style="width: 500px; height: 565px;" id="Iframe1" src="Observaciones.aspx" runat="server"></iframe>
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Cerrar" CssClass="btnCerrar" OnClick="Button4_Click" />
                </asp:Panel>

            </div>
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server" Visible="false">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo3" runat="server" Text="" CssClass="lblTitulo"></asp:Label>

                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID3" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>

                <asp:Label ID="lblPregunta3" runat="server" Text="" CssClass="lblPregunta"></asp:Label>
                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia3" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer3" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer3_Click" />
                </div>

                <div class="btns">

                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar3" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar3_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar3" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar3_Click" />
                    <asp:Label ID="lblEstado3" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                      <i class="fas fa-share" id="iobservacion"></i>
                    <asp:Button ID="Button5" runat="server" Text="Hacer observaciones" OnClick="Button5_Click" CssClass="btnObservacion" />
                </div>

                    <ajaxToolkit:ModalPopupExtender ID="mp3" runat="server" PopupControlID="Panel12" TargetControlID="Button5"
                    CancelControlID="Button6" BackgroundCssClass="Background">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Panel ID="Panel12" runat="server" CssClass="Popup" align="center" Style="display: none">
                    <iframe style="width: 500px; height: 565px;" id="Iframe2" src="Observaciones.aspx" runat="server"></iframe>
                    <br />
                    <asp:Button ID="Button6" runat="server" Text="Cerrar" CssClass="btnCerrar" OnClick="Button6_Click" />
                </asp:Panel>


            </div>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo4" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID4" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta4" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia4" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer4" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer4_Click" />
                </div>

                <div class="btns">

                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar4" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar4_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar4" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar4_Click" />
                    <asp:Label ID="lblEstado4" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo5" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID5" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta5" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia5" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer5" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer5_Click" />
                </div>

                <div class="btns">

                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar5" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar5_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar5" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar5_Click" />
                    <asp:Label ID="lblEstado5" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>


            </div>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo6" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID6" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta6" runat="server" Text="" CssClass="lblPregunta"></asp:Label>
                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia6" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer6" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer6_Click" />
                </div>
                <div class="btns">

                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar6" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar6_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar6" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar6_Click" />
                    <asp:Label ID="lblEstado6" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel7" runat="server">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo7" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>

                    <asp:Label ID="lblID7" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta7" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia7" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer7" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer7_Click" />
                </div>
                <div class="btns">

                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar7" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar7_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar7" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar7_Click" />
                    <asp:Label ID="lblEstado7" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>


            </div>
        </asp:Panel>
        <asp:Panel ID="Panel8" runat="server">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo8" runat="server" Text="" CssClass="lblTitulo"></asp:Label>

                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID8" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta8" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia8" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer8" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer8_Click" />
                </div>
                <div class="btns">
                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar8" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar8_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar8" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar8_Click" />
                    <asp:Label ID="lblEstado8" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>

            </div>
        </asp:Panel>
        <asp:Panel ID="Panel9" runat="server">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo9" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID9" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>

                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>

                <asp:Label ID="lblPregunta9" runat="server" Text="" CssClass="lblPregunta"></asp:Label>


                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia9" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer9" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer9_Click" />
                </div>
                <div class="btns">
                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar9" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar9_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar9" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar9_Click" />
                    <asp:Label ID="lblEstado9" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>

            </div>
        </asp:Panel>
        <asp:Panel ID="Panel10" runat="server">
            <div class="unocompleto">


                <asp:Label ID="lblTitulo10" runat="server" Text="" CssClass="lblTitulo"></asp:Label>
                <div class="id">
                    <h3>ID de Evidencia </h3>
                    <asp:Label ID="lblID10" runat="server" Text="" CssClass="lblID"></asp:Label>
                </div>

                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Punto a evaluar</h2>
                </div>
                <asp:Label ID="lblPregunta10" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <div class="text">
                        <asp:Label ID="lblEvidencia10" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                    </div>
                    <asp:Button ID="btnVer10" runat="server" Text="Ver evidencia" CssClass="btnVer" OnClick="btnVer10_Click" />
                </div>


                <div class="btns">
                    <i class="fas fa-check" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar10" runat="server" Text="Aprobar" CssClass="btnAprobar" OnClick="btnAprobar10_Click" />
                    <i class="fas fa-times" id="irechazar"></i>
                    <asp:Button ID="btnRechazar10" runat="server" Text="Rechazar" CssClass="btnRechazar" OnClick="btnRechazar10_Click" />
                    <asp:Label ID="lblEstado10" runat="server" Text="" CssClass="lblEstado"></asp:Label>

                </div>
        </asp:Panel>
    </div>
</asp:Content>
