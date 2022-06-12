<main id="main" class="main">
    <div class="pagetitle">
        <h1><?= $title ?></h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('dashboard') ?>">Home</a></li>
                <li class="breadcrumb-item active"><?= $title ?></li>
            </ol>
        </nav>
    </div>
    <?= $this->session->flashdata('message') ?>

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-8">
                <div class="row">

                    <!-- Setoran Card -->
                    <div class="col-md-6">
                        <div class="card info-card sales-card">
                            <div class="card-body">
                                <h5 class="card-title">Setoran <span>| Total</span></h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-box"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6><?= $total_setoran ?></h6>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Setoran Card -->

                    <!-- Pendapatan Card -->
                    <div class="col-md-6">
                        <div class="card info-card revenue-card">
                            <div class="card-body">
                                <h5 class="card-title">Pendapatan <span>| Total</span></h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-cash-stack"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>Rp <?= number_format($total_pendapatan, 2, ',', '.') ?></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End Pendapatan Card -->

                    <!-- Laporan Setoran -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Laporan Setoran <span>/Total</span></h5>
                                <!-- Line Chart -->
                                <div id="setoranChart"></div>

                                <!-- <= var_dump($setor_per_month) ?> -->
                                <script>
                                    document.addEventListener("DOMContentLoaded", () => {
                                        new ApexCharts(document.querySelector("#setoranChart"), {
                                            series: [{
                                                name: 'Setoran',
                                                data: [<?php
                                                        for ($i = 0; $i < count($setor_per_month); $i++) {
                                                            if ($i == count($setor_per_month) - 1) {
                                                                echo $setor_per_month[$i];
                                                            } else {
                                                                echo $setor_per_month[$i] . ", ";
                                                            }
                                                        }
                                                        ?>]
                                            }],
                                            chart: {
                                                height: 480,
                                                type: 'area',
                                                toolbar: {
                                                    show: false
                                                },
                                            },
                                            markers: {
                                                size: 4
                                            },
                                            colors: ['#4154f1'],
                                            fill: {
                                                type: "gradient",
                                                gradient: {
                                                    shadeIntensity: 1,
                                                    opacityFrom: 0.3,
                                                    opacityTo: 0.4,
                                                    stops: [0, 90, 100]
                                                }
                                            },
                                            dataLabels: {
                                                enabled: false
                                            },
                                            stroke: {
                                                curve: 'smooth',
                                                width: 2
                                            },
                                            xaxis: {
                                                type: 'month',
                                                categories: [<?php
                                                                foreach ($month as $mn) {
                                                                    $txt = substr($mn['month_name'], 0, 3);
                                                                    if ($mn['id'] < 12) {
                                                                        echo "'" . $txt . "', ";
                                                                    } else {
                                                                        echo "'" . $txt . "'";
                                                                    }
                                                                }
                                                                ?>]
                                            },
                                            tooltip: {
                                                x: {
                                                    format: 'dd/MM/yy HH:mm'
                                                },
                                            }
                                        }).render();
                                    });
                                </script>
                                <!-- End Line Chart -->

                            </div>

                        </div>
                    </div><!-- End Reports -->

                </div>
            </div>

            <!-- Right side columns -->
            <div class="col-lg-4">
                <!-- Top 5 Setoran Sampah -->
                <div class="card top-selling overflow-auto">

                    <div class="card-body pb-0">
                        <h5 class="card-title">Top 5 Setoran Sampah <span>| Total Keseluruhan Mitra</span></h5>

                        <table class="table table-borderless text-center">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Jenis</th>
                                    <th scope="col">Berat(kg)</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 0;
                                for ($i = 0; $i < 5; $i++) : ?>
                                    <tr>
                                        <th scope="row">
                                            <?= ++$no ?>
                                        </th>
                                        <td class="text-start">
                                            <?= $top_setoran[$i]['nama_sampah'] ?>
                                        </td>
                                        <td>
                                            <?= $top_setoran[$i]['jenis_sampah'] ?>
                                        </td>
                                        <td>
                                            <?= $top_setoran[$i]['berat'] ?>
                                        </td>
                                        <td class="fw-bold text-end">
                                            Rp <?= number_format($top_setoran[$i]['subtotal'], 0, '.', ',') ?>
                                        </td>
                                    </tr>
                                <?php endfor ?>
                            </tbody>
                        </table>

                    </div>

                </div>
                <!-- End Top 5 Setoran Sampah -->
            </div>
        </div>
    </section>
</main>