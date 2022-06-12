<?php foreach ($data_penjemputan as $jemput) : ?>
    <!-- Modal Konfirmasi penjemputan -->
    <div class="modal fade" id="confirmJemput-<?= $jemput['id_jemput'] ?>" data-bs-keyboard="false" tabindex="-1" aria-labelledby="confirmJemput" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmJemput">Konfirmasi penjemputan</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Yakin mengKonfirmasi akun penjemputan ini?
                        </h5>
                        <div class="row">
                            <div class="col-10 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <h4><?= $jemput['nama_sampah'] ?></h4>
                                        <h6 class="fst-italic"><?= $jemput['nama_mitra'] ?></h6>
                                        <h6 class="fst-italic"><?= $jemput['alamat'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span><?= $jemput['berat'] ?> kg</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Konfirmasi penjemputan -->
                        <form action="<?= site_url('confirm_jemput') ?>" method="post">
                            <input type="hidden" name="id_jemput" id="id_jemput" value="<?= $jemput['id_jemput'] ?>">
                            <input type="hidden" name="id_setor" id="id_setor" value="<?= $jemput['id_setor'] ?>">
                            <input type="hidden" name="nama_sampah" id="nama_sampah" value="<?= $jemput['nama_sampah'] ?>">
                            <input type="hidden" name="berat" id="berat" value="<?= $jemput['berat'] ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-success fw-bold" value="Ya, Konfirmasi">
                                </div>
                            </div>
                        </form>
                        <!-- End Form Konfirmasi penjemputan -->
                    </div>
                </div>
                <!-- End Modal Body -->
            </div>
        </div>
    </div>
    <!-- End Modal Konfirmasi penjemputan -->
<?php endforeach ?>