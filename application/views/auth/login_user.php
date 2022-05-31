<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-7 col-lg-5">
            <?= $this->session->flashdata('message') ?>
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
                    <form action="" method="post" class="mx-4 my-5">
                        <div class="mb-3 form-floating ">
                            <input type="email" class="form-control" id="email" name="email" value="<?= set_value('email', $this->input->post('email')) ?>" placeholder="example@email.com" required>
                            <label for="email">Email</label>
                            <?= form_error('email', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="mb-3 form-floating">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Must include string and numbers" required>
                            <label for="password">Password</label>
                            <?= form_error('password', '<span class="text-danger">', '</span>') ?>
                        </div>
                        <div class="d-flex bd-highlight">
                            <div class="p-2 bd-highlight">
                                <button type="reset" class="btn fw-bold btn-light btn-outline-secondary">Batal</button>
                            </div>
                            <div class="ms-auto p-2 bd-highlight">
                                <button type="submit" class="btn fw-bold btn-primary">Login</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-footer text-muted">
                    <span>Belum punya akun?</span>
                    <a href="<?= site_url('reg_user') ?>" class="fw-bold">Daftar disini</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
// $pass = "Ketua123";
// $hash = password_hash($pass, PASSWORD_DEFAULT);
// echo $hash;

// echo $this->session->userdata('tipe');
?>