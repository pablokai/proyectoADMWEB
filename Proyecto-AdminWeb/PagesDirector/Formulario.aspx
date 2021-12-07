<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Proyecto_AdminWeb.PagesDirector.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/evidenciasmachote.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1 class="titulo">Preguntas del machote por nivel</h1>
    <div class="fichas">
        <div class="first hero">
            <img class="hero-profile-img" src="../Images/meeting.jpg" alt="">
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
            <img class="hero-profile-img" src="../Images/kaleidico.jpg" alt="">
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
            <img class="hero-profile-img" src="../Images/campaign.jpg" alt="">
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
            <img class="hero-profile-img" src="../Images/fotis.jpg" alt="">
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
            <img class="hero-profile-img" src="../Images/stephen.jpg" alt="">
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

        <!--BOTÓN AGREGAR-->
        <asp:Panel ID="Panel11" runat="server" Visible="true">
            <div class="unocompleto">
                <asp:Button ID="Nuevo" runat="server" Text="Agregar nueva pregunta" CssClass="btnNuevo" OnClick="Nuevo_Click"/>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel1" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo1" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox1" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta1" runat="server" Text="" CssClass="lblPregunta"></asp:Label>
                <div class="link">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="TB1"></asp:TextBox>
                </div>
                <div class="btns">
                    <asp:Button ID="btnAprobar1" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar1"/>
                    <asp:Button ID="btnRechazar1" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar1"/>
                    <asp:Label ID="lblEstado1" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel2" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo2" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox2" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta2" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="TB1"></asp:TextBox>
                </div>
                <div class="btns">
                    <asp:Button ID="btnAprobar2" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar2"/>
                    <asp:Button ID="btnRechazar2" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar2"/>
                    <asp:Label ID="lblEstado2" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel3" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo3" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox3" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>

                <asp:Label ID="lblPregunta3" runat="server" Text="" CssClass="lblPregunta"></asp:Label>
                <div class="link">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="TB1"></asp:TextBox>
                </div>

                <div class="btns">
                    <asp:Button ID="btnAprobar3" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar3"/>
                    <asp:Button ID="btnRechazar3" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar3"/>
                    <asp:Label ID="lblEstado3" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>


        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel4" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo4" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox4" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta4" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="TB1"></asp:TextBox>
                </div>

                <div class="btns">
                    <asp:Button ID="btnAprobar4" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar4"/>
                    <asp:Button ID="btnRechazar4" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar4"/>
                    <asp:Label ID="lblEstado4" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel5" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo5" runat="server" Text="Obligatoria" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox5" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta5" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="TB1"></asp:TextBox>
                </div>

                <div class="btns">
                    <asp:Button ID="btnAprobar5" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar5"/>
                    <asp:Button ID="btnRechazar5" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar5"/>
                    <asp:Label ID="lblEstado5" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel6" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo6" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox6" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta6" runat="server" Text="" CssClass="lblPregunta"></asp:Label>
                <div class="link">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="TB1"></asp:TextBox>
                </div>
                <div class="btns">
                    <asp:Button ID="btnAprobar6" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar6"/>
                    <asp:Button ID="btnRechazar6" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar6"/>
                    <asp:Label ID="lblEstado6" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel7" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo7" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox7" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta7" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="TB1"></asp:TextBox>
                </div>
                <div class="btns">
                    <asp:Button ID="btnAprobar7" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar7"/>
                    <asp:Button ID="btnRechazar7" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar7"/>
                    <asp:Label ID="lblEstado7" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel8" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo8" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox8" CssClass="CB" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta8" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="TB1"></asp:TextBox>
                </div>
                <div class="btns">
                    <asp:Button ID="btnAprobar8" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar8"/>
                    <asp:Button ID="btnRechazar8" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar8"/>
                    <asp:Label ID="lblEstado8" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel9" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo9" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox9" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>

                <asp:Label ID="lblPregunta9" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="TB1"></asp:TextBox>
                </div>
                <div class="btns">
                    <asp:Button ID="btnAprobar9" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar9"/>
                    <asp:Button ID="btnRechazar9" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar9"/>
                    <asp:Label ID="lblEstado9" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!--PANEL PREGUNTA-->
        <asp:Panel ID="Panel10" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                <asp:Label ID="lblTitulo10" runat="server" Text="Obligatorio" CssClass="lblTitulo"></asp:Label>
                <asp:CheckBox ID="CheckBox10" runat="server" />
                <div class="pregunta">
                    <i class="far fa-file-alt"></i>
                    <h2 class="punto">Agregar pregunta</h2>
                </div>
                <asp:Label ID="lblPregunta10" runat="server" Text="" CssClass="lblPregunta"></asp:Label>

                <div class="link">
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="TB1"></asp:TextBox>
                </div>
                <div class="btns">
                    <asp:Button ID="btnAprobar10" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="Aprobar10"/>
                    <asp:Button ID="btnRechazar10" runat="server" Text="Modificar" CssClass="btnRechazar" OnClick="Modificar10"/>
                    <asp:Label ID="lblEstado10" runat="server" Text="" CssClass="lblEstado"></asp:Label>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
