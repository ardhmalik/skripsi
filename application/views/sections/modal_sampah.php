<!-- Modal Add sampah -->
<div class="modal fade" id="addSampah" tabindex="-1" aria-labelledby="addsampah" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title" id="addsampah">Add sampah</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- End Modal Header -->

            <!-- Modal Body -->
            <div class="modal-body">
                <div class="container-fluid">
                    <!-- Form Add sampah -->
                    <form action="<?= site_url('add_sampah') ?>" method="post" enctype="multipart/form-data" class="mx-3 my-3">
                        <div class="mb-3 form-floating">
                            <select class="form-select" name="id_jenis" id="id_jenis" aria-label="Default select example" required>
                                <?php foreach ($data_jenis as $jns) : ?>
                                    <option value="<?= $jns['id_jenis'] ?>"><?= $jns['jenis_sampah'] ?></option>
                                <?php endforeach ?>
                            </select>
                            <label for="id_jenis" class="form-label">Jenis Sampah</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="nama" id="nama_sampah" value="<?= set_value('nama') ?>" placeholder="Enter new nama sampah" required>
                            <label for="nama_sampah">Nama Sampah</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="harga" id="harga_sampah" value="<?= set_value('harga') ?>" placeholder="Enter new harga sampah" required>
                            <label for="harga_sampah">Harga Sampah per kilogram</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <div class="pt-2">
                                <div class="input-group">
                                    <input type="file" name="gambar" id="gambar" value="" class="form-control" title="Pilih gambar sampah" accept="image/png, image/jpeg, image/jpg, image/gif">
                                    <label class="input-group-text me-2" for="gambar"><i class="bi bi-upload"></i></label>
                                </div>
                                <small class="text-muted fst-italic">Max: 1MB (1000x1000 px) *.(png,jpg,jpeg,gif)</small>
                            </div>
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

<!-- Modal Add jenis -->
<div class="modal fade" id="addJenis" tabindex="-1" aria-labelledby="addjenis" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title" id="addjenis">Add Jenis Sampah</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- End Modal Header -->

            <!-- Modal Body -->
            <div class="modal-body">
                <div class="container-fluid">
                    <!-- Form Add jenis -->
                    <form action="<?= site_url('add_jenis') ?>" method="post" class="mx-3 my-3">
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="jenis_sampah" id="nama_jenis" value="<?= set_value('jenis_sampah') ?>" placeholder="Enter new nama jenis sampah" required>
                            <label for="nama_jenis">Nama jenis</label>
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

<!-- Foreach loop to print data sampahs in modal -->
<?php foreach ($data_sampah as $sampah) : ?>
    <!-- Modal Edit sampah -->
    <div class="modal fade" id="editSampah-<?= $sampah['id_sampah'] ?>" tabindex="-1" aria-labelledby="formEditsampah" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="formEditsampah">Edit sampah</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <!-- Form edit sampah -->
                        <form action="<?= site_url('edit_sampah') ?>" method="post" enctype="multipart/form-data" class="mx-3 my-3">
                            <input type="hidden" name="id_sampah" id="id_sampah" value="<?= $sampah['id_sampah'] ?>">
                            <div class="mb-3 form-floating">
                                <select class="form-select" name="id_jenis" id="id_jenis" aria-label="Default select example" required>
                                    <?php foreach ($data_jenis as $jns) : ?>
                                        <option value="<?= $jns['id_jenis'] ?>" <?= ($sampah['jenis_sampah'] == $jns['jenis_sampah'] ? 'selected' : '') ?>><?= $jns['jenis_sampah'] ?></option>
                                    <?php endforeach ?>
                                </select>
                                <label for="id_jenis" class="form-label">Jenis Sampah</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="nama" id="nama_sampah" value="<?= $sampah['nama'] ?>" placeholder="Enter new nama sampah" required>
                                <label for="nama_sampah">Nama Sampah</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="harga" id="harga_sampah" value="<?= $sampah['harga'] ?>" placeholder="Enter new harga sampah" required>
                                <label for="harga_sampah">Harga Sampah per kilogram</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <div class="pt-2">
                                    <div class="input-group">
                                        <input type="file" name="gambar" id="gambar" value="<?= $sampah['gambar'] ?>" class="form-control" title="Pilih gambar sampah" accept="image/png, image/jpeg, image/jpg, image/gif">
                                        <label class="input-group-text me-2" for="gambar"><i class="bi bi-upload"></i></label>
                                    </div>
                                    <small class="text-muted fst-italic">Max: 1MB (1000x1000 px) *.(png,jpg,jpeg,gif)</small>
                                </div>
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
                        <!-- End Form edit sampah -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal Add sampah -->
<?php endforeach ?>

<!-- Foreach loop to print data jenis in modal -->
<?php foreach ($data_jenis as $jenis) : ?>
    <!-- Modal Edit jenis -->
    <div class="modal fade" id="editJenis-<?= $jenis['id_jenis'] ?>" tabindex="-1" aria-labelledby="formEditjenis" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="formEditjenis">Edit jenis</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <!-- Form edit jenis -->
                        <form action="<?= site_url('edit_jenis') ?>" method="post" class="mx-3 my-3">
                            <input type="hidden" name="id_jenis" id="id_jenis" value="<?= $jenis['id_jenis'] ?>">
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="jenis_sampah" id="jenis_sampah" value="<?= $jenis['jenis_sampah'] ?>" placeholder="Enter new jenis sampah" required>
                                <label for="jenis_sampah">Nama jenis</label>
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
                        <!-- End Form edit jenis -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal Add jenis -->
<?php endforeach ?>