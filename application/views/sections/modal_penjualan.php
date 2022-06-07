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
                                    <option value="<?= $sampah['id_sampah'].'_'.$sampah['harga'] ?>"><?= $sampah['nama'] . " - Rp " . number_format($sampah['harga'], 0, ',', '.') . "/kg" ?></option>
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