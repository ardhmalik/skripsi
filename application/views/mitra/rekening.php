<main id="main" class="main">
    <div class="pagetitle">
        <h1><?= $title ?></h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('dashboard') ?>">Home</a></li>
                <li class="breadcrumb-item active"><?= $title ?></li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section rekening">
        <div class="row">
            <div class="col">
                <?= $this->session->flashdata('message') ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-5">
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="<?= site_url('assets/img/user/') . $mitra['foto'] ?>" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <div class="card-header">
                                    <h3 class="fw-bold fst-italic text-primary fs-1"><?= $rekening['bank'] ?></h3>
                                </div>
                                <h3 class="card-title"><?= $rekening['no_rek'] ?></h3>
                                <p class="card-text">a.n <?= $rekening['atas_nama'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-7">
                <div class="card">
                    <div class="card-header">
                        <h4>Edit rekening</h4>
                    </div>
                    <div class="card-body pt-3">
                        <!-- Profile Edit Form -->
                        <form action="<?= site_url('edit_rek') ?>" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="id_rek" id="id_rek" value="<?= $rekening['id_rek'] ?>">
                            <div class="row mb-3">
                                <label for="bank" class="col-md-4 col-lg-3 col-form-label">Bank</label>
                                <div class="col-md-8 col-lg-9">
                                    <input name="bank" type="text" class="form-control" id="bank" value="<?= $rekening['bank'] ?>" required>
                                    <?= form_error('bank', '<span class="text-danger">', '</span>') ?>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="no_rek" class="col-md-4 col-lg-3 col-form-label">Nomor Rekening</label>
                                <div class="col-md-8 col-lg-9">
                                    <input name="no_rek" type="no_rek" class="form-control" id="no_rek" value="<?= $rekening['no_rek'] ?>" required>
                                    <?= form_error('no_rek', '<span class="text-danger">', '</span>') ?>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="atas_nama" class="col-md-4 col-lg-3 col-form-label">Atas Nama</label>
                                <div class="col-md-8 col-lg-9">
                                    <input name="atas_nama" type="text" class="form-control" id="atas_nama" value="<?= $rekening['atas_nama'] ?>" required>
                                    <?= form_error('atas_nama', '<span class="text-danger">', '</span>') ?>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </form><!-- End Profile Edit Form -->
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>