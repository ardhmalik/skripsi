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
                        <h5 class="card-title">Data penjemputan</h5>
                        <p>Berisi daftar penjemputan untuk setoran mitra</p>

                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Jadwal Jemput</th>
                                        <th scope="col">Nama Mitra</th>
                                        <th scope="col">Alamat</th>
                                        <th scope="col">Nomor HP</th>
                                        <th scope="col">Nama Sampah</th>
                                        <th scope="col">Berat</th>
                                        <?php if ($this->session->userdata('role') === "Driver") : ?>
                                            <th scope="col">Aksi</th>
                                        <?php else : ?>
                                            <th scope="col">Status</th>
                                        <?php endif ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($data_penjemputan as $jemput) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?= date('d F Y, H:i T', strtotime($jemput['jadwal_jemput'])) ?>
                                            </td>
                                            <td>
                                                <?= $jemput['nama_mitra'] ?>
                                            </td>
                                            <td>
                                                <?= $jemput['alamat'] ?>
                                            </td>
                                            <td>
                                                <?= $jemput['no_telp'] ?>
                                            </td>
                                            <td>
                                                <?= $jemput['nama_sampah'] ?>
                                            </td>
                                            <td>
                                                <?= $jemput['berat'] ?>
                                            </td>
                                            <?php if ($this->session->userdata('role') === "Driver") : ?>
                                                <td class="text-center">
                                                    <?php if ($jemput['status'] == 0) : ?>
                                                        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#confirmJemput-<?= $jemput['id_jemput'] ?>" title="Selesai">
                                                            <i class="bi bi-check-circle-fill"></i>
                                                        </button>
                                                    <?php endif ?>
                                                </td>
                                            <?php else : ?>
                                                <td class="text-center">
                                                    <?php if ($jemput['status'] == 1) : ?>
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