<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="SubirEvedencia.aspx.cs" Inherits="Proyecto_AdminWeb.PagesEmpleado.SubirEvedencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link rel="stylesheet" href="../Styles/subirevidencia.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="unoporzona">
        <div class="unocompleto">
            <h1>Asignación de evidencias </h1>
            <asp:GridView ID="gvTablaevit" runat="server" AutoGenerateColumns="False"
                OnRowCommand="gvTablaevit_RowCommand" CssClass="tabla">
                <Columns>
                    <asp:TemplateField HeaderText="ID EVALUACION PUNTO" >
                        <ItemTemplate>
                            <asp:Label ID="lblID_E_P" runat="server" Text='<%# Eval("ID_EVALUACION_PUNTO") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="ID EVALUACION EVIDENCIA" >
                        <ItemTemplate>
                            <asp:Label ID="lblID_E_E" runat="server" Text='<%# Eval("ID_EVALUACION_EVIDENCIA") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Pregunta" >
                        <ItemTemplate>
                            <asp:Label ID="lblUsuario" runat="server" Text='<%# Eval("Pregunta") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      
                    <asp:TemplateField HeaderText="Subir evidencia">
                        <ItemTemplate >
                            <asp:Button runat="server" CommandName="btnevidencia" Text="Subir" CssClass="btnAprobar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </div>

    <asp:Panel ID="Panel1" runat="server" CssClass="unocompleto" Visible ="false">
            <div>
                
                <div class="pregunta">
                    
                    <h2 class="punto">Agregar evidencia</h2>
                </div>
                <asp:Label ID="lblPregunta1" runat="server" Text="" CssClass="lblEvidencia"></asp:Label>
                <div class="link">
                    <div class="text">
                    <asp:TextBox ID="txtEvidencia3" runat="server" Text="" CssClass="lblEvidencia" TextMode="MultiLine" ></asp:TextBox>
                    </div>
                </div>
                <hr />
                <div class="btns">
                    <asp:Button ID="btnsubir" runat="server" Text="Agregar" CssClass="btnAprobar" OnClick="btnsubir_Click"/>
              </div>
            </div>
        </asp:Panel>
</asp:Content>
