<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dashboard_Chatbot._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--  script Google charts--%>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        // Load the Visualization API and the corechart package.
        google.charts.load('current', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Topping');
            data.addColumn('number', 'Slices');
            data.addRows([
                ['Jan', <%= jan%> ],
                ['Fev', 12],
                ['Mar', 15],
                ['Abr', 16],
                ['Mai', 28],
                ['Jun', 22],
                ['Jul', 24],
                ['Ago', 21],
                ['Set', 25],
                ['Out', 20],
                ['Nov', 18],
                ['Dez', 18]
            ]);

            // Set chart options
            var options = {
                'title': 'Atendimento Clara'
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
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
                                <h5 class="card-title">Total de atendimentos abertos</h5>
                                <h3>1200</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Total de atendimentos finalizados</h5>
                                <h3>920</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Total de atendimentos agora</h5>
                                <h3>44</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div id="chart_div" style="width: 20%; height: 540px;"></div>
    <div class="row">
        <div class="col-md-6">
            <h2>grafico de barra anual</h2>

        </div>
        <div class="col-md-6">
            <h2>>grafico de barra anua</h2>

        </div>
    </div>


</asp:Content>
