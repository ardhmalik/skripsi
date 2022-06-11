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
                        <h5 class="card-title"><?= $title ?></h5>
                        <p>Berisi daftar pembayaran untuk setoran mitra</p>

                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Tanggal Bayar</th>
                                        <th scope="col">Bank</th>
                                        <th scope="col">No.Rek</th>
                                        <th scope="col">Atas Nama</th>
                                        <th scope="col">Bukti</th>
                                        <th scope="col">Total Bayar</th>
                                        <?php if ($this->session->userdata('role') === "Bendahara") : ?>
                                            <th scope="col">Aksi</th>
                                        <?php else : ?>
                                            <th scope="col">Status</th>
                                        <?php endif ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($data_bayar as $bayar) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?= (!is_null($bayar['tanggal'])) ? date('d F Y, H:i T', strtotime($bayar['tanggal'])) : $bayar['tanggal'] ?>
                                            </td>
                                            <td>
                                                <?= $bayar['bank'] ?>
                                            </td>
                                            <td>
                                                <?= $bayar['rek_tujuan'] ?>
                                            </td>
                                            <td>
                                                <?= $bayar['atas_nama'] ?>
                                            </td>
                                            <td>
                                                <?= $bayar['bukti'] ?>
                                            </td>
                                            <td>
                                                <?= "Rp " . number_format($bayar['total_bayar'], 2, ',', '.')  ?>
                                            </td>
                                            <?php if ($this->session->userdata('role') === "Bendahara") : ?>
                                                <td class="text-center">
                                                    <?php if ($bayar['status'] == 0) : ?>
                                                        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#confirmBayar-<?= $bayar['id_bayar'] ?>" title="Konfirmasi">
                                                            <i class="bi bi-check-circle-fill"></i>
                                                        </button>
                                                    <?php endif ?>
                                                </td>
                                            <?php else : ?>
                                                <td class="text-center">
                                                    <?php if ($bayar['status'] == 1) : ?>
                                                        <span class="badge rounded-pill bg-success"><i class="bi bi-check-circle me-1"></i> Success</span>
                                                    <?php endif ?>
                                                </td>
                                            <?php endif ?>
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