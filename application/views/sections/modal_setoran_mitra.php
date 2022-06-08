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

<?php foreach ($setoran as $setor) : ?>
    <!-- Modal Edit setoran -->
    <div class="modal fade" id="editSetor-<?= $setor['id_setor'] ?>" tabindex="-1" aria-labelledby="editSetor" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="editSetor">Edit Setoran</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <!-- Form Edit setoran -->
                        <form action="<?= site_url('edit_setoran') ?>" method="post" class="mx-3 my-3">
                            <input type="hidden" name="id_setor" value="<?= $setor['id_setor'] ?>">
                            <input type="hidden" name="curr_jadwal_jemput" value="<?= $setor['jadwal_jemput'] ?>">
                            <input type="hidden" name="curr_id_sampah" value="<?= $setor['id_sampah'] ?>">
                            <input type="hidden" name="curr_berat" value="<?= $setor['berat'] ?>">
                            <div class="mb-3 form-floating">
                                <select class="form-select" name="sampah" id="sampah" aria-label="Default select example" required>
                                    <option value="">Pilih</option>
                                    <?php foreach ($data_sampah as $sampah) : ?>
                                        <option value="<?= $sampah['id_sampah'] . '_' . $sampah['harga'] . '_' . $sampah['nama'] ?>" <?= ($sampah['id_sampah'] == $setor['id_sampah']) ? 'selected' : '' ?>><?= $sampah['nama'] . " - Rp " . number_format($sampah['harga'], 0, ',', '.') . "/kg" ?></option>
                                    <?php endforeach ?>
                                </select>
                                <label for="sampah" class="form-label">Sampah</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="berat" id="berat" value="<?= $setor['berat'] ?>" placeholder="Enter new berat" required>
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
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="p-2 ms-auto bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-primary" value="Simpan"></input>
                                </div>
                            </div>
                        </form>
                        <!-- End Form Edit setoran -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal Edit setoran -->


    <!-- Modal del setor -->
    <div class="modal fade" id="delSetor-<?= $setor['id_setor'] ?>" tabindex="-1" aria-labelledby="formDelSetor" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="formDelSetor">Delete Setoran</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Anda yakin menghapus setoran ini?
                        </h5>
                        <div class="row">
                            <div class="col-10 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <h4><?= $setor['nama_sampah'] ?></h4>
                                        <h6 class="fst-italic">Berat : <?= $setor['berat'] ?>kg | Harga : Rp <?= number_format($sampah['harga'], 0, ',', '.') ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span>Subtotal : <?= "Rp " . number_format($setor['subtotal'], 2, ',', '.') ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Aktifkan mitra -->
                        <form action="<?= site_url('del_setoran') ?>" method="post">
                            <input type="hidden" name="id_setor" id="id_setor" value="<?= $setor['id_setor'] ?>">
                            <input type="hidden" name="nama_sampah" id="nama_sampah" value="<?= $setor['nama_sampah'] ?>">
                            <input type="hidden" name="subtotal" id="subtotal" value="<?= "Rp " . number_format($setor['subtotal'], 2, ',', '.') ?>">
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