<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="HistorialEvaluaciones.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="Proyecto_AdminWeb.PagesDirector.HistorialEvaluaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/historial.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="unoporzona">
        <div class="unocompleto">
            <img src="../Images/search.png"/>
            <h1>Búsqueda avanzada de autoevaluaciones</h1>
            <h3>Elija una dependencia</h3>
            <asp:DropDownList ID="ddlDependecia" runat="server" CssClass="ddl">
                <asp:ListItem>Seleccione...</asp:ListItem>
                <asp:ListItem>Recursos Humanos</asp:ListItem>
            </asp:DropDownList>
            <h3>Elija una evaluación</h3>
            <asp:DropDownList ID="ddlEvaluacion" runat="server"  CssClass="ddl">
                <asp:ListItem>Seleccione...</asp:ListItem>
                <asp:ListItem>1234553</asp:ListItem>
            </asp:DropDownList>
           
            <asp:Button runat="server" Text="Buscar" CommandName="btnBuscar" CssClass="btnBuscar" />

        </div>
    </div>

        <div class="unoportres">
        <div class="seccionuno">
            <img src="../Images/google-forms.png"/>
           <h1>Detalle de la evaluación</h1>

            <asp:GridView ID="gvDetalle" runat="server" AutoGenerateColumns="False"
               CssClass="tabla">
                <Columns>
                    
                    <asp:BoundField HeaderText="Id Periódo" DataField="PERIODO" />
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
            <asp:Button ID="Button1" runat="server" Text="Ver detalle" CssClass="btn" OnClick="Button1_Click" />

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
            <asp:Button ID="Button2" runat="server" Text="Ver detalle" CssClass="btn" OnClick="Button2_Click" />

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
            <asp:Button ID="Button3" runat="server" Text="Ver detalle" CssClass="btn" OnClick="Button3_Click" />

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
            <asp:Button ID="Button4" runat="server" Text="Ver detalle" CssClass="btn" OnClick="Button4_Click" />

        </div>

    </div>

        </div>

    <asp:Panel ID="panel" runat="server" Visible="false">

    <div class="unoporzona">
        <div class="unocompleto">
            <asp:Label ID="lblSeccion" runat="server" Text="" CssClass="lblSeccion"></asp:Label>
            <asp:GridView ID="gvEvaluaciones" runat="server" AutoGenerateColumns="False"
                OnRowCommand="gvEvaluaciones_RowCommand" CssClass="tabla2" >
                <Columns>
                     <asp:BoundField HeaderText="Puntos" DataField="PUNTOS" />
                    <asp:BoundField HeaderText="Componente" DataField="COMPONENTE" />
                    <asp:BoundField HeaderText="Grado de Madurez" DataField="MADUREZ" />
                    <asp:BoundField HeaderText="Calificación" DataField="CALIFICACION" />
                    <asp:TemplateField HeaderText="Tipo de Atención">
                        <ItemTemplate>
                            <asp:Label ID="lblAtencion" runat="server" Text='<%# Eval("Atencion") %>' CssClass="estado"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>              
                </Columns>

            </asp:GridView>

        </div>
    </div>

        </asp:Panel>





</asp:Content>
