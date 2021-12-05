<%@ Page Title="" Language="C#" MasterPageFile="~/Jefe.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="AsignarEvidencias.aspx.cs" Inherits="Proyecto_AdminWeb.PagesJefe.AsignarEvidencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="../Styles/asignaciones.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Asignaciones de evidencias</h1>

    <div class="cincoporzona">
        <div class="cincozona">
    <div class="a-box">
        <div class="img-container">
            <div class="img-inner">
                <div class="inner-skew">
                    <img src="../Images/meeting.jpg">
                </div>
            </div>
        </div>
        <div class="text-container">
            <h3>Ambiente</h3>
            <div>              
                <asp:Button ID="btnAmbiente" runat="server" Text="Ver" CssClass="btnVer" OnClick="btnAmbiente_Click"  />
            </div>
        </div>
        </div>
            </div>
           <div class="cincozona">
    <div class="a-box">
        <div class="img-container">
            <div class="img-inner">
                <div class="inner-skew">
                    <img src="../Images/kaleidico.jpg">
                </div>
            </div>
        </div>
        <div class="text-container">
            <h3>Riesgos</h3>
            <div>              
                <asp:Button ID="btnRiesgos" runat="server" Text="Ver" CssClass="btnVer" OnClick="btnRiesgos_Click"  />
            </div>
        </div>
        </div>
            </div>

           <div class="cincozona">
    <div class="a-box">
        <div class="img-container">
            <div class="img-inner">
                <div class="inner-skew">
                    <img src="../Images/campaign.jpg">
                </div>
            </div>
        </div>
        <div class="text-container">
            <h3>Actividades</h3>
            <div>              
                <asp:Button ID="btnActividades" runat="server" Text="Ver" CssClass="btnVer" OnClick="btnActividades_Click"  />
            </div>
        </div>
        </div>
            </div>
           <div class="cincozona">
    <div class="a-box">
        <div class="img-container">
            <div class="img-inner">
                <div class="inner-skew">
                    <img src="../Images/fotis.jpg">
                </div>
            </div>
        </div>
        <div class="text-container">
            <h3>Sistemas</h3>
            <div>              
                <asp:Button ID="btnSistemas" runat="server" Text="Ver" CssClass="btnVer" OnClick="btnSistemas_Click" />
            </div>
        </div>
        </div>
            </div>
           <div class="cincozona">
    <div class="a-box">
        <div class="img-container">
            <div class="img-inner">
                <div class="inner-skew">
                    <img src="../Images/stephen.jpg">
                </div>
            </div>
        </div>
        <div class="text-container">
            <h3>Seguimiento</h3>
            <div>              
                <asp:Button ID="btnSeguimiento" runat="server" Text="Ver" CssClass="btnVer" OnClick="btnSeguimiento_Click"  />
            </div>
        </div>
        </div>
            </div>
  </div>

    <asp:Panel ID="Panel1" runat="server" Visible="false">
  
     <div class="blog-card">
        <input type="radio" name="select" id="tap-1" checked >
        <input type="radio" name="select" id="tap-2">
        <input type="radio" name="select" id="tap-3">
         <input type="radio" name="select" id="tap-4">
        <input type="checkbox" id="imgTap">
        <div class="sliders">
            <label for="tap-1" class="tap tap-1"></label>
            <label for="tap-2" class="tap tap-2"></label>
            <label for="tap-3" class="tap tap-3"></label>
             <label for="tap-4" class="tap tap-4"></label>
        </div>
        <div class="inner-part">
            <label for="imgTap" class="img">
                <img class="img-1" src="../Images/work.svg">
            </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="contenido contenido-1">
                <asp:Label ID="lblOpcion1" runat="server" CssClass="titulo" Text="Actividades de seguimiento"></asp:Label>
                <div class="title">
                </div>
                <asp:Button ID="btnOpcion1" runat="server" CssClass="button" OnClick="btnOpcion1_Click" Text="Ver niveles" />
            </div>
        </div>
        <div class="inner-part">
            <label for="imgTap" class="img">
                <img class="img-2" src="../Images/online.svg">
            </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="contenido contenido-2">
                <asp:Label ID="lblOpcion2" runat="server" CssClass="titulo" Text="Actividades de seguimiento"></asp:Label>
                <div class="title">
                </div>
                <asp:Button ID="btnOpcion2" runat="server" CssClass="button" OnClick="btnOpcion2_Click" Text="Ver niveles" />
            </div>
        </div>
        <div class="inner-part">
            <label for="imgTap" class="img">
                <img class="img-3" src="../Images/develop.svg">
            </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="contenido contenido-3">
                <asp:Label ID="lblOpcion3" runat="server" CssClass="titulo" Text="Actividades de seguimiento"></asp:Label>
                <div class="title">
                </div>
                <asp:Button ID="btnOpcion3" runat="server" CssClass="button" OnClick="btnOpcion3_Click" Text="Ver niveles" />
            </div>
        </div>
              <div class="inner-part">
            <label for="imgTap" class="img">
                <img class="img-4" src="../Images/files.svg">
            </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="contenido contenido-4">
                      <asp:Label ID="lblOpcion4" runat="server" CssClass="titulo" Text="Actividades de seguimiento"></asp:Label>
                      <div class="title">
                      </div>
                      <asp:Button ID="btnOpcion4" runat="server" CssClass="button" OnClick="btnOpcion4_Click" Text="Ver niveles" />
                  </div>
        </div>
    </div> 

        </asp:Panel>

     <asp:Panel ID="tablapanel" runat="server" Visible="true">

            <div class="unoporzona">
                <div class="unocompleto">
                    <asp:Label ID="lblSeccion" runat="server" Text="Texto Prueba" CssClass="lblSeccion"></asp:Label>
                    <img src="../Images/search.png" class="icon" />
                     <h3>Seleccione un nivel</h3>
                    <asp:DropDownList ID="ddlNivel" runat="server" CssClass="ddl">
                         <asp:ListItem Text="Seleccione.." Value="0">                         
                        </asp:ListItem>
                        <asp:ListItem Text="Incipiente" Value="Incipiente">                         
                        </asp:ListItem>
                        <asp:ListItem Text="Novato" Value="Novato">                         
                        </asp:ListItem>
                        <asp:ListItem Text="Competente" Value="Competente">                         
                        </asp:ListItem>
                        <asp:ListItem Text="Diestro" Value="Diestro">                         
                        </asp:ListItem>
                        <asp:ListItem Text="Experto" Value="Experto">                         
                        </asp:ListItem>                     
                    </asp:DropDownList>
                     <asp:Button ID="btnFiltrar" runat="server" Text="Buscar"  CssClass="button2" OnClick="btnFiltrar_Click"/>
                    <asp:GridView ID="gvEvaluaciones" runat="server" AutoGenerateColumns="False"
                         CssClass="tabla">
                        <Columns>
                            
                            <asp:TemplateField HeaderText="ID Evidencia">
                                <ItemTemplate>
                                    <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("ID_EVALUACION_EVIDENCIA") %>' CssClass="codigo"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Evidencia" DataField="DESCRIPCION" />
                           
                            <asp:TemplateField HeaderText="Asignar evidencia">
                                <ItemTemplate>     
                                    <asp:CheckBox ID="cbxMarcar" runat="server" Text="" CssClass="cbx" Checked="true" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                     <asp:Panel ID="pnlAsignar" runat="server" Visible="true">
                    <h2>Elija un empleado para asignar las evidencias</h2>
                <asp:DropDownList ID="ddlEmpleados" runat="server" CssClass="ddl2">
               </asp:DropDownList>
                     <asp:Button ID="btnAsignar" runat="server" Text="Asignar"  CssClass="button3" OnClick="btnAsignar_Click"/>
                    </asp:Panel>
                </div>
            </div>

        </asp:Panel>
</asp:Content>
