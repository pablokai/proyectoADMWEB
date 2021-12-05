<%@ Page Title="" Language="C#" MasterPageFile="~/Fiscalizador.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="HistorialFiscalizador.aspx.cs" Inherits="Proyecto_AdminWeb.PagesFiscalizador.HistorialFiscalizador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/historial.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="unoporzona">
        <div class="unocompleto">
            <img src="../Images/search.png" />
            <h1>Búsqueda avanzada de autoevaluaciones</h1>
            <h3>Elija una dependencia</h3>
            <asp:DropDownList ID="ddlDependecia" runat="server" CssClass="ddl">
            </asp:DropDownList>
            <asp:Button runat="server" Text="Filtrar" CommandName="btnFiltrar" ID="btnFiltrar" CssClass="btnFiltrar" OnClick="btnFiltrar_Click" />
            <div class="bloque">
            <asp:Panel ID="Panel1" runat="server" Visible="false">
                <h3>Elija una evaluación</h3>
                <asp:DropDownList ID="ddlEvaluacion" runat="server" CssClass="ddl">
                </asp:DropDownList>
            </asp:Panel>

            <asp:Button runat="server" Text="Buscar" CommandName="btnBuscar" ID="btnBuscar" CssClass="btnBuscar" OnClick="btnBuscar_Click" />
            </div>
        </div>
    </div>

    <asp:Panel ID="Panel2" runat="server">

        <div class="unoportres">
            <div class="seccionuno">
                <img src="../Images/google-forms.png" />
                <h1>Detalle de la evaluación</h1>

                <asp:GridView ID="gvDetalle" runat="server" AutoGenerateColumns="False"
                    CssClass="tabla">
                    <Columns>

                        <asp:BoundField HeaderText="Nombre Periódo" DataField="PERIODO" />
                        <asp:BoundField HeaderText="Id Evaluación" DataField="EVALUACION" />
                        <asp:BoundField HeaderText="Dependencia" DataField="DEPENDENCIA" />

                    </Columns>

                </asp:GridView>
            </div>
            <div class="secciondos">

                <h2>Índice General de Madurez de Control Interno</h2>
                <asp:Label ID="lblNivelIndice" runat="server" Text="Incipiente" CssClass="lblNivelIndice"> </asp:Label>
                <asp:Label ID="lblResultadoIndice" runat="server" Text="20" CssClass="lblResultadoIndice"></asp:Label>
            </div>


        </div>

        <h1 class="titulo">Resultados por componente y eje</h1>


        <div class="fichas">
            <div class="first hero">
                <img class="hero-profile-img" src="../Images/meeting.jpg" alt="">
                <div class="hero-description-bk"></div>
                <div class="hero-logo">
                    <i class="fas fa-users fa-3x"></i>
                </div>
                <div class="hero-description">
                    <p>Ambiente</p>
                </div>
                <div class="hero-date">
                    <asp:Label ID="lblNivel1" runat="server" Text="Incipiente" CssClass="nivel"></asp:Label>
                    <asp:Label ID="lblAmbiente" runat="server" Text="20" CssClass="num"></asp:Label>

                </div>
                <div class="hero-btn">
                    <asp:Button ID="btnAmbiente" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnAmbiente_Click" />

                </div>
            </div>

            <div class="first hero">
                <img class="hero-profile-img" src="../Images/kaleidico.jpg" alt="">
                <div class="hero-description-bk"></div>
                <div class="hero-logo">
                    <i class="fas fa-exclamation-triangle fa-3x"></i>
                </div>
                <div class="hero-description">
                    <p>Riesgos</p>
                </div>
                <div class="hero-date">
                    <asp:Label ID="lblNivel2" runat="server" Text="Incipiente" CssClass="nivel"></asp:Label>
                    <asp:Label ID="lblRiesgos" runat="server" Text="20" CssClass="num"></asp:Label>

                </div>
                <div class="hero-btn">
                    <asp:Button ID="btnRiesgo" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnRiesgo_Click" />

                </div>

            </div>

            <div class="first hero">
                <img class="hero-profile-img" src="../Images/campaign.jpg" alt="">
                <div class="hero-description-bk"></div>
                <div class="hero-logo">
                    <i class="fas fa-handshake fa-3x"></i>
                </div>
                <div class="hero-description">
                    <p>Actividades</p>
                </div>
                <div class="hero-date">
                    <asp:Label ID="lblNivel3" runat="server" Text="Incipiente" CssClass="nivel"></asp:Label>
                    <asp:Label ID="lblActividades" runat="server" Text="20" CssClass="num"></asp:Label>
                </div>
                <div class="hero-btn">
                    <asp:Button ID="btnActividades" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnActividades_Click" />

                </div>

            </div>

            <div class="first hero">
                <img class="hero-profile-img" src="../Images/fotis.jpg" alt="">
                <div class="hero-description-bk"></div>
                <div class="hero-logo">
                    <i class="fas fa-laptop fa-3x"></i>
                </div>
                <div class="hero-description">
                    <p>Sistemas</p>
                </div>
                <div class="hero-date">
                    <asp:Label ID="lblNivel4" runat="server" Text="Incipiente" CssClass="nivel"></asp:Label>
                    <asp:Label ID="lblSistemas" runat="server" Text="20" CssClass="num"></asp:Label>
                </div>
                <div class="hero-btn">
                    <asp:Button ID="btnSistemas" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnSistemas_Click" />

                </div>

            </div>

            <div class="first hero">
                <img class="hero-profile-img" src="../Images/stephen.jpg" alt="">
                <div class="hero-description-bk"></div>
                <div class="hero-logo">
                    <i class="fas fa-chart-pie fa-3x"></i>
                </div>
                <div class="hero-description">
                    <p>Seguimiento</p>
                </div>
                <div class="hero-date">
                    <asp:Label ID="lblNivel5" runat="server" Text="Incipiente" CssClass="nivel"></asp:Label>
                    <asp:Label ID="lblSeguimiento" runat="server" Text="20" CssClass="num"></asp:Label>
                </div>
                <div class="hero-btn">
                    <asp:Button ID="btnSeguimiento" runat="server" Text="Ver detalle" CssClass="btn" OnClick="btnSeguimiento_Click" />

                </div>

            </div>

        </div>

        <asp:Panel ID="tablapanel" runat="server" Visible="false">

            <div class="unoporzona">
                <div class="unocompleto">
                    <asp:Label ID="lblSeccion" runat="server" Text="" CssClass="lblSeccion"></asp:Label>
                    <asp:GridView ID="gvEvaluaciones" runat="server" AutoGenerateColumns="False"
                        OnRowCommand="gvEvaluaciones_RowCommand" CssClass="tabla2">
                        <Columns>
                            <asp:BoundField HeaderText="Puntos" DataField="PUNTOS" />
                            <asp:TemplateField HeaderText="Eje">
                                <ItemTemplate>
                                    <asp:Label ID="lblEje" runat="server" Text='<%# Eval("EJE") %>' CssClass="codigo"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Grado de Madurez" DataField="MADUREZ" />
                            <asp:BoundField HeaderText="Calificación" DataField="CALIFICACION" />
                            <asp:TemplateField HeaderText="Tipo de Atención">
                                <ItemTemplate>
                                    <asp:Label ID="lblAtencion" runat="server" Text='<%# Eval("ATENCION") %>' CssClass="codigo"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Detalle">
                                <ItemTemplate>
                                    <asp:Button runat="server" CommandName="btnVer" Text="Ver resultados..." CssClass="btnAprobar" CommandArgument="<%# Container.DataItemIndex %>" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>

                </div>
            </div>

        </asp:Panel>

    </asp:Panel>



</asp:Content>
