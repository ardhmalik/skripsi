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
                        <h5 class="card-title">Data Pembeli</h5>
                        <p>Berisi daftar pembeli langganan Bank Sampah Induk Rumah Harum</p>
                        <div class="row">
                            <div class="col-auto ms-auto">
                                <div class="btn btn-primary fw-bold" data-bs-toggle="modal" data-bs-target="#addPembeli">
                                    <i class="bi bi-plus-square-fill"></i> Tambah Pembeli
                                </div>
                            </div>
                        </div>

                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Nama</th>
                                        <th scope="col">No.Telp</th>
                                        <th scope="col">Alamat</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($data_pembeli as $pmb) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?= $pmb['nama'] ?>
                                            </td>
                                            <td>
                                                <?= $pmb['no_telp'] ?>
                                            </td>
                                            <td>
                                                <?= $pmb['alamat'] ?>
                                            </td>
                                            <td class="text-center">
                                                <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editPembeli-<?= $pmb['id_pembeli'] ?>" title="Edit">
                                                    <i class="bi bi-pencil-square"></i>
                                                </button>
                                                <?php if (is_null($pmb['used_jual'])) : ?>
                                                    <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delPembeli-<?= $pmb['id_pembeli'] ?>" title="Hapus">
                                                        <i class="bi bi-trash2-fill"></i>
                                                    </button>
                                                <?php endif ?>
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