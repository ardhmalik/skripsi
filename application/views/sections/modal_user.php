<!-- Modal Add Edukasi -->
<div class="modal fade" id="addEdu" tabindex="-1" aria-labelledby="addEdu" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h5 class="modal-title" id="addEdu">Add Edukasi</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- End Modal Header -->

            <!-- Modal Body -->
            <div class="modal-body">
                <div class="container-fluid">
                    <!-- Form Add Edukasi -->
                    <form action="<?= site_url('add_edukasi') ?>" method="post" class="mx-3 my-3">
                        <input type="hidden" name="id_user" id="id_user" value="<?= $user['id_user'] ?>">
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="judul" id="judul" value="" placeholder="Enter new judul" required>
                            <label for="judul">Judul</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <textarea class="form-control" id="tempat" name="tempat" style="height: 100px" placeholder="Describe your Edukasi" required></textarea>
                            <label for="tempat">Tempat</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" name="ket" id="ket" value="" placeholder="Enter new ket"    >
                            <label for="ket">Keterangan</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <select class="form-select" name="pembicara" id="pembicara" aria-label="Default select example">
                                <?php foreach ($users as $usr) : ?>
                                    <option value="<?= $usr['id_user'] ?>"><?= $usr['username'] . " (" . $usr['role'] . ")" ?></option>
                                <?php endforeach ?>
                            </select>
                            <label for="pembicara" class="form-label">Pembicara</label>
                        </div>
                        <div class="mb-3">
                            <label for="mulai" class="form-label">Mulai</label>
                            <input type="datetime-local" class="form-control" name="mulai" id="mulai" min="<?= date('Y-m-d', strtotime('today')) ?>T00:00" max="<?= date('Y-m-d', strtotime('last day of December')) ?>T00:00" required>
                        </div>
                        <div class="mb-3">
                            <label for="selesai" class="form-label">Selesai</label>
                            <input type="datetime-local" class="form-control" name="selesai" id="selesai" min="<?= date('Y-m-d', strtotime('today')) ?>T00:00" max="<?= date('Y-m-d', strtotime('last day of December')) ?>T00:00" required>
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
                    <!-- End Form Add Edukasi -->
                </div>
            </div>
        </div>
        <!-- End Modal Body -->
    </div>
</div>
<!-- End Modal Add Edukasi -->