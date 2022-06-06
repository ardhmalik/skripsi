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

<!-- Foreach loop to print data sampahs in modal -->
<?php foreach ($data_sampah as $sampah) : ?>

    <!-- Modal Details sampah -->
    <div class="modal fade" id="sampah-<?= $sampah['id_sampah'] ?>" tabindex="-1" aria-labelledby="detailsampah" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="detailsampah">Detail sampah</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <h5 class="fw-bold">
                                    <?= $sampah['judul'] ?>
                                </h5>
                            </div>
                            <div class="col-12">
                                <small class="text-muted fst-italic">
                                    <?php
                                    if (date('Y-m-d', strtotime($sampah['selesai'])) < date('Y-m-d', strtotime('today'))) {
                                        echo '<span class="badge rounded-pill bg-success"><i class="bi bi-check-circle me-1"></i> Success</span> | ';
                                    }

                                    foreach ($followers_sampah as $fe) {
                                        if ($sampah['id_sampah'] == $fe['id_sampah']) {
                                            echo '<i class="bi bi-file-person-fill"></i>' . $fe['followers'] . " mitra | ";
                                        }
                                    }
                                    ?>
                                    <i class="bi bi-clock-fill"></i> <?= $sampah['selesai'] ?>
                                    | <i class="bi bi-geo-alt-fill"></i> <?= $sampah['tempat'] ?>
                                </small>
                            </div>
                            <div class="col-12 mt-3">
                                <p class="fst-italic"> Pembicara : <b><?= $sampah['pembicara'] ?></b></p>
                                <p><?= $sampah['ket'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal Body -->
            </div>
        </div>
    </div>
    <!-- End Modal Details -->

    <!-- Modal Edit sampah -->
    <div class="modal fade" id="editsampah-<?= $sampah['id_sampah'] ?>" tabindex="-1" aria-labelledby="formEditsampah" aria-hidden="true">
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
                        <!-- Form Edit sampah -->
                        <form action="<?= site_url('edit_sampah') ?>" method="post" class="mx-3 my-3">
                            <input type="hidden" name="id_sampah" id="id_sampah" value="<?= $sampah['id_sampah'] ?>">
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="judul" id="judul" value="<?= $sampah['judul'] ?>" placeholder="Enter new judul" required>
                                <label for="judul">Judul</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <textarea class="form-control" id="tempat" name="tempat" style="height: 100px" placeholder="Describe your sampah" required><?= $sampah['tempat'] ?></textarea>
                                <label for="tempat">Tempat</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="ket" id="ket" value="<?= $sampah['ket'] ?>" placeholder="Enter new ket">
                                <label for="ket">Keterangan</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <select class="form-select" name="pembicara" id="pembicara" aria-label="Default select example">
                                    <?php foreach ($users as $usr) : ?>
                                        <option value="<?= $usr['id_user'] ?>" <?= ($usr['id_user'] == $sampah['id_pem'] ? 'selected' : '') ?>><?= $usr['username'] . " (" . $usr['role'] . ")" ?></option>
                                    <?php endforeach ?>
                                </select>
                                <label for="pembicara" class="form-label">Pembicara</label>
                            </div>
                            <div class="mb-3">
                                <label for="mulai" class="form-label">Mulai</label>
                                <input type="datetime-local" class="form-control" name="mulai" id="mulai" min="<?= date('Y-m-d', strtotime('today')) ?>T00:00" max="<?= date('Y-m-d', strtotime('last day of December')) ?>T00:00">
                            </div>
                            <div class="mb-3">
                                <label for="selesai" class="form-label">Selesai</label>
                                <input type="datetime-local" class="form-control" name="selesai" id="selesai" min="<?= date('Y-m-d', strtotime('today')) ?>T00:00" max="<?= date('Y-m-d', strtotime('last day of December')) ?>T00:00">
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
                        <!-- End Form Add sampah -->
                    </div>
                </div>
            </div>
            <!-- End Modal Body -->
        </div>
    </div>
    <!-- End Modal Add sampah -->
<?php endforeach ?>