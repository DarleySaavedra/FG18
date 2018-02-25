﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MatematicaD.aspx.cs" Inherits="Dapp2018_00.Aspx.MatematicaD" %>

<%--<%@ Register assembly="System.Web.Entity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>--%>


<%--<%@ Register assembly="Microsoft.AspNet.EntityDataSource" namespace="Microsoft.AspNet.EntityDataSource" tagprefix="ef" %>--%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Curso Matemática - My First Game</title>
    <!-- Bootstrap core CSS-->
    <link href="../Content/css/PerfDoc/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom fonts for this template-->
    <link href="../Content/css/PerfDoc/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Page level plugin CSS-->
    <link href="../Content/css/PerfDoc/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet" />
    <!-- Custom styles for this template-->
    <link href="../Content/css/PerfDoc/css/sb-admin.css" rel="stylesheet" />
    <link href="../Content/css/PerfAl/css/img.css" rel="stylesheet" />
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <form id="form1" runat="server">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="PerfilDoc.aspx">My First Game</a>
            <h4 class="navbar-brand">Usuario Docente</h4>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <div class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <div class="pull-left image">
                        <img src="../Imagenes/RedAnimationLoop.gif" class="img-circle" alt="User Image" style="width: 55px; margin-left: 15px" />

                    </div>
                    <div class="pull-left info">
                        <p style="color: white; margin-left: 30px">Bienvenido&nbsp;
                            <asp:Label ID="nombredc" runat="server" Text="" Style="color: white"></asp:Label></p>

                        <a href="#"><i class="fa fa-circle text-success" style="margin-left: 78px"></i>Online</a>
                    </div>
                    <div class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Cursos</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="collapseMulti">
                            <li>
                                <a href="LenguajeD.aspx">Lenguaje</a>
                            </li>
                            <li>
                                <a href="MatematicaD.aspx">Matemática</a>
                            </li>
                        </ul>
                    </div>
                    <%--   <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="charts.html">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Charts</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="tables.html">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Tables</span>
          </a>
        </li>--%>
                    <%--       <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Components</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
        <li>
            <a href="navbar.html">L</a>
        </li>
        <li>
            <a href="cards.html">Cards</a>
        </li>
    </ul>
        </li>--%>
                    <%--    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Example Pages</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="login.html">Login Page</a>
            </li>
            <li>
              <a href="register.html">Registration Page</a>
            </li>
            <li>
              <a href="forgot-password.html">Forgot Password Page</a>
            </li>
            <li>
              <a href="blank.html">Blank Page</a>
            </li>
          </ul>
        </li>--%>
                    <%--       <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-sitemap"></i>
            <span class="nav-link-text">Menu Levels</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseMulti">
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a href="#">Second Level Item</a>
            </li>--%>
                    <%--           <li>
              <a class="nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti2">Third Level</a>
              <ul class="sidenav-third-level collapse" id="collapseMulti2">
                <li>
                  <a href="#">Third Level Item</a>
                </li>
                <li>
                  <a href="#">Third Level Item</a>
                </li>
                <li>
                  <a href="#">Third Level Item</a>
                </li>
              </ul>
            </li>
          </ul>
        </li>--%>
                    <div class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-link"></i>
                            <span class="nav-link-text">Videos</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="collapseComponents">
                            <li>
                                <a href="#">Tutoriales Lenguaje</a>
                            </li>
                            <li>
                                <a href="#">Tutoriales Matemática</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-fw fa-envelope"></i>
                            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
                            </span>
                            <span class="indicator text-primary d-none d-lg-block">
                                <i class="fa fa-fw fa-circle"></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="messagesDropdown">
                            <h6 class="dropdown-header">No hay Mensajes</h6>

                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-fw fa-bell"></i>
                            <span class="d-lg-none">Alertas
              <span class="badge badge-pill badge-warning">6 New</span>
                            </span>
                            <span class="indicator text-warning d-none d-lg-block">
                                <i class="fa fa-fw fa-circle"></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">No hay alertas</h6>

                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="input-group">
                            <input class="form-control" type="text" placeholder="Search for...">
                            <span class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Cerra sesión</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="PerfilDoc.aspx">Inicio</a>
                    </li>
                    <li class="breadcrumb-item active">Mi Perfil</li>
                </ol>
            </div>
            <!-- Icon Cards-->
            <div>

      <%--          <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=ModelRecursoE" DefaultContainerName="MyFirstGameCon" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntitySetName="Tema"></asp:EntityDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>--%>


                <asp:EntityDataSource ID="EntityDataSource1" runat="server">
                </asp:EntityDataSource>


            </div>
            <!-- Logout Modal-->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Cerrar Sesion</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">¿Esta seguro de cerrar sesión?</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <a class="btn btn-primary" href="login.aspx">Ok</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Bootstrap core JavaScript-->
            <script src="../Content/css/PerfDoc/vendor/jquery/jquery.min.js"></script>
            <script src="../Content/css/PerfDoc/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="../Content/css/PerfDoc/vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Page level plugin JavaScript-->
            <script src="../Content/css/PerfDoc/vendor/chart.js/Chart.min.js"></script>
            <script src="../Content/css/PerfDoc/vendor/datatables/jquery.dataTables.js"></script>
            <script src="../Content/css/PerfDoc/vendor/datatables/dataTables.bootstrap4.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="../Content/css/PerfDoc/js/sb-admin-charts.min.js"></script>
            <script src="js/sb-admin.min.js"></script>
            <!-- Custom scripts for this page-->
            <script src="../Content/css/PerfDoc/js/sb-admin-datatables.min.js"></script>
            <script src="../Content/css/PerfDoc/js/sb-admin-charts.min.js"></script>

        </div>
    </form>
</body>

</html>

