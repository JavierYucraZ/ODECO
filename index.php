<?php $title = "Bienvenido" ?>
<?php 
include("./Public/shared/head.php");
include("./Public/sql/requestData.php");
?>
<link rel="stylesheet" href="./Public/mazer/vendors/simple-datatables/style.css">
</head>

<body>
    <div id="app">
        <div id="main" class="layout-horizontal">
            <header class="mb-5">
                <div class="header-top">
                    <div class="container d-lg-flex justify-content-lg-center">
                        <div class="logo">
                            <!-- <a href="index.html"><img src="Public/mazer/images/logo/logo.png" alt="Logo"/></a> -->
                            <span class="display-4">
                                Logo Aquí
                            </span>
                        </div>
                        <div class="header-top-right">
                            <a href="#" class="burger-btn d-block d-xl-none">
                                <i class="bi bi-justify fs-3"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <?php include("./Public/shared/navbar.html") ?>
            </header>

            <div class="content-wrapper container-fluid">
                <div class="page-heading">
                    <h3>Reclamaciones Directas</h3>
                </div>
                <div class="page-content">
                    <section class="row">
                        <div class="col-12">
                            <section class="section">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <table class="table table-striped table-bordered border" id="table1">
                                            <thead>
                                                <th><span class="pe-4">Nro.</span></th>
                                                <th><span class="pe-4">Nro. Formulario</span></th>
                                                <th><span class="pe-4">Ubicación</span></th>
                                                <th><span class="pe-4">Datos Consumidor</span></th>
                                                <th><span class="pe-4">Tipo Reclamo</span></th>
                                                <th><span class="pe-4">Servicio</span></th>
                                                <th><span class="pe-4">Tipo Servicio</span></th>
                                                <th><span class="pe-4">Fecha Reclamo</span></th>
                                                <th><span class="pe-4">Tipo Resolución</span></th>
                                                <th><span class="pe-4">Fecha Resolución</span></th>
                                                <th><span class="pe-4">Notificación</span></th>
                                                <th><span class="pe-4">Cumplimiento</span></th>
                                            </thead>
                                            <tbody id="tableContent">
                                                <?php foreach($registros as $index => $registro): ?>
                                                <tr>
                                                    <td><?= $index + 1?></td>
                                                    <td><?= $registro['nro_formulario']?></td>
                                                    <td><?= $registro['ubicacion']?></td>
                                                    <td><?= $registro['nombre_consumidor']?></td>
                                                    <td><?= $registro['tipo_reclamo']?></td>
                                                    <td><?= $registro['servicio']?></td>
                                                    <td><?= $registro['tipo_servicio']?></td>
                                                    <td><?= $registro['fecha_reclamo']?></td>
                                                    <td><?= $registro['tipo_resolucion']?></td>
                                                    <td><?= $registro['fecha_resolucion']?></td>
                                                    <td><?= $registro['notificacion']?></td>
                                                    <td><?= $registro['cumplimiento']?></td>
                                                </tr>
                                                <?php endforeach ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="card-footer">
                                        <h4>Búsqueda por periodo</h4>
                                        <form action="get">
                                            <div class="row">
                                                <div class="col-12 col-md-2">
                                                    <label for="inicio">Inicio</label>
                                                    <input type="date" class="form-control" id="inicio" name="inicio">
                                                </div>
                                                <div class="col-12 col-md-2">
                                                    <label for="fin">Fin</label>
                                                    <input type="date" class="form-control" id="fin" name="fin">
                                                </div>
                                                <div class="col-12 col-md-2 align-self-end">
                                                    <button class="btn btn-success">
                                                        Aplicar Filtro
                                                    </button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>

                            </section>
                        </div>
                    </section>
                </div>
            </div>

            <footer>
                <div class="container">
                    <div class="footer clearfix mb-0 text-muted">
                        <div class="float-start">
                            <p>2021 &copy;</p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <?php include("./Public/shared/scripts.html") ?>
    <!-- <script src="./Public/js/requestData.js" defer></script> -->
    <script src="./Public/mazer/vendors/simple-datatables/simple-datatables.js"></script>
    <script>
    // Simple Datatable
    let table1 = document.querySelector('#table1');
    let dataTable = new simpleDatatables.DataTable(table1);
    </script>
</body>

</html>