<!-- Modal Add penjualan -->
<div class="modal fade" id="addJual" tabindex="-1" aria-labelledby="addJual" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title" id="addJual">Add Penjualan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- End Modal Header -->

            <!-- Modal Body -->
            <div class="modal-body">
                <div class="container-fluid">
                    <!-- Form Add penjualan -->
                    <form action="<?= site_url('add_penjualan') ?>" method="post" class="mx-3 my-3">
                        <div class="mb-3 form-floating">
                            <select class="form-select" name="id_pembeli" id="pembeli" aria-label="Default select example" required>
                                <option value="">Pilih</option>
                                <?php foreach ($data_pembeli as $pembeli) : ?>
                                    <option value="<?= $pembeli['id_pembeli'] ?>"><?= $pembeli['nama'] ?></option>
                                <?php endforeach ?>
                            </select>
                            <label for="pembeli" class="form-label">Pembeli</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <select class="form-select" name="sampah" id="sampah" aria-label="Default select example" required>
                                <option value="">Pilih</option>
                                <?php foreach ($data_sampah as $sampah) : ?>
                                    <option value="<?= $sampah['id_sampah'] . '_' . $sampah['harga'] ?>"><?= $sampah['nama'] . " - Rp " . number_format($sampah['harga'], 0, ',', '.') . "/kg" ?></option>
                                <?php endforeach ?>
                            </select>
                            <label for="sampah" class="form-label">Sampah</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="berat" id="berat" value="<?= set_value('berat') ?>" placeholder="Enter new berat" required>
                            <label for="berat">Berat</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="fee" id="fee" value="<?= set_value('fee') ?>" placeholder="Enter new fee" required>
                            <label for="fee">Fee</label>
                        </div>
                        <div class="d-flex bd-highlight">
                            <div class="p-2 bd-highlight">
                                <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                            </div>
                            <div class="p-2 ms-auto bd-highlight">
                                <input type="submit" class="btn fw-bold btn-primary" value="Tambah"></input>
                            </div>
                        </div>
                    </form>
                    <!-- End Form Add penjualan -->
                </div>
            </div>
        </div>
        <!-- End Modal Body -->
    </div>
</div>
<!-- End Modal Add penjualan -->

<?php foreach ($penjualan as $jual) : ?>
    <!-- Modal edit penjualan -->
    <div class="modal fade" id="editJual-<?= $jual['id_jual'] ?>" tabindex="-1" aria-labelledby="editJual" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="editJual">Edit Penjualan</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <!-- Form edit penjualan -->
                        <form action="<?= site_url('edit_penjualan') ?>" method="post" class="mx-3 my-3">
                            <input type="hidden" name="id_jual" value="<?= $jual['id_jual'] ?>">
                            <div class="mb-3 form-floating">
                                <select class="form-select" name="id_pembeli" id="pembeli" aria-label="Default select example" required>
                                    <option value="">Pilih</option>
                                    <?php foreach ($data_pembeli as $pembeli) : ?>
                                        <option value="<?= $pembeli['id_pembeli'] ?>" <?= ($pembeli['id_pembeli'] == $jual['id_pembeli']) ? 'selected' : '' ?>><?= $pembeli['nama'] ?></option>
                                    <?php endforeach ?>
                                </select>
                                <label for="pembeli" class="form-label">Pembeli</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <select class="form-select" name="sampah" id="sampah" aria-label="Default select example" required>
                                    <option value="">Pilih</option>
                                    <?php foreach ($data_sampah as $sampah) : ?>
                                        <?php
                                        ($sampah['id_sampah'] == $jual['id_sampah']) ? $harga = $sampah['harga'] : '';
                                        $fee = ($jual['subtotal'] / $jual['berat']) - $harga;
                                        ?>
                                        <option value="<?= $sampah['id_sampah'] . '_' . $sampah['nama'] . '_' . $sampah['harga'] ?>" <?= ($sampah['id_sampah'] == $jual['id_sampah']) ? 'selected' : '' ?>><?= $sampah['nama'] . " - Rp " . number_format($sampah['harga'], 0, ',', '.') . "/kg" ?></option>
                                    <?php endforeach ?>
                                </select>
                                <label for="sampah" class="form-label">Sampah</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="berat" id="berat" value="<?= $jual['berat'] ?>" placeholder="Enter new berat" required>
                                <label for="berat">Berat</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="fee" id="fee" value="<?= $fee ?>" placeholder="Enter new fee" required>
                                <label for="fee">Fee</label>
                            </div>
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="p-2 ms-auto bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-primary" value="Simpan"></input>
                                </div>
                            </div>
                        </form>
                        <!-- End Form edit penjualan -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal Edit penjualan -->
<?php endforeach ?>

<?php foreach ($data_jual as $jual) : ?>
    <!-- Modal confirm jual -->
    <div class="modal fade" id="confirmJual-<?= $jual['id_jual'] ?>" tabindex="-1" aria-labelledby="confirmJual" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmJual">Confirm Penjualan</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Yakin menyelesaikan penjualan ini?
                        </h5>
                        <div class="row">
                            <div class="col-12 text-center">
                                <span class="fst-italic">
                                    <i class="bi bi-info-circle-fill"></i>
                                    Pastikan pembeli telah melakukan pembayaran penuh
                                </span>
                            </div>
                            <div class="col-8 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <h4><?= $jual['nama_sampah'] ?></h4>
                                        <h6 class="fst-italic">Pembeli : <?= $jual['nama_pembeli'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span>Subtotal : <?= "Rp " . number_format($jual['subtotal'], 2, ',', '.') ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Aktifkan mitra -->
                        <form action="<?= site_url('confirm_jual') ?>" method="post">
                            <input type="hidden" name="id_jual" id="id_jual" value="<?= $jual['id_jual'] ?>">
                            <input type="hidden" name="nama_sampah" id="nama_sampah" value="<?= $jual['nama_sampah'] ?>">
                            <input type="hidden" name="subtotal" id="subtotal" value="<?= "Rp " . number_format($jual['subtotal'], 2, ',', '.') ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-success fw-bold" value="Ya, selesaikan">
                                </div>
                            </div>
                        </form>
                        <!-- End Form Aktifkan mitra -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal confirm Edukasi -->

    <!-- Modal del jual -->
    <div class="modal fade" id="delJual-<?= $jual['id_jual'] ?>" tabindex="-1" aria-labelledby="formDelJual" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="formDelJual">Delete Penjualan</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Anda yakin menghapus penjualan ini?
                        </h5>
                        <div class="row">
                            <div class="col-8 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <h4><?= $jual['nama_sampah'] ?></h4>
                                        <h6 class="fst-italic">Pembeli : <?= $jual['nama_pembeli'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span>Subtotal : <?= "Rp " . number_format($jual['subtotal'], 2, ',', '.') ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Aktifkan mitra -->
                        <form action="<?= site_url('del_penjualan') ?>" method="post">
                            <input type="hidden" name="id_jual" id="id_jual" value="<?= $jual['id_jual'] ?>">
                            <input type="hidden" name="nama_sampah" id="nama_sampah" value="<?= $jual['nama_sampah'] ?>">
                            <input type="hidden" name="subtotal" id="subtotal" value="<?= "Rp " . number_format($jual['subtotal'], 2, ',', '.') ?>">
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="ms-auto p-2 bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-danger fw-bold" value="Ya, hapus">
                                </div>
                            </div>
                        </form>
                        <!-- End Form Aktifkan mitra -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal Del Edukasi -->
<?php endforeach ?>