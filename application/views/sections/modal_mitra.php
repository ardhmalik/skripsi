<?php foreach ($data_mitra as $mtr) : ?>
    <!-- Modal Nonaktif mitra -->
    <div class="modal fade" id="offMtr-<?= $mtr['id_mitra'] ?>" data-bs-keyboard="false" tabindex="-1" aria-labelledby="offmitra" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="offmitra">Nonaktifkan mitra</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            <!-- <= var_dump($mtr['id_mitra']) ?> -->
                            Yakin menonaktifkan akun mitra ini?
                        </h5>
                        <div class="row">
                            <div class="col-8 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <?php
                                        # Ternary operation to set foto image for user
                                        ($mtr['foto'] == null) ? $mtr['foto'] = 'avatar.png' : $mtr['foto'];
                                        ?>
                                        <img src="<?= site_url('assets/img/user/') . $mtr['foto'] ?>" alt="Profile" class="img-thumbnail rounded my-3">
                                        <h4><?= $mtr['username'] ?></h4>
                                        <h6 class="fst-italic"><?= $mtr['email'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span><?= $mtr['tipe_mitra'] ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Nonaktif mitra -->
                        <form action="<?= site_url('off_mitra') ?>" method="post">
                            <input type="hidden" name="id_mitra" id="id_mitra" value="<?= $mtr['id_mitra'] ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-danger fw-bold" value="Ya, nonaktifkan">
                                </div>
                            </div>
                        </form>
                        <!-- End Form Nonaktif mitra -->
                    </div>
                </div>
                <!-- End Modal Body -->
            </div>
        </div>
    </div>
    <!-- End Modal Nonaktif mitra -->

    <!-- Modal Aktifkan mitra -->
    <div class="modal fade" id="onMtr-<?= $mtr['id_mitra'] ?>" data-bs-keyboard="false" tabindex="-1" aria-labelledby="onmitra" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="onmitra">Aktifkan mitra</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Yakin mengaktifkan akun mitra ini?
                        </h5>
                        <div class="row">
                            <div class="col-8 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <?php
                                        # Ternary operation to set foto image for user
                                        ($mtr['foto'] == null) ? $mtr['foto'] = 'avatar.png' : $mtr['foto'];
                                        ?>
                                        <img src="<?= site_url('assets/img/user/') . $mtr['foto'] ?>" alt="Profile" class="img-thumbnail rounded my-3">
                                        <h4><?= $mtr['username'] ?></h4>
                                        <h6 class="fst-italic"><?= $mtr['email'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span><?= $mtr['tipe_mitra'] ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Aktifkan mitra -->
                        <form action="<?= site_url('on_mitra') ?>" method="post">
                            <input type="hidden" name="id_mitra" id="id_mitra" value="<?= $mtr['id_mitra'] ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-primary fw-bold" value="Ya, aktifkan">
                                </div>
                            </div>
                        </form>
                        <!-- End Form Aktifkan mitra -->
                    </div>
                </div>
                <!-- End Modal Body -->
            </div>
        </div>
    </div>
    <!-- End Modal Aktifkan mitra -->
<?php endforeach ?>