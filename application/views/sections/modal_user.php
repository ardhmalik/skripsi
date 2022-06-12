<?php foreach ($data_admin as $adm) : ?>
    <!-- Modal Nonaktif Admin -->
    <div class="modal fade" id="offAdm-<?= $adm['id_user'] ?>" data-bs-keyboard="false" tabindex="-1" aria-labelledby="offAdmin" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="offAdmin">Nonaktifkan admin</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Yakin menonaktifkan akun admin ini?
                        </h5>
                        <div class="row">
                            <div class="col-8 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <?php
                                        # Ternary operation to set foto image for user
                                        ($adm['foto'] == null) ? $adm['foto'] = 'avatar.png' : $adm['foto'];
                                        ?>
                                        <img src="<?= site_url('assets/img/user/') . $adm['foto'] ?>" alt="Profile" class="img-thumbnail rounded my-3">
                                        <h4><?= $adm['username'] ?></h4>
                                        <h6 class="fst-italic"><?= $adm['email'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span><?= $adm['role'] ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Nonaktif Admin -->
                        <form action="<?= site_url('off_admin') ?>" method="post">
                            <input type="hidden" name="id_admin" id="id_admin" value="<?= $adm['id_user'] ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-danger fw-bold" value="Ya, nonaktifkan">
                                </div>
                            </div>
                        </form>
                        <!-- End Form Nonaktif Admin -->
                    </div>
                </div>
                <!-- End Modal Body -->
            </div>
        </div>
    </div>
    <!-- End Modal Nonaktif Admin -->

    <!-- Modal Aktifkan Admin -->
    <div class="modal fade" id="onAdm-<?= $adm['id_user'] ?>" data-bs-keyboard="false" tabindex="-1" aria-labelledby="onAdmin" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="onAdmin">Aktifkan admin</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Yakin mengaktifkan akun admin ini?
                        </h5>
                        <div class="row">
                            <div class="col-8 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <?php
                                        # Ternary operation to set foto image for user
                                        ($adm['foto'] == null) ? $adm['foto'] = 'avatar.png' : $adm['foto'];
                                        ?>
                                        <img src="<?= site_url('assets/img/user/') . $adm['foto'] ?>" alt="Profile" class="img-thumbnail rounded my-3">
                                        <h4><?= $adm['username'] ?></h4>
                                        <h6 class="fst-italic"><?= $adm['email'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span><?= $adm['role'] ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Aktifkan Admin -->
                        <form action="<?= site_url('on_admin') ?>" method="post">
                            <input type="hidden" name="id_admin" id="id_admin" value="<?= $adm['id_user'] ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-primary fw-bold" value="Ya, aktifkan">
                                </div>
                            </div>
                        </form>
                        <!-- End Form Aktifkan Admin -->
                    </div>
                </div>
                <!-- End Modal Body -->
            </div>
        </div>
    </div>
    <!-- End Modal Aktifkan Admin -->
<?php endforeach ?>