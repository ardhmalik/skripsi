<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mt-4">
                        <div class="col-4">
                            <img src="<?= site_url('assets/img/logo-bsi-rumah-harum.png') ?>" class="mb-3 mx-auto d-block" style="width: 80px;" alt="Logo BSI Rumah Harum">
                        </div>
                        <div class="col-auto ms-auto my-auto">
                            <h2 class="text-right fw-bold me-4">
                                <?= $title ?>
                            </h2>
                        </div>
                    </div>
                    <form action="" method="post" class="mx-4 my-4">
                        <div class="form-floating mb-4">
                            <select class="form-select" id="id_tipe" name="id_tipe" aria-label="State">
                                <?php foreach ($tipe as $tp) : ?>
                                    <option value="<?= $tp['id_tipe'] ?>"><?= $tp['tipe_mitra'] ?></option>
                                <?php endforeach ?>
                            </select>
                            <label for="id_tipe">Tipe Mitra</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="email" class="form-control" id="email" name="email" value="<?= set_value('email') ?>" placeholder="example@email.com" required>
                            <label for="email">Email</label>
                            <?= form_error('email', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="username" class="form-control" id="username" name="username" value="<?= set_value('username') ?>" placeholder="Create a unique username" required>
                            <label for="username">Username</label>
                            <?= form_error('username', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Must include string and numbers" required>
                            <label for="password">Password</label>
                            <?= form_error('password', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="form-floating mb-4">
                            <textarea class="form-control" placeholder="Address" id="alamat" name="alamat" style="height: 100px;" required></textarea>
                            <label for="alamat">Alamat lengkap</label>
                            <?= form_error('alamat', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="text" class="form-control" id="no_telp" name="no_telp" placeholder="Must include string and numbers" required>
                            <label for="no_telp">Nomor HP</label>
                            <?= form_error('no_telp', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="date" class="form-control" id="jadwal_jemput" name="jadwal_jemput" min="<?= date('Y-m-d', strtotime('today')) ?>" max="<?= date('Y-m-d', strtotime('last day of December')) ?>" placeholder="Must include string and numbers" required>
                            <label for="jadwal_jemput">Jadwal Penjemputan</label>
                            <?= form_error('jadwal_jemput', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="time" class="form-control" id="waktu_jemput" name="waktu_jemput" min="07:00" max="17:00" placeholder="Must include string and numbers" required>
                            <label for="waktu_jemput">Waktu Penjemputan</label>
                            <div class="fw-bold mt-2 text-end">PM=Malam  |  AM=Pagi</div>
                            <?= form_error('waktu_jemput', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="d-flex bd-highlight">
                            <div class="p-2 bd-highlight">
                                <button type="reset" class="btn fw-bold btn-light btn-outline-secondary">Batal</button>
                            </div>
                            <div class="ms-auto p-2 bd-highlight">
                                <button type="submit" class="btn fw-bold btn-primary">Daftar</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-footer text-muted">
                    <span>Sudah punya akun?</span>
                    <a href="<?= site_url('login_mitra') ?>" class="fw-bold">Login disini</a>
                </div>
            </div>
        </div>
    </div>
</div>