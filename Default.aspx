<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dashboard_Chatbot._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--  script Google charts--%>
    <!--Load the AJAX API-->

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", { packages: ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ["Mês", "Quantidade", { role: "style" }],
                ["Jan", 122, "color: #e5e4e2"],
                ["Fev", 149, "color: #e5e410"],
                ["Mar", 190, "color: #e5e430"],
                ["Abr", 245, "color: #e5e442"],
                ["Mai", 394, "color: #e5e462"],
                ["Jun", 169, "color: #e5e5e2"],
                ["Jul", 190, "color: #e5e782"],
                ["Ago", 215, "color: silver"],
                ["Set", 245, "color: #e55642"],
                ["Out", 294, "color: #e56482"],
                ["Nov", 104, "color: gray"],
                ["Dez", 630, "color: gold"]
            ]);

            var view = new google.visualization.DataView(data);
            view.setColumns([0, 1,
                {
                    calc: "stringify",
                    sourceColumn: 1,
                    type: "string",
                    role: "annotation"
                },
                2]);

            var options = {
                bar: { groupWidth: "65%" },
                legend: { position: "none" }
            };
            var chart = new google.visualization.ColumnChart(document.getElementById("columnchart1"));
            chart.draw(view, options);

        }
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart2);

        function drawChart2() {
            var data = google.visualization.arrayToDataTable([
                ["Mês", "Quantidade de atendimento"],
                ["Jan", 122],
                ["Fev", 149],
                ["Mar", 190],
                ["Abr", 245],
                ["Mai", 394],
                ["Jun", 169],
                ["Jul", 190],
                ["Ago", 215],
                ["Set", 245],
                ["Out", 294],
                ["Nov", 104],
                ["Dez", 630]
            ]);

            var options = {
                title: 'Company Performance',
                curveType: 'function',
                legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

            chart.draw(data, options);
        }
    </script>
    <div class="jumbotron">
        <div class="card">
            <div class="card-header text-center">
                <h3>Indicadores de atendimento Clara</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Total de atendimentos abertos <i class="far fa-clock"></i></h5>
                                <h3>1200</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Total de atendimentos finalizados <i class="fas fa-check"></i></h5>
                                <h3>920</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Total de atendimentos no momento <i class="far fa-list-alt"></i></h5>
                                <h3>44</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br />
        <br />
        <div class="card">
            <div class="card-header text-center">
                <h3>Indicador de atendimento mensal - Colunas</h3>
            </div>
            <div class="card-body">
                <div id="columnchart1"></div>
            </div>
        </div>
        <br />
        <br />
        <div class="card">
            <div class="card-header text-center" >
               <h3>Indicador de atendimento mensal - Linhas</h3>
            </div>
            <div class="card-body">
                <div id="curve_chart"></div>
            </div>
        </div>
    </div>

</asp:Content>
