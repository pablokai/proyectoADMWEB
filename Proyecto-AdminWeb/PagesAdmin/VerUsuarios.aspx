<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="VerUsuarios.aspx.cs" Inherits="Proyecto_AdminWeb.PagesAdmin.VerUsuarios" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
    <asp:Chart ID="Chart1" runat="server" Height="300px" Width="400px">
        <Titles>
        <asp:Title ShadowOffset="3" Name="Items" />
    </Titles>
    <Legends>
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
    </Legends>
    <Series>
        <asp:Series Name="Default" />
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
    </ChartAreas>
    </asp:Chart>
  
</asp:Content>
