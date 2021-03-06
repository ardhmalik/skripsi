<main id="main" class="main">
    <div class="pagetitle">
        <h1><?= $title ?></h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('dashboard_user') ?>">Home</a></li>
                <li class="breadcrumb-item active"><?= $title ?></li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
        <div class="row">
            <div class="col">
                <?= $this->session->flashdata('message') ?>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-4">
                <div class="card">
                    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
                        <img src="<?= site_url('assets/img/user/') . $user['foto'] ?>" alt="Profile" class="rounded-circle">
                        <h2><?= $user['username'] ?></h2>
                        <h3><?= $this->session->userdata('role') ?></h3>
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <div class="card">
                    <div class="card-body pt-3">
                        <!-- Bordered Tabs -->
                        <ul class="nav nav-tabs nav-tabs-bordered">
                            <li class="nav-item">
                                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
                            </li>
                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
                            </li>
                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
                            </li>
                        </ul>
                        <div class="tab-content pt-2">
                            <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                <h5 class="card-title">About</h5>
                                <p class="small fst-italic">
                                    Akun ini hanya dapat diakses oleh admin Bank Sampah Induk Rumah Harum
                                </p>
                                <h5 class="card-title">Profile Details</h5>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label ">Username</div>
                                    <div class="col-lg-9 col-md-8"><?= $user['username'] ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Email</div>
                                    <div class="col-lg-9 col-md-8"><?= $user['email'] ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Posisi</div>
                                    <div class="col-lg-9 col-md-8"><?= $this->session->userdata('role') ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Nomor HP</div>
                                    <div class="col-lg-9 col-md-8"><?= $user['no_telp'] ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Bergabung</div>
                                    <div class="col-lg-9 col-md-8"><?= date('d M Y ~ H:i:sT', strtotime($user['tgl_daftar'])) ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Organisasi</div>
                                    <div class="col-lg-9 col-md-8"><?= $project ?></div>
                                </div>
                            </div>
                            <div class="tab-pane fade profile-edit pt-3" id="profile-edit">
                                <!-- Profile Edit Form -->
                                <form action="<?= site_url('edit_profil') ?>" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="id_user" id="id_user" value="<?= $user['id_user'] ?>">
                                    <div class="row mb-3">
                                        <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                                        <div class="col-md-8 col-lg-9">
                                            <img src="<?= site_url('assets/img/user/') . $user['foto'] ?>" class="img-fluid rounded" alt="Profile foto"><br>
                                            <small class="text-muted fst-italic">Max: 1MB (1000x1000 px) *.(png,jpg,jpeg,gif)</small>
                                            <div class="pt-2">
                                                <div class="input-group input-group-sm w-50">
                                                    <input type="file" name="foto" id="foto" value="<?= $user['foto'] ?>" class="form-control" title="Upload new profile image" accept="image/png, image/jpeg, image/jpg, image/gif">
                                                    <label class="input-group-text  me-2" for="foto"><i class="bi bi-upload"></i></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="username" class="col-md-4 col-lg-3 col-form-label">Username</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="username" type="text" class="form-control" id="username" value="<?= $user['username'] ?>" required>
                                            <?= form_error('username', '<span class="text-danger">', '</span>') ?>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="email" type="email" class="form-control" id="Email" value="<?= $user['email'] ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="role" class="col-md-4 col-lg-3 col-form-label">Posisi</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="role" type="text" class="form-control" id="role" value="<?= $user['role'] ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="no_telp" class="col-md-4 col-lg-3 col-form-label">Nomor HP</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="no_telp" type="text" class="form-control" id="no_telp" value="<?= $user['no_telp'] ?>" require>
                                            <?= form_error('no_telp', '<span class="text-danger">', '</span>') ?>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="company" class="col-md-4 col-lg-3 col-form-label">Organisasi</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="company" type="text" class="form-control" id="company" value="<?= $project ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Save Changes</button>
                                    </div>
                                </form><!-- End Profile Edit Form -->
                            </div>
                            <div class="tab-pane fade pt-3" id="profile-change-password">
                                <!-- Change Password Form -->
                                <form action="<?= site_url('change_password') ?>" method="post">
                                    <input type="hidden" name="id_user" id="id_user" value="<?= $user['id_user'] ?>">
                                    <div class="row mb-3">
                                        <label for="curr_password" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input type="password" name="curr_password" class="form-control" id="curr_password" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="new_password" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input type="password" name="new_password" class="form-control" id="new_password" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="renew_password" class="col-md-4 col-lg-3 col-form-label">Repeat New Password</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input type="password" name="renew_password" class="form-control" id="renew_password" required>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Change Password</button>
                                    </div>
                                </form><!-- End Change Password Form -->

                            </div>

                        </div><!-- End Bordered Tabs -->

                    </div>
                </div>

            </div>
        </div>
    </section>

</main><!-- End #main -->