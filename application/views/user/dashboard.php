<main id="main" class="main">
    <div class="pagetitle">
        <h1><?= $title ?></h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('dashboard_user') ?>">Home</a></li>
                <li class="breadcrumb-item active"><?= $title ?></li>
            </ol>
        </nav>
    </div>
    <?= $this->session->flashdata('message') ?>

    <section class="section dashboard">
        <!-- New Setor: <?= $new_setor ?> | New Mitra: <?= $new_mitra ?> | New Pendapatan: <?= $new_pendapatan ?> -->
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-8">
                <div class="row">

                    <!-- Setoran Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card sales-card">

                            <div class="card-body">
                                <h5 class="card-title">Setoran <span>| Hari ini</span></h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <!-- <i class="bi bi-cart"></i> -->
                                        <i class="bi bi-cart4"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6><?= $new_setor ?></h6>
                                        <?php
                                        $percent = round((($new_setor / $jml_setor['total_setor']) * 100), 2);
                                        $crease = ($percent >= 0) ? 'increase' : 'decrease';
                                        $text_fmt = ($percent >= 0) ? 'text-success' : 'text-danger';

                                        switch ($new_setor) {
                                            case $new_setor >= 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            case $new_setor < 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            default:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                # code...
                                                break;
                                        } ?>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Setoran Card -->

                    <!-- Revenue Card -->
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">

                            <div class="card-body">
                                <h5 class="card-title">Pendapatan <span>| Total</span></h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <!-- <i class="bi bi-currency-dollar"></i> -->
                                        <!-- <i class="bi bi-cash-coin"></i> -->
                                        <i class="bi bi-cash-stack"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6><?= 'Rp ' . number_format($new_pendapatan, 0, ',', '.') ?></h6>
                                        <?php
                                        // var_dump($new_pendapatan);
                                        // var_dump($total_pendapatan);
                                        $percent = round((($new_pendapatan / ($total_pendapatan)) * 100), 2);
                                        $crease = ($percent >= 0) ? 'increase' : 'decrease';
                                        $text_fmt = ($percent >= 0) ? 'text-success' : 'text-danger';

                                        switch ($new_pendapatan) {
                                            case $new_pendapatan >= 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            case $new_pendapatan < 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            default:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                # code...
                                                break;
                                        } ?>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!-- End Revenue Card -->

                    <!-- Mitra Card -->
                    <div class="col-xxl-4 col-xl-12">

                        <div class="card info-card customers-card">

                            <div class="card-body">
                                <h5 class="card-title">Mitra <span>| Total</span></h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-people"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6><?= $new_mitra ?></h6>
                                        <?php
                                        $percent = round((($new_mitra / $jml_mitra['total_mitra']) * 100), 2);
                                        $crease = ($percent >= 0) ? 'increase' : 'decrease';
                                        $text_fmt = ($percent >= 0) ? 'text-success' : 'text-danger';

                                        switch ($new_mitra) {
                                            case $new_mitra >= 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            case $new_mitra < 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            default:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                # code...
                                                break;
                                        } ?>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div><!-- End Mitra Card -->

                    <!-- Reports -->
                    <div class="col-12">
                        <div class="card">

                            <div class="card-body">
                                <h5 class="card-title">Laporan Keuangan <span>/Total</span></h5>

                                <!-- Line Chart -->
                                <div id="laporanKeuangan"></div>

                                <script>
                                    document.addEventListener("DOMContentLoaded", () => {
                                        new ApexCharts(document.querySelector("#laporanKeuangan"), {
                                            series: [{
                                                name: 'Pemasukan',
                                                data: [31, 40, 28, 51, 42, 82, 56],
                                            }, {
                                                name: 'Pengeluaran',
                                                data: [11, 32, 45, 32, 34, 52, 41]
                                            }],
                                            chart: {
                                                height: 350,
                                                type: 'area',
                                                toolbar: {
                                                    show: false
                                                },
                                            },
                                            markers: {
                                                size: 4
                                            },
                                            colors: ['#2eca6a', '#ff5b00'],
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
                                                type: 'datetime',
                                                categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
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

                    <!-- Reports -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Laporan Transaksi 2022 <span>/Total</span></h5>

                                <!-- Bar Chart -->
                                <div id="barChart"></div>

                                <script>
                                    document.addEventListener("DOMContentLoaded", () => {
                                        new ApexCharts(document.querySelector("#barChart"), {
                                            series: [{
                                                name: 'Selesai',
                                                data: [{
                                                        x: 'Jan',
                                                        y: 14,
                                                        goals: [{
                                                            name: 'Setoran',
                                                            value: 14,
                                                            strokeWidth: 2,
                                                            strokeDashArray: 2,
                                                            strokeColor: '#775DD0'
                                                        }]
                                                    },
                                                    {
                                                        x: 'Feb',
                                                        y: 44,
                                                        goals: [{
                                                            name: 'Setoran',
                                                            value: 54,
                                                            strokeWidth: 5,
                                                            strokeHeight: 10,
                                                            strokeColor: '#775DD0'
                                                        }]
                                                    },
                                                    {
                                                        x: 'March',
                                                        y: 54,
                                                        goals: [{
                                                            name: 'Setoran',
                                                            value: 52,
                                                            strokeWidth: 10,
                                                            strokeHeight: 0,
                                                            strokeLineCap: 'round',
                                                            strokeColor: '#775DD0'
                                                        }]
                                                    },
                                                    {
                                                        x: 'Apr',
                                                        y: 66,
                                                        goals: [{
                                                            name: 'Setoran',
                                                            value: 61,
                                                            strokeWidth: 10,
                                                            strokeHeight: 0,
                                                            strokeLineCap: 'round',
                                                            strokeColor: '#775DD0'
                                                        }]
                                                    },
                                                    {
                                                        x: 'May',
                                                        y: 81,
                                                        goals: [{
                                                            name: 'Setoran',
                                                            value: 66,
                                                            strokeWidth: 10,
                                                            strokeHeight: 0,
                                                            strokeLineCap: 'round',
                                                            strokeColor: '#775DD0'
                                                        }]
                                                    },
                                                    {
                                                        x: 'Jun',
                                                        y: 67,
                                                        goals: [{
                                                            name: 'Setoran',
                                                            value: 70,
                                                            strokeWidth: 5,
                                                            strokeHeight: 10,
                                                            strokeColor: '#775DD0'
                                                        }]
                                                    }
                                                ]
                                            }],
                                            chart: {
                                                height: 350,
                                                type: 'bar'
                                            },
                                            plotOptions: {
                                                bar: {
                                                    horizontal: true,
                                                }
                                            },
                                            colors: ['#00E396'],
                                            dataLabels: {
                                                formatter: function(val, opt) {
                                                    const goals =
                                                        opt.w.config.series[opt.seriesIndex].data[opt.dataPointIndex]
                                                        .goals

                                                    if (goals && goals.length) {
                                                        return `${val} / ${goals[0].value}`
                                                    }
                                                    return val
                                                }
                                            },
                                            legend: {
                                                show: true,
                                                showForSingleSeries: true,
                                                customLegendItems: ['Selesai', 'Setoran'],
                                                markers: {
                                                    fillColors: ['#00E396', '#775DD0']
                                                }
                                            }
                                        }).render();
                                    });
                                </script>
                                <!-- End Bar Chart -->

                            </div>
                        </div>
                    </div><!-- End Reports -->

                </div>
            </div><!-- End Left side columns -->

            <!-- Right side columns -->
            <div class="col-lg-4">

                <!-- Stok Sampah -->
                <div class="card">

                    <div class="card-body pb-0">
                        <h5 class="card-title">Stok Sampah <span>| Total</span></h5>

                        <div id="trafficChart" style="min-height: 400px;" class="echart"></div>

                        <script>
                            document.addEventListener("DOMContentLoaded", () => {
                                echarts.init(document.querySelector("#trafficChart")).setOption({
                                    tooltip: {
                                        trigger: 'item'
                                    },
                                    legend: {
                                        top: '5%',
                                        left: 'center'
                                    },
                                    series: [{
                                        name: 'Access From',
                                        type: 'pie',
                                        radius: ['40%', '70%'],
                                        avoidLabelOverlap: false,
                                        label: {
                                            show: false,
                                            position: 'center'
                                        },
                                        emphasis: {
                                            label: {
                                                show: true,
                                                fontSize: '18',
                                                fontWeight: 'bold'
                                            }
                                        },
                                        labelLine: {
                                            show: false
                                        },
                                        data: [{
                                                value: 1048,
                                                name: 'Search Engine'
                                            },
                                            {
                                                value: 735,
                                                name: 'Direct'
                                            },
                                            {
                                                value: 580,
                                                name: 'Email'
                                            },
                                            {
                                                value: 484,
                                                name: 'Union Ads'
                                            },
                                            {
                                                value: 300,
                                                name: 'Video Ads'
                                            }
                                        ]
                                    }]
                                });
                            });
                        </script>

                    </div>
                </div><!-- End Stok Sampah -->

                <!-- Top 5 Penjualan Sampah -->
                <div class="card top-selling overflow-auto">

                    <div class="card-body pb-0">
                        <h5 class="card-title">Top 5 Penjualan Sampah <span>| Total</span></h5>

                        <table class="table table-borderless">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Berat</th>
                                    <th scope="col">Harga</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Ut inventore ipsa voluptas nulla</td>
                                    <td class="fw-bold">124</td>
                                    <td>$5,828</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Exercitationem similique doloremque</td>
                                    <td class="fw-bold">98</td>
                                    <td>$4,508</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Doloribus nisi exercitationem</td>
                                    <td class="fw-bold">74</td>
                                    <td>$4,366</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>Officiis quaerat sint rerum error</td>
                                    <td class="fw-bold">63</td>
                                    <td>$2,016</td>
                                </tr>
                                <tr>
                                    <th scope="row">5</th>
                                    <td>Sit unde debitis delectus repellendus</td>
                                    <td class="fw-bold">41</td>
                                    <td>$3,239</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>

                </div>
                <!-- End Top 5 Penjualan Sampah -->

                <!-- Top 5 Setoran Sampah -->
                <div class="card top-selling overflow-auto">

                    <div class="card-body pb-0">
                        <h5 class="card-title">Top 5 Setoran Sampah <span>| Total</span></h5>

                        <table class="table table-borderless">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Berat</th>
                                    <th scope="col">Harga</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Ut inventore ipsa voluptas nulla</td>
                                    <td class="fw-bold">124</td>
                                    <td>$5,828</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Exercitationem similique doloremque</td>
                                    <td class="fw-bold">98</td>
                                    <td>$4,508</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Doloribus nisi exercitationem</td>
                                    <td class="fw-bold">74</td>
                                    <td>$4,366</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>Officiis quaerat sint rerum error</td>
                                    <td class="fw-bold">63</td>
                                    <td>$2,016</td>
                                </tr>
                                <tr>
                                    <th scope="row">5</th>
                                    <td>Sit unde debitis delectus repellendus</td>
                                    <td class="fw-bold">41</td>
                                    <td>$3,239</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>

                </div>
                <!-- End Top 5 Setoran Sampah -->

            </div><!-- End Right side columns -->

        </div>
    </section>
</main>