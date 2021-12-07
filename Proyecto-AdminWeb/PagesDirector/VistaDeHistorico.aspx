<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="VistaDeHistorico.aspx.cs" Inherits="Proyecto_AdminWeb.PagesDirector.VistaDeHistorico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="../Styles/VistaDeHistorico.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="titulo">Histórico de avances </h2>
    <div class="unoporzona2">
        <div class="unocompleto2">
            <h4>Cedula del encargado</h4>
			<input id="txtCedula" type="text" runat="server" class="box20" value="" placeholder=""  />
            <asp:Button ID="btnBuscar" Text="Buscar" runat="server" CssClass="btnboxx2" OnClick="btnBuscar_Click" />
            <asp:GridView ID="gvVistHistorico" runat="server" AutoGenerateColumns="False"
                OnRowCommand="gvVistHistorico_RowCommand" CssClass="tabla">
                <Columns>
                    <asp:TemplateField HeaderText="ID" >
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Pregunta de evaluación" >
                        <ItemTemplate>
                            <asp:Label ID="lblPREGUNTA" runat="server" Text='<%# Eval("PREGUNTA") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
<%--                      <asp:TemplateField HeaderText="Evidencia" >
                        <ItemTemplate>
                            <asp:Label ID="lblEvidencia" runat="server" Text='<%# Eval("EVIDENCIA") %>' CssClass="codigox"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                       <asp:TemplateField HeaderText="Estado" >
                        <ItemTemplate>
                            <asp:Label ID="lblESTADO" runat="server" Text='<%# Eval("ESTADO") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Encargado" >
                        <ItemTemplate>
                            <asp:Label ID="lblENCARGADO" runat="server" Text='<%# Eval("ENCARGADO") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Nivel" >
                        <ItemTemplate>
                            <asp:Label ID="lblNIVEL" runat="server" Text='<%# Eval("NIVEL") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Eje" >
                        <ItemTemplate>
                            <asp:Label ID="lblEJE" runat="server" Text='<%# Eval("EJE") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                           <asp:TemplateField HeaderText="Componente" >
                        <ItemTemplate>
                            <asp:Label ID="lblCOMPONENTE" runat="server" Text='<%# Eval("COMPONENTE") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Fecha" >
                        <ItemTemplate>
                            <asp:Label ID="lblUsuario2" runat="server" Text='<%# Eval("FECHA") %>' CssClass="codigo"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      
                    <asp:TemplateField HeaderText="Revisado">
                        <ItemTemplate >
                            <asp:Button runat="server" CommandName="btnRevizado" Text="Aprobar" CssClass="btnAprobar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                         <asp:TemplateField HeaderText="Ver evidencia">
                        <ItemTemplate >
                            <asp:Button runat="server" CommandName="btnevidencia" Text="Ver" CssClass="btnAprobar" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>


            </asp:GridView>
            </div>
                </div>
</asp:Content>
