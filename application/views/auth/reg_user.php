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
                            <select class="form-select" id="id_role" name="id_role" aria-label="State">
                                <?php foreach ($role as $rl) : ?>
                                    <option value="<?= $rl['id_role'] ?>"><?= $rl['role'] ?></option>
                                <?php endforeach ?>
                            </select>
                            <label for="id_role">Posisi</label>
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
                            <input type="text" class="form-control" id="no_telp" name="no_telp" placeholder="Must include string and numbers" required>
                            <label for="no_telp">Nomor HP</label>
                            <?= form_error('no_telp', '<span class="text-danger">', '</span>') ?>
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
                    <a href="<?= site_url('login_user') ?>" class="fw-bold">Login disini</a>
                </div>
            </div>
        </div>
    </div>
</div>