<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="AperturayCierre.aspx.cs" Inherits="Proyecto_AdminWeb.PagesDirector.AperturayCierre" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Styles/apertura.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="unoporzona">
        <div class="unocompleto">
            <h1>Apertura y cierre de periodos de evaluación</h1>
            <asp:GridView ID="gvPeriodos" runat="server" AutoGenerateColumns="False"
                OnRowCommand="gvPeriodos_RowCommand" CssClass="tabla">
                <Columns>
                    <asp:TemplateField HeaderText="ID Periodo">
                        <ItemTemplate>
                            <asp:Label ID="lblPeriodo" runat="server" Text='<%# Eval("IDPERIODO") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Descripción" DataField="DESCRIPCION" />
                    <asp:BoundField HeaderText="Fecha de Inicio" DataField="FECHA_INICIO" />
                    <asp:BoundField HeaderText="Fecha Finalización" DataField="FECHA_FINAL" />
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:Label ID="lblEstado" runat="server" Text='<%# Eval("ESTADO") %>' CssClass="estado"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Detalle">
                        <ItemTemplate>
                            <asp:Button runat="server" CommandName="btnDetalle" Text="Ver más..." CssClass="btnAprobar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>


            </asp:GridView>

        </div>
    </div>

    <div class="unoportres">
        <div class="seccionuno">
            <img src="../Images/schedule.png" />
            <h1>Empezar un nuevo periódo de evaluación</h1>
            <input type="text" runat="server" id="descripcion" placeholder="Ingrese un título para el periódo" />
            <input type="date" runat="server" id="fechainicio" />
            <input type="date" runat="server" id="fechafinal" />
            
            <asp:Button runat="server" Text="Activar un nuevo periodo y cerrar actual" CommandName="btnActivar" CssClass="btnActivar" ID="btnAbrir" OnClick="btnAbrir_Click" />
            <p>*El periódo activo será cerrado automáticamente</p>
        </div>
        <div class="secciondos">

            <div class="alinear">
                <i class="fas fa-building fa-5x"></i>
                <h1>Número de departamentos bajo evaluación</h1>
                <asp:Label ID="lblPendientes" runat="server" Text="6" CssClass="num"></asp:Label>
            </div>
            <h1>Evaluación en progreso</h1>
            <div class="progress">
                 <span class="progress-bar" style="width: 75%"></span>
            </div>
        </div>


    </div>


</asp:Content>
