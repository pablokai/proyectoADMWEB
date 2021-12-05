<%@ Page Title="" Language="C#" MasterPageFile="~/Jefe.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true"  CodeBehind="Evidencias.aspx.cs" Inherits="Proyecto_AdminWeb.PagesJefe.Evidencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="../Styles/evidencias.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btnVolver" OnClick="btnVolver_Click" />


    <div class="unoportres">
        <div class="seccionuno">
            <img src="../Images/test(1).png" />
            <h1>Datos de evaluación</h1>
            <div>
                <h2>Id Evaluacion</h2>
                <asp:Label ID="IDEvaluacion2" runat="server" Text="fdfd" CssClass="evaluacion"></asp:Label>
            </div>

            <div>
                <h2>Componente</h2>
                <asp:Label ID="Componente2" runat="server" Text="fdfdf" CssClass="componente"></asp:Label>
            </div>
            <div>
                <h2>Eje</h2>
                <asp:Label ID="Eje2" runat="server" Text="fdfddf" CssClass="eje"></asp:Label>
            </div>
        </div>
        <div class="secciondos">
            <i class="fas fa-question-circle fa-5x"></i>
            <h2>Evidencias restantes por adjuntar del eje </h2>
            <asp:Label ID="lblRestantes" runat="server" Text="20" CssClass="porcentaje"></asp:Label>
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
            <asp:Button ID="btnIncipiente" runat="server" Text="Ver detalle" CssClass="btn" OnClick=
                "btnIncipiente_Click" />

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
            <asp:Button ID="btnExperto" runat="server" Text="Ver detalle" CssClass="btn"  OnClick="btnExperto_Click"/>
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
                        <asp:TextBox ID="txtEvidencia1" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                       <!-- <asp:Label ID="lblEvidencia1" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>-->
                    </div>
                    <asp:Button ID="btnVer1" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                   
                </div>



                <div class="btns">
                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar1" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar1_Click" />
                    <asp:Button ID="btnRechazar1" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar1_Click" />
                    <asp:Label ID="lblEstado1" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>



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
                         <asp:TextBox ID="txtEvidencia2" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                       <!-- <asp:Label ID="lblEvidencia2" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>-->
                    </div>
                    <asp:Button ID="btnVer2" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>
                <div class="btns">

                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar2" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar2_Click" />
                   
                    <asp:Button ID="btnRechazar2" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar2_Click" />
                    <asp:Label ID="lblEstado2" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>


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
                         <asp:TextBox ID="txtEvidencia3" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                      <!--  <asp:Label ID="lblEvidencia3" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>-->
                    </div>
                    <asp:Button ID="btnVer3" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>

                <div class="btns">

                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar3" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar3_Click" />
                    <asp:Button ID="btnRechazar3" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar3_Click" />
                    <asp:Label ID="lblEstado3" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>


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
                         <asp:TextBox ID="txtEvidencia4" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                       <!-- <asp:Label ID="lblEvidencia4" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>-->
                    </div>
                    <asp:Button ID="btnVer4" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>

                <div class="btns">

                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar4" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar4_Click" />
                    <asp:Button ID="btnRechazar4" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar4_Click" />
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
                         <asp:TextBox ID="txtEvidencia5" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
<%--                        <asp:Label ID="lblEvidencia5" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>--%>
                    </div>
                    <asp:Button ID="btnVer5" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>

                <div class="btns">

                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar5" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar5_Click" />
                    <asp:Button ID="btnRechazar5" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar5_Click" />
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
                         <asp:TextBox ID="txtEvidencia6" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                        <%--<asp:Label ID="lblEvidencia6" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>--%>
                    </div>
                    <asp:Button ID="btnVer6" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>
                <div class="btns">

                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar6" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar6_Click" />
                    <asp:Button ID="btnRechazar6" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar6_Click" />
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
                         <asp:TextBox ID="txtEvidencia7" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                        <%--<asp:Label ID="lblEvidencia7" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>--%>
                    </div>
                    <asp:Button ID="btnVer7" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>
                <div class="btns">

                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar7" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar7_Click" />
                    <asp:Button ID="btnRechazar7" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar7_Click" />
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
                         <asp:TextBox ID="txtEvidencia8" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                        <%--<asp:Label ID="lblEvidencia8" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>--%>
                    </div>
                    <asp:Button ID="btnVer8" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>
                <div class="btns">
                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar8" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar8_Click" />
                    <asp:Button ID="btnRechazar8" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar8_Click" />
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
                         <asp:TextBox ID="txtEvidencia9" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                       <%-- <asp:Label ID="lblEvidencia9" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>--%>
                    </div>
                    <asp:Button ID="btnVer9" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>
                <div class="btns">
                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar9" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar9_Click" />
                    <asp:Button ID="btnRechazar9" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar9_Click" />
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
                         <asp:TextBox ID="txtEvidencia10" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                        <%--<asp:Label ID="lblEvidencia10" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>--%>
                    </div>
                    <asp:Button ID="btnVer10" runat="server" Text="Ver evidencia" CssClass="btnVer" />
                </div>


                <div class="btns">
                    <i class="fas fa-share" id="iaprobar"></i>
                    <asp:Button ID="btnAprobar10" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnAprobar10_Click" />
                    <asp:Button ID="btnRechazar10" runat="server" Text="Omitir" CssClass="btnRechazar" OnClick="btnRechazar10_Click" />
                    <asp:Label ID="lblEstado10" runat="server" Text="" CssClass="lblEstado"></asp:Label>

                </div>
        </asp:Panel>
    </div>

</asp:Content>
