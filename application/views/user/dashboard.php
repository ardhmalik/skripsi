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
        <!-- New Setor: <?= $setor_today ?> | Yesterday Setor: <?= $setor_yesterday ?> | 
        New Mitra: <?= $mitra_today ?> | Yesterday Mitra: <?= $mitra_yesterday ?> |  
        New Pendapatan: <?= $pendapatan_today ?> | Yesterday Pendapatan: <?= $pendapatan_yesterday ?>  -->
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
                                        <h6><?= $setor_today ?></h6>
                                        <?php
                                        $percent = round((($setor_today - $setor_yesterday) / $setor_yesterday) * 100 / 100, 2);
                                        $crease = ($percent >= 0) ? 'increase' : 'decrease';
                                        $text_fmt = ($percent >= 0) ? 'text-success' : 'text-danger';

                                        switch ($setor_today) {
                                            case $setor_today >= 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            case $setor_today < 0:
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
                                        <h6><?= 'Rp ' . number_format($pendapatan_today, 0, ',', '.') ?></h6>
                                        <?php
                                        // var_dump($pendapatan_today);
                                        // var_dump($total_pendapatan);
                                        $percent = round((($pendapatan_today - $pendapatan_yesterday) / $pendapatan_yesterday) * 100 / 100, 2);
                                        $crease = ($percent >= 0) ? 'increase' : 'decrease';
                                        $text_fmt = ($percent >= 0) ? 'text-success' : 'text-danger';

                                        switch ($pendapatan_today) {
                                            case $pendapatan_today >= 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            case $pendapatan_today < 0:
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
                                        <h6><?= $mitra_today ?></h6>
                                        <?php
                                        $percent = round((($mitra_today - $mitra_yesterday) / $mitra_yesterday) * 100 / 100, 2);
                                        $crease = ($percent >= 0) ? 'increase' : 'decrease';
                                        $text_fmt = ($percent >= 0) ? 'text-success' : 'text-danger';

                                        switch ($mitra_today) {
                                            case $mitra_today >= 0:
                                                echo '<span class="' . $text_fmt . ' small pt-1 fw-bold">' . $percent . '%</span> <span class="text-muted small pt-2 ps-1">' . $crease . '</span>';
                                                break;
                                            case $mitra_today < 0:
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
                                                data: [
                                                    <?php
                                                    for ($i = 0; $i < count($jual_per_month); $i++) {
                                                        if ($i == count($jual_per_month) - 1) {
                                                            echo $jual_per_month[$i];
                                                        } else {
                                                            echo "$jual_per_month[$i], ";
                                                        }
                                                    }
                                                    ?>
                                                ],
                                            }, {
                                                name: 'Pengeluaran',
                                                data: [
                                                    <?php
                                                    for ($i = 0; $i < count($bayar_per_month); $i++) {
                                                        if ($i == count($bayar_per_month) - 1) {
                                                            echo $bayar_per_month[$i];
                                                        } else {
                                                            echo "$bayar_per_month[$i], ";
                                                        }
                                                    }
                                                    ?>
                                                ]
                                            }],
                                            chart: {
                                                height: 350,
                                                type: 'area',
                                                toolbar: {
                                                    show: true
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
                                            yaxis: {
                                                labels: {
                                                    formatter: function(value) {
                                                        return "Rp " + value.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
                                                    }
                                                },
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
                                                data: [
                                                    <?php
                                                    $tab_1 = "\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                                    $tab_2 = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t";
                                                    for ($i = 0; $i < count($month); $i++) {
                                                        echo "$tab_1 {\n";
                                                        echo "$tab_1 x: '" . $month[$i]['month_name'] . "',\n";
                                                        echo "$tab_1 y: " . $selesai_per_month[$i] . ",\n";
                                                        echo "$tab_1 goals: [{\n";
                                                        echo "$tab_2 name: 'Setoran',\n";
                                                        echo "$tab_2 value: " . $setor_per_month[$i] . ",\n";
                                                        if ($selesai_per_month[$i] < $setor_per_month[$i]) {
                                                            echo "$tab_2 strokeWidth: 5,\n";
                                                            echo "$tab_2 strokeHeight: 10,\n";
                                                        }
                                                        elseif ($selesai_per_month[$i] > $setor_per_month[$i]) {
                                                            echo "$tab_2 strokeWidth: 10,\n";
                                                            echo "$tab_2 strokeHeight: 0,\n";
                                                            echo "$tab_2 strokeLineCap: 'round',\n";
                                                        } elseif ($selesai_per_month[$i] == $setor_per_month[$i]) {
                                                            echo "$tab_2 strokeWidth: 2,\n";
                                                            echo "$tab_2 strokeDashArray: 2,\n";
                                                        }
                                                        echo "$tab_2 strokeColor: '#775DD0'\n";
                                                        echo "$tab_1 }]\n}\n";
                                                        echo ($i < count($month) - 1) ? "$tab_1 ,\n" : "";
                                                    }
                                                    ?>
                                                ]
                                            }],
                                            chart: {
                                                height: 600,
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
                        <!-- <?= $top_penjualan ?> -->
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
                                            <?= $top_penjualan[$i]['nama_sampah'] ?>
                                        </td>
                                        <td>
                                            <?= $top_penjualan[$i]['jenis_sampah'] ?>
                                        </td>
                                        <td>
                                            <?= $top_penjualan[$i]['berat'] ?>
                                        </td>
                                        <td class="fw-bold text-end">
                                            Rp <?= number_format($top_penjualan[$i]['subtotal'], 0, '.', ',') ?>
                                        </td>
                                    </tr>
                                <?php endfor ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- End Top 5 Penjualan Sampah -->

                <!-- Top 5 Setoran Sampah -->
                <div class="card top-selling overflow-auto">

                    <div class="card-body pb-0">
                        <h5 class="card-title">Top 5 Setoran Sampah <span>| Total</span></h5>

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

            </div><!-- End Right side columns -->

        </div>
    </section>
</main>