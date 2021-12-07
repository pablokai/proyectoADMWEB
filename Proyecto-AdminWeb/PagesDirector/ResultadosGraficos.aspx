<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="ResultadosGraficos.aspx.cs" Inherits="Proyecto_AdminWeb.PagesDirector.ResultadosGraficos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="../Styles/graficos.css" />

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", { packages: ['corechart'] });

        google.charts.setOnLoadCallback(drawChart);
        google.charts.setOnLoadCallback(drawChart2);

        google.charts.setOnLoadCallback(drawStuff);
        google.charts.setOnLoadCallback(drawStuff2);
        function drawChart() {
            var data = google.visualization.arrayToDataTable(<%=calcEje(  Int32.Parse(Session["departamento1"].ToString()), Int32.Parse(Session["evaluacion1"].ToString()), Int32.Parse(Session["componente1"].ToString() ))%>);


            var options = {
                title: "",
                width: 1000,
                height: 400,
                bar: { groupWidth: "95%" },
                legend: { position: "none" },
                backgroundColor: '#6846ec',
                is3D: true,
                animation:
                {
                    startup: true,
                    duration: 5000,
                    easing: 'inAndOut'
                },
                hAxis: {
                    minValue: 0,
                    maxValue: 100,
                },
                vAxis: {
                    gridlines: { color: 'transparent' },
                    minValue: 0,
                    maxValue: 100
                },
                chartArea: { left: 150, width: 450 }


            };
            var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
            chart.draw(data, options);
        };

        function drawChart2() {
            var data = google.visualization.arrayToDataTable(<%=calcEje2(Int32.Parse(Session["departamento2"].ToString()), Int32.Parse(Session["evaluacion2"].ToString()), Int32.Parse(Session["componente2"].ToString()))%>);


            var options = {
                title: "",
                width: 600,
                height: 400,
                bar: { groupWidth: "95%" },
                legend: { position: "none" },
                backgroundColor: '#6846ec',
                is3D: true,
                animation:
                {
                    startup: true,
                    duration: 5000,
                    easing: 'inAndOut'
                },
                hAxis: {
                    minValue: 0,
                    maxValue: 100,
                },
                vAxis: {
                    gridlines: { color: 'transparent' },
                    minValue: 0,
                    maxValue: 100
                },
                chartArea: { left: 150, width: 450 }

            };
            var chart2 = new google.visualization.ColumnChart(document.getElementById("columnchart_values2"));
            chart2.draw(data, options);
        };

        //COMPONENTE 1
        function drawStuff() {
            var data = new google.visualization.arrayToDataTable(<%=calcComponente(Int32.Parse(Session["departamento1"].ToString()), Int32.Parse(Session["evaluacion1"].ToString()))%>);

            var options = {
                title: '',
                backgroundColor: '#27292d',
                legend: { position: 'none' },
                animation:
                {
                    startup: true,
                    duration: 5000,
                    easing: 'inAndOut'
                },
                vAxis: {
                    minValue: 0,
                    maxValue: 100

                },
                hAxis: {
                    gridlines: { color: 'transparent' },
                     minValue: 0,
                    maxValue: 100
                }
            };

            var chart3 = new google.visualization.BarChart(document.getElementById('top_x_div'));
            chart3.draw(data, options);
        };

       //COMPONENTE 2

        function drawStuff2() {
            var data = new google.visualization.arrayToDataTable(<%=calcComponente2(Int32.Parse(Session["departamento2"].ToString()), Int32.Parse(Session["evaluacion2"].ToString()))%>);

            var options = {
                title: '',
                backgroundColor: '#27292d',
                legend: { position: 'none' },
                animation:
                {
                    startup: true,
                    duration: 5000,
                    easing: 'inAndOut'
                },
                vAxis: {
                    minValue: 0,
                    maxValue: 100

                },
                hAxis: {
                    gridlines: { color: 'transparent' },
                    minValue: 0,
                    maxValue: 100
                }
            };
            var chart4 = new google.visualization.BarChart(document.getElementById('top_x_div2'));
            chart4.draw(data, options);
        };

        //INDICE 1
        google.charts.setOnLoadCallback(drawIndice1);


        function drawIndice1() {
            var data = google.visualization.arrayToDataTable(<%= indice(Int32.Parse(Session["departamento1"].ToString()), Int32.Parse(Session["evaluacion1"].ToString()))%>);

            var options = {
                pieHole: 0.5,
                is3D: true,
                pieSliceText: 'none',
                slices: {
                    0: { color: '#6846ec' },
                    1: { color: 'transparent' }
                },
                legend: 'none',

            };

            var chart = new google.visualization.PieChart(document.getElementById('donut_single'));
            chart.draw(data, options);

        }

        //INDICE 2
        google.charts.setOnLoadCallback(drawIndice2);

        function drawIndice2() {
            var data = google.visualization.arrayToDataTable(<%= indice2(Int32.Parse(Session["departamento2"].ToString()), Int32.Parse(Session["evaluacion2"].ToString())) %>);

            var options = {
                pieHole: 0.5,
                is3D: true,
                pieSliceText: 'none',
                slices: {
                    0: { color: '#6846ec' },
                    1: { color: 'transparent' }
                },
                legend: 'none',

            };

            var chart2 = new google.visualization.PieChart(document.getElementById('donut_single2'));
            chart2.draw(data, options);
        }


    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Vistas gráficas comparativas por evaluación</h1>


    <div class="dosporzona">
        <div class="derecha">
            <img src="../Images/process.svg" />
            <h1>Búsqueda por evaluación</h1>

            <h3>Elija una dependencia</h3>
            <asp:DropDownList ID="ddlDependencia" runat="server" CssClass="ddl">
            </asp:DropDownList>
            <asp:Button runat="server" Text="Filtrar" ID="btnDepartamento" CssClass="btnFiltrar" OnClick="btnDepartamento_Click" />
            <div class="bloque">
                <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <h3>Elija una evaluación</h3>
                    <asp:DropDownList ID="ddlEvaluacion" runat="server" CssClass="ddl">
                    </asp:DropDownList>

                    <asp:Button runat="server" Text="Buscar" CommandName="btnBuscar" ID="btnBuscar" CssClass="btnBuscar" OnClick="btnBuscar_Click" />
                </asp:Panel>


            </div>

        </div>
        <div class="izquierda">
            <img src="../Images/charts.svg" />
            <h1>Búsqueda por evaluación</h1>

            <h3>Elija una dependencia</h3>
            <asp:DropDownList ID="ddlDependencia2" runat="server" CssClass="ddl">
            </asp:DropDownList>
            <asp:Button runat="server" Text="Filtrar" ID="btnDepartamento2" CssClass="btnFiltrar" OnClick="btnDepartamento2_Click" />
            <div class="bloque">
                <asp:Panel ID="Panel2" runat="server" Visible="false">
                    <h3>Elija una evaluación</h3>
                    <asp:DropDownList ID="ddlEvaluacion2" runat="server" CssClass="ddl">
                    </asp:DropDownList>

                    <asp:Button runat="server" Text="Buscar" CommandName="btnBuscar" ID="btnBuscar2" CssClass="btnBuscar" OnClick="btnBuscar2_Click" />
                </asp:Panel>


            </div>
        </div>

    </div>



    <div class="dosporzona2">

        <div class="derecha2" id="divIndice1" runat="server">
                <div id="donut_single"></div>

                <h2>Indice General de Madurez</h2>

                <asp:Label ID="lblNivelIndice" runat="server" Text="Incipiente" CssClass="lblNivelIndice"> </asp:Label>
                <asp:Label ID="lblResultadoIndice" runat="server" Text="20" CssClass="lblResultadoIndice"></asp:Label>
        </div>



        <div class="izquierda2" id="divIndice2" runat="server">

                <div id="donut_single2"></div>
                <h2>Índice General de Madurez</h2>
                <asp:Label ID="lblNivelIndice2" runat="server" Text="Incipiente" CssClass="lblNivelIndice"> </asp:Label>
                <asp:Label ID="lblResultadoIndice2" runat="server" Text="20" CssClass="lblResultadoIndice"></asp:Label>
        </div>


    </div>


    <h1 style="margin-top: 0;" id="title" runat="server" >Gráficos por componente y eje</h1>

    <div class="dosporzona">

        <div class="derecha" id="divComponente1" runat="server">
                <i class="fas fa-chart-pie fa-3x"></i>
                <h2>Resultados por componente</h2>

                <div id="top_x_div"></div>
        </div>
        <div class="izquierda"  id="divComponente2" runat="server" >
                <i class="fas fa-chart-pie fa-3x"></i>
                <h2>Resultados por componente</h2>
                <div id="top_x_div2"></div>
        </div>
    </div>

    <div class="dosporzona">



        <div class="derecha" id="divFiltro1" runat="server">
                <i class="fas fa-filter fa-3x" style="color: #6846ec;"></i>
                <h2 class="titulo">Filtro por componente</h2>
                <asp:DropDownList ID="ddlNivel" runat="server" CssClass="ddl2">
                    <asp:ListItem Text="Seleccione..." Value="0">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Ambiente" Value="1">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Riesgos" Value="2">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Actividades" Value="3">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Sistemas" Value="4">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Seguimiento" Value="5">                         
                    </asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnFiltrar" runat="server" Text="Ver gráficos" CssClass="btnFiltrar2" OnClick="btnFiltrar_Click" />
        </div>


        <div class="izquierda" id="divFiltro2" runat="server">
                <i class="fas fa-filter fa-3x" style="color: #6846ec;"></i>
                <h2 class="titulo">Filtro por componente</h2>
                <asp:DropDownList ID="ddlNivel2" runat="server" CssClass="ddl2">
                    <asp:ListItem Text="Seleccione..." Value="0">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Ambiente" Value="1">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Riesgos" Value="2">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Actividades" Value="3">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Sistemas" Value="4">                         
                    </asp:ListItem>
                    <asp:ListItem Text="Seguimiento" Value="5">                         
                    </asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnFiltrar2" runat="server" Text="Ver gráficos" CssClass="btnFiltrar2" OnClick="btnFiltrar2_Click" />
        </div>


    </div>


    <div class="dosporzona3">


        <div class="derecha3" id="divEje1" runat="server">
                <i class="fas fa-chart-line fa-4x"></i>
                <h2>Resultados por ejes</h2>
                <div id="columnchart_values"></div>
        </div>


        <div class="izquierda3" id="divEje2" runat="server">
                <i class="fas fa-chart-line fa-4x"></i>
                <h2>Resultados por ejes</h2>
                <div id="columnchart_values2"></div>
        </div>


    </div>
</asp:Content>
