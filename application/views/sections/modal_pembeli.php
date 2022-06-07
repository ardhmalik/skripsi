<!-- Modal Add pembeli -->
<div class="modal fade" id="addPembeli" tabindex="-1" aria-labelledby="addpembeli" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title" id="addpembeli">Add Pembeli</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- End Modal Header -->

            <!-- Modal Body -->
            <div class="modal-body">
                <div class="container-fluid">
                    <!-- Form Add pembeli -->
                    <form action="<?= site_url('add_pembeli') ?>" method="post" class="mx-3 my-3">
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="nama" id="nama" value="<?= set_value('nama') ?>" placeholder="Enter new nama pembeli" required>
                            <label for="nama">Nama pembeli</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="no_telp" id="no_telp" value="<?= set_value('no_telp') ?>" placeholder="Enter new No. HP pembeli" required>
                            <label for="no_telp">Nomor HP pembeli</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <textarea class="form-control" id="alamat" name="alamat" style="height: 100px" placeholder="New alamat" required><?= set_value('alamat') ?></textarea>
                            <label for="alamat">Alamat Pembeli</label>
                        </div>
                        <div class="d-flex bd-highlight">
                            <div class="p-2 bd-highlight">
                                <button type="reset" class="btn fw-bold btn-outline-secondary">Reset</button>
                            </div>
                            <div class="p-2 ms-auto bd-highlight">
                                <input type="submit" class="btn fw-bold btn-primary" value="Tambah"></input>
                            </div>
                        </div>
                    </form>
                    <!-- End Form Add sampah -->
                </div>
            </div>
        </div>
        <!-- End Modal Body -->
    </div>
</div>
<!-- End Modal Add sampah -->

<!-- Foreach loop to print data pembeli in modal -->
<?php foreach ($data_pembeli as $pembeli) : ?>
    <!-- Modal Edit pembeli -->
    <div class="modal fade" id="editPembeli-<?= $pembeli['id_pembeli'] ?>" tabindex="-1" aria-labelledby="formEditpembeli" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="formEditpembeli">Edit pembeli</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <!-- Form edit pembeli -->
                        <form action="<?= site_url('edit_pembeli') ?>" method="post" class="mx-3 my-3">
                            <input type="hidden" name="id_pembeli" id="id_pembeli" value="<?= $pembeli['id_pembeli'] ?>">
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="nama" id="nama" value="<?= $pembeli['nama'] ?>" placeholder="Enter new nama pembeli" required>
                                <label for="nama">Nama pembeli</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="no_telp" id="no_telp" value="<?= $pembeli['no_telp'] ?>" placeholder="Enter new No. HP pembeli" required>
                                <label for="no_telp">Nomor HP pembeli</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <textarea class="form-control" id="alamat" name="alamat" style="height: 100px" placeholder="New alamat" required><?= $pembeli['alamat'] ?></textarea>
                                <label for="alamat">Alamat Pembeli</label>
                            </div>
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="reset" class="btn fw-bold btn-outline-secondary">Reset</button>
                                </div>
                                <div class="p-2 ms-auto bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-primary" value="Simpan"></input>
                                </div>
                            </div>
                        </form>
                        <!-- End Form edit pembeli -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal Add pembeli -->


    <!-- Modal del pembeli -->
    <div class="modal fade" id="delPembeli-<?= $pembeli['id_pembeli'] ?>" tabindex="-1" aria-labelledby="formDelPembeli" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="formDelPembeli">Delete Pembeli</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <h5 class="text-center text-bold">
                            Anda yakin menghapus pembeli ini?
                        </h5>
                        <div class="row">
                            <div class="col-8 justify-content-center mx-auto">
                                <div class="card p-3 my-3">
                                    <div class="card-body text-center">
                                        <img src="<?= site_url('assets/img/user/avatar.png') ?>" alt="Profile" class="img-thumbnail rounded my-3">
                                        <h4><?= $pembeli['nama'] ?></h4>
                                        <h6 class="fst-italic"><?= $pembeli['alamat'] ?></h6>
                                        <div class="p-2 bg-dark text-light fst-italic rounded">
                                            <span><?= $pembeli['no_telp'] ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Form Aktifkan mitra -->
                        <form action="<?= site_url('del_pembeli') ?>" method="post">
                            <input type="hidden" name="id_pembeli" id="id_pembeli" value="<?= $pembeli['id_pembeli'] ?>">
                            <input type="hidden" name="nama" id="nama" value="<?= $pembeli['nama'] ?>">
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
    <!-- End Modal Add Edukasi -->
<?php endforeach ?>