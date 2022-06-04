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

    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Data Edukasi</h5>
                        <p>Berisi daftar kegiatan edukasi</p>
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
                                                <?php
                                                if (!is_null($mitra['id_edu'])) {
                                                    if ($edu['id_edu'] == $mitra['id_edu'] && date('Y-m-d H:i:s', strtotime($edu['selesai'])) > date('Y-m-d H:i:s', strtotime('today'))) { ?>
                                                        <button class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#cancelEdu-<?= $edu['id_edu'] ?>" title="Batal Ikut">
                                                            Batal
                                                        </button>
                                               <?php
                                                    }
                                                } else {
                                                    if (date('Y-m-d', strtotime($edu['mulai'])) > date('Y-m-d', strtotime('today'))) { ?>
                                                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#joinEdu-<?= $edu['id_edu'] ?>" title="Ikut">
                                                            Ikut
                                                        </button>
                                                <?php }
                                                } ?>
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