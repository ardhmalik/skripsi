<!-- Foreach loop to print data edus in modal -->
<?php foreach ($data_edu as $edu) : ?>

    <!-- Modal Details edu -->
    <div class="modal fade" id="joinEdu-<?= $edu['id_edu'] ?>" tabindex="-1" aria-labelledby="joinEdu" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="joinEdu">Ikuti Edukasi</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <h5 class="fw-bold">
                                    <?= $edu['judul'] ?>
                                </h5>
                            </div>
                            <div class="col-12">
                                <small class="text-muted fst-italic">
                                    <?php
                                    foreach ($followers_edu as $fe) {
                                        if ($edu['id_edu'] == $fe['id_edu']) {
                                            echo '<i class="bi bi-file-person-fill"></i>' . $fe['followers'] . " mitra | ";
                                        }
                                    }
                                    ?>
                                    <i class="bi bi-clock-fill"></i> <?= $edu['selesai'] ?>
                                    | <i class="bi bi-geo-alt-fill"></i> <?= $edu['tempat'] ?>
                                </small>
                            </div>
                            <div class="col-12 mt-3">
                                <p class="fst-italic"> Pembicara : <b><?= $edu['pembicara'] ?></b></p>
                                <p><?= $edu['ket'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal Body -->

                <!-- Modal Footer -->
                <div class="modal-footer">
                    <form action="<?= site_url('join_edukasi') ?>" method="post">
                        <input type="hidden" name="id_mitra" id="id_mitra" value="<?= $mitra['id_mitra'] ?>">
                        <input type="hidden" name="id_edu" id="id_edu" value="<?= $edu['id_edu'] ?>">
                        <button type="submit" class="btn fw-bold btn-primary">
                            <i class="bi bi-plus-circle-fill"></i> Ikuti
                        </button>
                    </form>
                </div>
                <!-- End Modal Footer -->
            </div>
        </div>
    </div>
    <!-- End Modal Details -->

    <!-- Modal Aktifkan mitra -->
    <div class="modal fade" id="cancelEdu-<?= $edu['id_edu'] ?>" data-bs-keyboard="false" tabindex="-1" aria-labelledby="cancelEdu" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="cancelEdu">Batal ikut edukasi</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Anda yakin membatalkan untuk bergabung ke edukasi?
                        </h5>
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body p-3">
                                        <div class="col-12">
                                            <h5 class="fw-bold">
                                                <?= $edu['judul'] ?>
                                            </h5>
                                        </div>
                                        <div class="col-12">
                                            <small class="text-muted fst-italic">
                                                <?php
                                                foreach ($followers_edu as $fe) {
                                                    if ($edu['id_edu'] == $fe['id_edu']) {
                                                        echo '<i class="bi bi-file-person-fill"></i>' . $fe['followers'] . " mitra | ";
                                                    }
                                                }
                                                ?>
                                                <i class="bi bi-clock-fill"></i> <?= $edu['selesai'] ?>
                                                | <i class="bi bi-geo-alt-fill"></i> <?= $edu['tempat'] ?>
                                            </small>
                                        </div>
                                        <div class="col-12 mt-3">
                                            <p class="fst-italic"> Pembicara : <b><?= $edu['pembicara'] ?></b></p>
                                            <p><?= $edu['ket'] ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Aktifkan mitra -->
                        <form action="<?= site_url('cancel_edukasi') ?>" method="post">
                            <input type="hidden" name="id_mitra" id="id_mitra" value="<?= $mitra['id_mitra'] ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-primary fw-bold" value="Ya, batalkan">
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