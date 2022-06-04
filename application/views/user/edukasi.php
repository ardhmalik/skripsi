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
                        <h5 class="card-title">Data Edukasi</h5>
                        <p>Berisi daftar kegiatan edukasi mitra</p>
                        <div class="row">
                            <div class="col-auto ms-auto">
                                <div class="btn btn-primary fw-bold" data-bs-toggle="modal" data-bs-target="#addEdu">
                                    <i class="bi bi-plus-square-fill"></i> Tambah Edukasi
                                </div>
                            </div>
                        </div>

                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Judul</th>
                                        <th scope="col">Tempat</th>
                                        <th scope="col">Mulai</th>
                                        <th scope="col">Selesai</th>
                                        <th scope="col">Keterangan</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($data_edu as $edu) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?php
                                                if (date('Y-m-d', strtotime($edu['selesai'])) < date('Y-m-d', strtotime('today'))) {
                                                    echo '<span class="badge rounded-pill bg-success"><i class="bi bi-check-circle me-1"></i> Success</span>';
                                                }
                                                ?>
                                            </td>
                                            <td>
                                                <?= (strlen($edu['judul']) > 20) ? substr($edu['judul'], 0, 20) . "..." : $edu['judul'] ?>
                                            </td>
                                            <td>
                                                <?= (strlen($edu['tempat']) > 20) ? substr($edu['tempat'], 0, 20) . "..." : $edu['tempat'] ?>
                                            </td>
                                            <td>
                                                <?= $edu['mulai'] ?>
                                            </td>
                                            <td>
                                                <?= $edu['selesai'] ?>
                                            </td>
                                            <td>
                                                <?= (strlen($edu['ket']) > 20 && $edu['ket'] != "") ? substr($edu['ket'], 0, 20) . "..." : $edu['ket'] ?>
                                            </td>
                                            <td class="text-center">
                                                <button class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#edu-<?= $edu['id_edu'] ?>" title="Detail">
                                                    <i class="bi bi-info-circle-fill"></i>
                                                </button>
                                                <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editEdu" title="Edit">
                                                    <i class="bi bi-pencil-square"></i>
                                                </button>
                                                <?php
                                                foreach ($followers_edu as $fe) {
                                                    if ($edu['id_edu'] == $fe['id_edu'] && $fe['followers'] < 1) {
                                                        echo `<button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delEdu" title="Hapus">
                                                            <i class="bi bi-trash2-fill"></i>
                                                        </button>`;
                                                    }
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