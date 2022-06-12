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
                        <h5 class="card-title">Data Penjualan</h5>
                        <p>Berisi daftar penjualan sampah Bank Sampah Induk Rumah Harum</p>
                        <div class="row">
                            <div class="col-auto ms-auto">
                                <div class="btn btn-primary fw-bold" data-bs-toggle="modal" data-bs-target="#addJual">
                                    <i class="bi bi-plus-square-fill"></i> Tambah Penjualan
                                </div>
                            </div>
                        </div>

                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Tanggal</th>
                                        <th scope="col">Nama Pembeli</th>
                                        <th scope="col">Nama Sampah</th>
                                        <th scope="col">Jenis Sampah</th>
                                        <th scope="col">Harga/kg</th>
                                        <th scope="col">Berat</th>
                                        <th scope="col">Subtotal</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($data_jual as $jual) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?= $jual['tgl_jual'] ?>
                                            </td>
                                            <td>
                                                <?= $jual['nama_pembeli'] ?>
                                            </td>
                                            <td>
                                                <?= $jual['nama_sampah'] ?>
                                            </td>
                                            <td>
                                                <?= $jual['jenis_sampah'] ?>
                                            </td>
                                            <td>
                                                <?= "Rp " . number_format($jual['harga'], 2, ',', '.')  ?>
                                            </td>
                                            <td>
                                                <?= $jual['berat'] ?>
                                            </td>
                                            <td>
                                                <?= "Rp " . number_format($jual['subtotal'], 2, ',', '.')  ?>
                                            </td>
                                            <td>
                                                <?php if ($jual['status'] == 1) : ?>
                                                    <span class="badge rounded-pill bg-success"><i class="bi bi-check-circle me-1"></i> Success</span>
                                                <?php endif ?>
                                            </td>
                                            <td>
                                                <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editJual-<?= $jual['id_jual'] ?>" title="Edit">
                                                    <i class="bi bi-pencil-square"></i>
                                                </button>
                                                <?php if ($jual['status'] == 0) : ?>
                                                    <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#confirmJual-<?= $jual['id_jual'] ?>" title="Selesai">
                                                        <i class="bi bi-patch-check-fill"></i>
                                                    </button>
                                                    <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delJual-<?= $jual['id_jual'] ?>" title="Hapus">
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