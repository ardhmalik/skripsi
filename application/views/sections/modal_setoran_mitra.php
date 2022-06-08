<!-- Modal Add setoran -->
<div class="modal fade" id="addSetoran" tabindex="-1" aria-labelledby="addSetoran" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title" id="addSetoran">Add Setoran</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- End Modal Header -->

            <!-- Modal Body -->
            <div class="modal-body">
                <div class="container-fluid">
                    <!-- Form Add setoran -->
                    <form action="<?= site_url('add_setoran') ?>" method="post" class="mx-3 my-3">
                        <div class="mb-3 form-floating">
                            <select class="form-select" name="sampah" id="sampah" aria-label="Default select example" required>
                                <option value="">Pilih</option>
                                <?php foreach ($data_sampah as $sampah) : ?>
                                    <option value="<?= $sampah['id_sampah'] . '_' . $sampah['harga'] . '_' . $sampah['nama'] ?>"><?= $sampah['nama'] . " - Rp " . number_format($sampah['harga'], 0, ',', '.') . "/kg" ?></option>
                                <?php endforeach ?>
                            </select>
                            <label for="sampah" class="form-label">Sampah</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="berat" id="berat" value="<?= set_value('berat') ?>" placeholder="Enter new berat" required>
                            <label for="berat">Berat</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="date" class="form-control" id="jadwal_jemput" name="jadwal_jemput" min="<?= date('Y-m-d', strtotime('today')) ?>" max="<?= date('Y-m-d', strtotime('last day of December')) ?>" placeholder="Must include string and numbers">
                            <label for="jadwal_jemput">Jadwal Jemput</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="time" class="form-control" id="waktu_jemput" name="waktu_jemput" min="07:00" max="17:00" placeholder="Must include string and numbers">
                            <label for="waktu_jemput">Waktu Jemput</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="curr_jadwal" id="jadwalJemput">
                                <label class="form-check-label" for="jadwalJemput">
                                    Samakan jadwal jemput dengan profil
                                </label>
                            </div>
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
                    <!-- End Form Add setoran -->
                </div>
            </div>
        </div>
        <!-- End Modal Body -->
    </div>
</div>
<!-- End Modal Add setoran -->