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
                        <h5 class="card-title">Data Admin</h5>
                        <p>Berisi daftar seluruh admin Bank Sampah Induk Rumah Harum</p>

                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Username</th>
                                        <th scope="col">Role</th>
                                        <th scope="col">Tgl Daftar</th>
                                        <th scope="col">No.Telp</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($data_admin as $adm) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?= $adm['email'] ?>
                                            </td>
                                            <td>
                                                <?= $adm['username'] ?>
                                            </td>
                                            <td>
                                                <?= $adm['role'] ?>
                                            </td>
                                            <td>
                                                <?= $adm['tgl_daftar'] ?>
                                            </td>
                                            <td>
                                                <?= $adm['no_telp'] ?>
                                            </td>
                                            <td class="text-center">
                                                <span class="d-none"><?= $adm['status'] ?></span>
                                                <div class="btn-group" role="group" aria-label="Aksi button">
                                                    <button type="button" class="btn btn-sm fw-bold <?= ($adm['status'] == 1) ? 'btn-outline-danger' : 'btn-danger' ?>" <?= ($adm['status'] == 1) ? '' : 'disabled' ?> data-bs-toggle="modal" data-bs-target="#offAdm-<?= $adm['id_user'] ?>" title="Matikan akun">OFF</button>
                                                    <button type="button" class="btn btn-sm fw-bold <?= ($adm['status'] == 0) ? 'btn-outline-primary' : 'btn-primary' ?>" <?= ($adm['status'] == 0) ? '' : 'disabled' ?> data-bs-toggle="modal" data-bs-target="#onAdm-<?= $adm['id_user'] ?>" title="Aktifkan akun">ON</button>
                                                </div>
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