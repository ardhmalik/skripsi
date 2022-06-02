<main id="main" class="main">
    <div class="pagetitle">
        <h1><?= $title ?></h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('dashboard') ?>">Home</a></li>
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
                        <img src="<?= site_url('assets/img/user/') . $mitra['foto'] ?>" alt="Profile" class="rounded-circle">
                        <h2><?= $mitra['username'] ?></h2>
                        <h3><?= $this->session->userdata('tipe') ?></h3>
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
                            <?php if ($this->session->userdata('tipe') == 'Bank Sampah Unit') : ?>
                                <li class="nav-item">
                                    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#struktur-bsu">Edit Struktur</button>
                                </li>
                            <?php endif ?>
                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
                            </li>
                        </ul>
                        <div class="tab-content pt-2">
                            <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                <h5 class="card-title">About</h5>
                                <p class="small fst-italic">
                                    Akun ini hanya dapat diakses oleh mitra Bank Sampah Induk Rumah Harum
                                </p>
                                <h5 class="card-title">Profile Details</h5>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label ">Username</div>
                                    <div class="col-lg-9 col-md-8"><?= $mitra['username'] ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Email</div>
                                    <div class="col-lg-9 col-md-8"><?= $mitra['email'] ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Tipe Mitra</div>
                                    <div class="col-lg-9 col-md-8"><?= $this->session->userdata('tipe') ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Jadwal Penjemputan</div>
                                    <div class="col-lg-9 col-md-8"><?= date('d M Y H:iT', strtotime($mitra['jadwal_jemput'])) ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Alamat</div>
                                    <div class="col-lg-9 col-md-8"><?= $mitra['alamat'] ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Nomor HP</div>
                                    <div class="col-lg-9 col-md-8"><?= $mitra['no_telp'] ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Bergabung</div>
                                    <div class="col-lg-9 col-md-8"><?= date('d M Y ~ H:i:sT', strtotime($mitra['tgl_daftar'])) ?></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3 col-md-4 label">Organisasi</div>
                                    <div class="col-lg-9 col-md-8"><?= $project ?></div>
                                </div>
                            </div>
                            <div class="tab-pane fade profile-edit pt-3" id="profile-edit">
                                <!-- Profile Edit Form -->
                                <form action="<?= site_url('edit_profil') ?>" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="id_mitra" id="id_mitra" value="<?= $mitra['id_mitra'] ?>">
                                    <div class="row mb-3">
                                        <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
                                        <div class="col-md-8 col-lg-9">
                                            <img src="<?= site_url('assets/img/user/') . $mitra['foto'] ?>" class="img-fluid rounded" alt="Profile foto"><br>
                                            <small class="text-muted fst-italic">Max: 1MB (1000x1000 px) *.(png,jpg,jpeg,gif)</small>
                                            <div class="pt-2">
                                                <div class="input-group input-group-sm w-50">
                                                    <input type="file" name="foto" id="foto" value="<?= $mitra['foto'] ?>" class="form-control" title="Upload new profile image" accept="image/png, image/jpeg, image/jpg, image/gif">
                                                    <label class="input-group-text  me-2" for="foto"><i class="bi bi-upload"></i></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="username" class="col-md-4 col-lg-3 col-form-label">Username</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="username" type="text" class="form-control" id="username" value="<?= $mitra['username'] ?>" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="email" type="email" class="form-control" id="Email" value="<?= $mitra['email'] ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="role" class="col-md-4 col-lg-3 col-form-label">Tipe Mitra</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="role" type="text" class="form-control" id="role" value="<?= $mitra['tipe_mitra'] ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="jadwal_jemput" class="col-md-4 col-lg-3 col-form-label">Jadwal Jemput</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input type="date" class="form-control" id="jadwal_jemput" name="jadwal_jemput" min="<?= date('Y-m-d', strtotime('today')) ?>" max="<?= date('Y-m-d', strtotime('last day of December')) ?>" placeholder="Must include string and numbers">
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="waktu_jemput" class="col-md-4 col-lg-3 col-form-label">Waktu Jemput</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input type="time" class="form-control" id="waktu_jemput" name="waktu_jemput" min="07:00" max="17:00" placeholder="Must include string and numbers">
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="alamat" class="col-md-4 col-lg-3 col-form-label">Alamat</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="alamat" type="text" class="form-control" id="alamat" value="<?= $mitra['alamat'] ?>" required>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="no_telp" class="col-md-4 col-lg-3 col-form-label">Nomor HP</label>
                                        <div class="col-md-8 col-lg-9">
                                            <input name="no_telp" type="text" class="form-control" id="no_telp" value="<?= $mitra['no_telp'] ?>" required>
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
                            <?php if ($this->session->userdata('tipe') == 'Bank Sampah Unit') : ?>
                                <div class="tab-pane fade profile-edit pt-3" id="struktur-bsu">
                                    <div class="card-body table-responsive pt-4 align-items-center">
                                        <table class="table table-hover table-stripped text-center">
                                            <caption>Struktur Kepengurusan BSU <?= $mitra['username'] ?></caption>
                                            <thead>
                                                <tr>
                                                    <th scope="col">Ketua</th>
                                                    <th scope="col">Sekretaris</th>
                                                    <th scope="col">Bendahara</th>
                                                    <th scope="col">Anggota</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><?= $struktur['ketua'] ?></td>
                                                    <td><?= $struktur['sekretaris'] ?></td>
                                                    <td><?= $struktur['bendahara'] ?></td>
                                                    <td><?= $struktur['anggota'] ?></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">
                                                        <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th>Total Nasabah</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td><?= $struktur['total_nsb'] ?></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- Profile Edit Form -->
                                    <form action="<?= site_url('edit_struktur') ?>" method="post" enctype="multipart/form-data">
                                        <input type="hidden" name="id_struktur" id="id_struktur" value="<?= $struktur['id_struktur'] ?>">
                                        <div class="row mb-3">
                                            <label for="ketua" class="col-md-4 col-lg-3 col-form-label">Ketua</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="ketua" type="text" class="form-control" id="ketua" value="<?= $struktur['ketua'] ?>" required>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="sekretaris" class="col-md-4 col-lg-3 col-form-label">Sekretaris</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="sekretaris" type="text" class="form-control" id="sekretaris" value="<?= $struktur['sekretaris'] ?>" required>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="bendahara" class="col-md-4 col-lg-3 col-form-label">Bendahara</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="bendahara" type="text" class="form-control" id="bendahara" value="<?= $struktur['bendahara'] ?>" required>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="anggota" class="col-md-4 col-lg-3 col-form-label">Anggota</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="anggota" type="text" class="form-control" id="anggota" value="<?= $struktur['anggota'] ?>" required>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="total_nsb" class="col-md-4 col-lg-3 col-form-label">Total Nasabah</label>
                                            <div class="col-md-8 col-lg-9">
                                                <input name="total_nsb" type="text" class="form-control" id="total_nsb" value="<?= $struktur['total_nsb'] ?>" required>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </form><!-- End Profile Edit Form -->
                                </div>
                            <?php endif ?>
                            <div class="tab-pane fade pt-3" id="profile-change-password">
                                <!-- Change Password Form -->
                                <form action="<?= site_url('change_password') ?>" method="post">
                                    <input type="hidden" name="id_mitra" id="id_mitra" value="<?= $mitra['id_mitra'] ?>">
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