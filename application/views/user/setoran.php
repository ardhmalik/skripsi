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

    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Data Setoran</h5>
                        <p>Berisi daftar setoran mitra</p>

                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Tanggal</th>
                                        <th scope="col">Sampah</th>
                                        <th scope="col">Berat</th>
                                        <th scope="col">Subtotal</th>
                                        <th scope="col">Mitra</th>
                                        <th scope="col">Jadwal Jemput</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($data_setoran as $setoran) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?= $setoran['tanggal'] ?>
                                            </td>
                                            <td>
                                                <?= $setoran['nama_sampah'] ?>
                                            </td>
                                            <td>
                                                <?= $setoran['berat'] ?>
                                            </td>
                                            <td>
                                                <?= "Rp " . number_format($setoran['subtotal'], 2, ',', '.')  ?>
                                            </td>
                                            <td>
                                                <?= $setoran['nama_mitra'] ?>
                                            </td>
                                            <td>
                                                <?= $setoran['jadwal_jemput'] ?>
                                            </td>
                                            <td class="text-center">
                                                <?php
                                                switch ($setoran['status']) {
                                                    case 'Penjemputan':
                                                        echo '<span class="badge rounded-pill bg-danger"><i class="bi bi-truck"></i> Penjemputan</span>';
                                                        break;
                                                    case 'Pembayaran':
                                                        echo '<span class="badge rounded-pill bg-primary"><i class="bi bi-cash-coin"></i> Pembayaran</span>';
                                                        break;
                                                    case 'Selesai':
                                                        echo '<span class="badge rounded-pill bg-success"><i class="bi bi-check-circle me-1"></i> Selesai</span>';
                                                        break;
                                                    
                                                    default:
                                                        # code...
                                                        break;
                                                }
                                                ?>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- End Table with stripped rows -->
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>