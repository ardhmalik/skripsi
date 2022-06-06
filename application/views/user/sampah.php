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
                    <div class="card-body pt-3">
                        <!-- Bordered Tabs -->
                        <ul class="nav nav nav-pills nav-fill">
                            <li class="nav-item">
                                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#dataSampah">Sampah</button>
                            </li>
                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#dataJenis">Jenis Sampah</button>
                            </li>
                        </ul>
                        <div class="tab-content pt-4">
                            <div class="tab-pane fade show active dataSampah" id="dataSampah">
                                <div class="card shadow-none">
                                    <div class="card-body">
                                        <h5 class="card-title">Data Sampah</h5>
                                        <p>Berisi daftar sampah yang bisa disetorkan</p>
                                        <div class="row">
                                            <div class="col-auto ms-auto">
                                                <div class="btn btn-primary fw-bold" data-bs-toggle="modal" data-bs-target="#addSampah">
                                                    <i class="bi bi-plus-square-fill"></i> Tambah Sampah
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Table with stripped rows -->
                                        <div class="table-responsive">
                                            <table class="table datatable table-hover">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Contoh Gambar</th>
                                                        <th scope="col">Nama Sampah</th>
                                                        <th scope="col">Jenis</th>
                                                        <th scope="col">Harga</th>
                                                        <th scope="col">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    $no = 0;

                                                    foreach ($data_sampah as $sampah) : ?>
                                                        <tr>
                                                            <th scope="row">
                                                                <?= ++$no ?>
                                                            </th>
                                                            <td class="text-center">
                                                                <?php (is_null($sampah['gambar']) || $sampah['gambar'] == '') ? $sampah['gambar'] = 'default.png' : $sampah['gambar']; ?>
                                                                <img src="<?= site_url('assets/img/sampah/') . $sampah['gambar'] ?>" class="img-thumbnail" width="80px" alt="Contoh gambar sampah">
                                                            </td>
                                                            <td>
                                                                <?= $sampah['nama'] ?>
                                                            </td>
                                                            <td>
                                                                <?= $sampah['jenis_sampah'] ?>
                                                            </td>
                                                            <td>
                                                                <?= "Rp " . number_format($sampah['harga'], 0, ',', '.')  ?>
                                                            </td>
                                                            <td class="text-center">
                                                                <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editSampah-<?= $sampah['id_sampah'] ?>" title="Edit">
                                                                    <i class="bi bi-pencil-square"></i>
                                                                </button>
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
                            <div class="tab-pane fade" id="dataJenis">
                                <div class="card shadow-none">
                                    <div class="card-body">
                                        <h5 class="card-title">Data Jenis Sampah</h5>
                                        <p>Berisi jenis sampah yang bisa disetorkan</p>
                                        <div class="row">
                                            <div class="col-auto ms-auto">
                                                <div class="btn btn-primary fw-bold" data-bs-toggle="modal" data-bs-target="#addJenis">
                                                    <i class="bi bi-plus-square-fill"></i> Tambah Jenis
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Table with stripped rows -->
                                        <div class="table-responsive">
                                            <table class="table datatable table-hover">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Nama Jenis</th>
                                                        <th scope="col">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    $no = 0;
                                                    foreach ($data_jenis as $jns) : ?>
                                                        <tr>
                                                            <th scope="row">
                                                                <?= ++$no ?>
                                                            </th>
                                                            <td>
                                                                <?= $jns['jenis_sampah'] ?>
                                                            </td>
                                                            <td class="text-center">
                                                                <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editJenis-<?= $jns['id_jenis'] ?>" title="Edit">
                                                                    <i class="bi bi-pencil-square"></i>
                                                                </button>
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
                        </div><!-- End Bordered Tabs -->
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>