<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="AsignarRoles.aspx.cs" Inherits="Proyecto_AdminWeb.PagesAdmin.AsginarRoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/asignarrol.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="tresporzona">
        <div class="zona">
            <div class="alinear">
                <i class="fas fa-spinner fa-5x"></i>
                <h1>Pendientes</h1>
                <asp:Label ID="lblPendientes" runat="server" Text="" CssClass="num"></asp:Label>
            </div>
        </div>

        <div class="zona">
            <div class="alinear">
                <i class="fas fa-check-square fa-5x"></i>
                <h1>Aprobadas</h1>
                <asp:Label ID="lblAprobados" runat="server" Text="64" CssClass="num"></asp:Label>
            </div>
        </div>
        <div class="zona">
            <div class="alinear">
                <i class="fas fa-window-close fa-5x"></i>
                <h1>Rechazadas</h1>
                <asp:Label ID="lblRechazados" runat="server" Text="21" CssClass="num"></asp:Label>
            </div>
        </div>
    </div>

    <div class="unoporzona">
        <div class="unocompleto">
            <h1>Solicitudes de asignación de rol</h1>
            <asp:GridView ID="gvSolicitudes" runat="server" AutoGenerateColumns="False"
                OnRowCommand="gvSolicitudes_RowCommand" CssClass="tabla">
                <Columns>
                    <asp:TemplateField HeaderText="Codigo" >
                        <ItemTemplate>
                            <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("Codigo") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Id Usuario" >
                        <ItemTemplate>
                            <asp:Label ID="lblUsuario" runat="server" Text='<%# Eval("IDUSUARIO") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Rol" >
                        <ItemTemplate>
                            <asp:Label ID="lblRol" runat="server" Text='<%# Eval("ROL") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Area" >
                        <ItemTemplate>
                            <asp:Label ID="lblArea" runat="server" Text='<%# Eval("AREA") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Departamento" >
                        <ItemTemplate>
                            <asp:Label ID="lblDepartamento" runat="server" Text='<%# Eval("DEPARTAMENTO") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField HeaderText="Estado" DataField="ESTADO" />
                    <asp:TemplateField HeaderText="Aprobar solicitud">
                        <ItemTemplate >
                            <asp:Button runat="server" CommandName="btnAceptar" Text="Aprobar" CssClass="btnAprobar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rechazar solicitud">
                        <ItemTemplate >
                            <asp:Button runat="server" CommandName="btnRechazar" Text="Rechazar" CssClass="btnRechazar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </div>


</asp:Content>
