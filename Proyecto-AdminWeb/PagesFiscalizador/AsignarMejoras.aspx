<%@ Page Title="" Language="C#" MasterPageFile="~/Fiscalizador.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="AsignarMejoras.aspx.cs" Inherits="Proyecto_AdminWeb.PagesDirector.AsignarMejoras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/asignarmejora.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Asignaciones de mejoras</h1>


    <div class="unoportres">
        <div class="seccionuno">
            <img src="../Images/pixel1.svg" />
            <h1>Búsqueda por evaluación</h1>

            <h3>Elija una dependencia</h3>
            <asp:DropDownList ID="ddlDependencia" runat="server" CssClass="ddl">
            </asp:DropDownList>
            <asp:Button runat="server" Text="Filtrar"  ID="btnDepartamento" CssClass="btnFiltrar" OnClick="btnDepartamento_Click" />
            <div class="bloque">
                <asp:Panel ID="Panel2" runat="server" Visible="false">
                    <h3>Elija una evaluación</h3>
                    <asp:DropDownList ID="ddlEvaluacion" runat="server" CssClass="ddl">
                    </asp:DropDownList>

                    <asp:Button runat="server" Text="Buscar" CommandName="btnBuscar" ID="btnBuscar" CssClass="btnBuscar" OnClick="btnBuscar_Click" />
                </asp:Panel>

                
            </div>
            
        </div>
        <div class="secciondos">
            <i class="fas fa-check-square fa-5x"></i>
            <h2>Total de evaluaciones</h2>
            <asp:Label ID="lblTotalEvaluaciones" runat="server" Text="6" CssClass="porcentaje"></asp:Label>
        </div>
    </div>


    <asp:Panel ID="Panel3" runat="server">
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
        </asp:Panel>

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
                    <div class="scroll">
                    <asp:GridView ID="gvEvaluaciones" runat="server" AutoGenerateColumns="False"
                         CssClass="tabla" OnRowCommand="gvEvaluaciones_RowCommand">
                        <Columns>
                            
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("ID_EVALUACION_EVIDENCIA") %>' CssClass="codigo"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Punto" DataField="DESCRIPCION" />
                           <asp:BoundField HeaderText="Evidencia" DataField="EVIDENCIA" />
                              <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="lblEstado" runat="server" Text='<%# Eval("ESTADO") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mejora">
                                <ItemTemplate>     
                                    <asp:LinkButton ID="btnAsignar" CommandName="btnMejora" runat="server" OnClick="btnAsignar_Click1" CssClass="btnAprobar" Text="Asignar" CommandArgument="<%# Container.DataItemIndex %>" ><i class="fas fa-arrow-right"></i>Asignar</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                        </div>

                     <asp:Panel ID="pnlAsignar" runat="server" Visible="true">
                  
                    </asp:Panel>
                </div>
            </div>
           </asp:Panel>

           <asp:Panel ID="Panel4" runat="server" Visible="false">
         <div class="unoporzona2">
           
                 <div class="unocompleto2">

                     <i class="far fa-calendar-alt fa-3x"></i>
                     <div class="id">
                         <h3>ID de Evidencia </h3>
                         <asp:Label ID="lblID1" runat="server" Text="4323" CssClass="lblID"></asp:Label>
                         
                     </div>
                   <div class="left">
                 <h2>Elija un empleado y una fecha de realización</h2>
                 <asp:DropDownList ID="ddlEmpleados" runat="server" CssClass="ddl2">
                 </asp:DropDownList>
                <input type="date" runat="server" id="txtFecha" class="fecha" />
                </div>
                 <div class="right">
                     <h2>Observaciones</h2>
                     <asp:TextBox ID="txtObservacion" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine"  ></asp:TextBox>   
                  </div>
                 <asp:Button ID="btnAsignarMejora" runat="server" Text="Asignar" CssClass="button3" OnClick="btnAsignarMejora_Click" />

                     <asp:ScriptManager ID="ScriptManager1" runat="server">
                     </asp:ScriptManager>

                     <ajaxToolkit:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl11" TargetControlID="btnAsignarMejora"
                         CancelControlID="Button2" BackgroundCssClass="Background">
                     </ajaxToolkit:ModalPopupExtender>
                     <asp:Panel ID="Panl11" runat="server" CssClass="Popup" align="center" Style="display: none">
                         <iframe style="width: 500px; height: 250px;" id="irm1" src="EnviarMejora.aspx" runat="server"></iframe>
                         <br />
                          <asp:Button ID="btnEnviar" runat="server" Text="Terminar" CssClass="btnEnviar2" OnClick="btnEnviar_Click" />
                         <asp:Button ID="Button2" runat="server" Text="Cerrar" CssClass="btnCerrar" OnClick="Button2_Click" />

                    </asp:Panel>               
                </div>      
         </div>
    </asp:Panel>

   
</asp:Content>
