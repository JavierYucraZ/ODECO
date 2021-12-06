<?php $title = "Reclamos por Operador" ?>
<?php include("./Public/shared/head.php"); ?>
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
                    <h3>Gráfica</h3>
                </div>
                <div class="page-content">
                    <section class="row">
                        <div class="col-12">
                            <section class="section">
                                <div class="card py-5">
                                    <div class="row">
                                        <div class="col-12 col-md-6">
                                            <div id="columns"></div>
                                        </div>
                                        <div class="col-12 col-md-6">
                                            <div id="bar"></div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </section>
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
    </div>
    <?php include("./Public/shared/scripts.html") ?>
    <script src="./Public/js/columnCharts.js"></script>
    <script src="./Public/js/barCharts.js"></script>
</body>

</html>


<!-- 
    Columnas
    Operador vs Reclamos
    En base al operador y periodo

    Barras(Porcentede)
    Procedente
    Improcedente
    Parcialmente procedente

    Torta
    Servicio -> Click en Item => Tipo Reclamo
 -->