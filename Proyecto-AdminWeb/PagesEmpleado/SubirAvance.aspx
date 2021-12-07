<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="SubirAvance.aspx.cs" Inherits="Proyecto_AdminWeb.PagesEmpleado.SubirAvance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
               <link rel="stylesheet" href="../Styles/subiravance.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="indicador">Carga de puntos de mejora </h1>



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
                <h1>Aprobados</h1>
                <asp:Label ID="lblAprobados" runat="server" Text="3" CssClass="num"></asp:Label>
            </div>
        </div>
        <div class="zona">
            <div class="alinear">
                <i class="fas fa-window-close fa-5x"></i>
                <h1>Rechazados</h1>
                <asp:Label ID="lblRechazados" runat="server" Text="1" CssClass="num"></asp:Label>
            </div>
        </div>
    </div>

    <div class="unoporzona">
        <div class="unocompleto">
            <h1>Puntos de mejora pendientes</h1>
            <asp:GridView ID="gvTablaevit" runat="server" AutoGenerateColumns="False"
                OnRowCommand="gvTablaevit_RowCommand" CssClass="tabla">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("ID_MEJORA") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="ID Evidencia" >
                        <ItemTemplate>
                            <asp:Label ID="lblEvidencia" runat="server" Text='<%# Eval("ID_EVALUACION_EVIDENCIA") %>' ></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:BoundField HeaderText="Evidencia solicitada" DataField="PREGUNTA" />
                     <asp:TemplateField HeaderText="Fecha límite de realización" >
                        <ItemTemplate>
                            <asp:Label ID="lblFecha" runat="server" Text='<%# Eval("FECHA_MEJORA") %>' ></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Subir evidencia">
                        <ItemTemplate >
                            <asp:Button runat="server" CommandName="btnSubir" Text="Subir" CssClass="btnAprobar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
  

    <asp:Panel ID="Panel1" runat="server" Visible ="false">
        <div class="unocompleto">

            <i class="fas fa-file-import fa-4x"></i>
            <div class="pregunta">
                <h2 class="punto">Aportar avance</h2>

                 <div class="id">
                         <h3>ID de Evidencia </h3>
                         <asp:Label ID="lblID1" runat="server" Text="4323" CssClass="lblID"></asp:Label>
                         
                  </div>
            </div>

            <div class="text">
                <asp:TextBox ID="txtEvidencia" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="btns">
                <p>*Su evidencia será enviada al Fiscalizador</p>
                <asp:Button ID="btnsubir" runat="server" Text="Enviar" CssClass="btnAprobar" OnClick="btnsubir_Click" />
            </div>
        </div>
    </asp:Panel>

    </div>
</asp:Content>
