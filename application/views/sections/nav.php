<?php
$sess = [
    'role' => $this->session->userdata('role'),
    'tipe' => $this->session->userdata('tipe')
];
?>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <a href="<?= site_url(($sess['role']) ? 'dashboard_user' : 'dashboard') ?>" class="logo d-flex align-items-center">
            <img src="<?= site_url('assets/img/logo-bsi-rumah-harum.png') ?>" alt="Logo">
            <span class="d-none d-lg-block">BSI Rumah Harum</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>
    <!-- End Logo -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
            <li class="nav-item dropdown pe-3">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="<?= base_url('assets/img/user/') . (($sess['role']) ? $user['foto'] : $mitra['foto']) ?>" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2"><?= (($sess['role']) ? $user['username'] : $mitra['username']) ?></span>
                </a>
                <!-- End Profile Image Icon -->
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6><?= (($sess['role']) ? $user['username'] : $mitra['username']) ?></h6>
                        <span><?= (($sess['role']) ? $sess['role'] : $sess['tipe']) ?></span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="<?= site_url(($sess['role']) ? 'profil_user' : 'profil_mitra') ?>">
                            <i class="bi bi-person"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="<?= site_url('logout') ?>">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
                        </a>
                    </li>
                </ul>
                <!-- End Profile Dropdown Items -->
            </li>
            <!-- End Profile Nav -->
        </ul>
    </nav>
    <!-- End Icons Navigation -->
</header>
<!-- End Header -->

<!-- ======= Sidebar ======= -->
<?php
$aside_mitra = ['Dashboard Mitra', 'Edukasi', 'Setoran', 'Rekening', 'Struktur', 'Profil'];
$aside_user = ['Dashboard', 'User', 'User Admin', 'User Mitra', 'Transaksi', 'Setoran', 'Penjemputan', 'Pembayaran', 'Penjualan', 'Pembeli', 'Sampah', 'Edukasi', 'Profil'];
// $title = 'Da';
?>
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav <?= (($sess['tipe']) ? '' : 'd-none') ?>" id="sidebar-nav">
        <!-- Dashboard -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_mitra[0]) ? '' : 'collapsed' ?>" href="<?= site_url('dashboard') ?>">
                <i class="bi bi-house-fill"></i>
                <span><?= $aside_mitra[0] ?></span>
            </a>
        </li>
        <!-- Edukasi -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_mitra[1]) ? '' : 'collapsed' ?>" href="<?= site_url('edukasi') ?>">
                <i class="bi bi-journal-bookmark-fill"></i>
                <span><?= $aside_mitra[1] ?></span>
            </a>
        </li>
        <!-- Setoran -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_mitra[2]) ? '' : 'collapsed' ?>" href="<?= site_url('setoran') ?>">
                <i class="bi bi-file-earmark-arrow-up"></i>
                <span><?= $aside_mitra[2] ?></span>
            </a>
        </li>
        <!-- Rekening -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_mitra[3]) ? '' : 'collapsed' ?>" href="<?= site_url('rekening') ?>">
                <i class="bi bi-credit-card"></i>
                <span><?= $aside_mitra[3] ?></span>
            </a>
        </li>
        <?php if ($this->session->userdata('tipe') === 'Bank Sampah Unit') : ?>
            <!-- Struktur -->
            <li class="nav-item">
                <a class="nav-link <?= ($title === $aside_mitra[4]) ? '' : 'collapsed' ?>" href="<?= site_url('struktur') ?>">
                    <i class="bi bi-person-lines-fill"></i>
                    <span><?= $aside_mitra[4] ?></span>
                </a>
            </li>
        <?php endif ?>
        <!-- Profil -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_mitra[4]) ? '' : 'collapsed' ?>" href="<?= site_url('profil_mitra') ?>">
                <i class="bi bi-person-circle"></i>
                <span><?= $aside_mitra[5] ?></span>
            </a>
        </li>
        <!-- Logout -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<?= site_url('logout') ?>">
                <i class="bi bi-box-arrow-right"></i>
                <span>Logout</span>
            </a>
        </li>
        <!-- End Error 404 Page Nav -->
    </ul>
    <ul class="sidebar-nav <?= (($sess['role']) ? '' : 'd-none') ?>" id="sidebar-nav">
        <!-- Dashboard -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_user[0]) ? '' : 'collapsed' ?>" href="<?= site_url('dashboard_user') ?>">
                <i class="bi bi-house-fill"></i>
                <span><?= $aside_user[0] ?></span>
            </a>
        </li>
        <!-- Data Pengguna -->
        <li class="nav-item">
            <a class="nav-link <?= (preg_match("/$aside_user[1]/i", $title)) ? '' : 'collapsed' ?>" data-bs-target="#forms-nav-user" data-bs-toggle="collapse" href="#">
                <i class="bx bxs-user-account"></i>
                <span><?= $aside_user[1] ?></span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav-user" class="nav-content collapse <?= (preg_match("/$aside_user[3]/i", $title)) ? 'show' : '' ?>" data-bs-parent="#sidebar-nav">
                <?php if ($sess['role'] === 'Ketua') : ?>
                    <li>
                        <a href="<?= site_url('data_admin') ?>" class="<?= (preg_match("/$aside_user[2]/i", $title)) ? 'active' : '' ?>">
                            <i class="bi bi-circle"></i>
                            <span><?= $aside_user[2] ?></span>
                        </a>
                    </li>
                <?php endif ?>
                <li>
                    <a href="<?= site_url('data_mitra') ?>" class="<?= (preg_match("/$aside_user[3]/i", $title)) ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span><?= $aside_user[3] ?></span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- Data Transaksi -->
        <li class="nav-item">
            <a class="nav-link <?= (preg_match("/$aside_user[4]/i", $title)) ? '' : 'collapsed' ?>" data-bs-target="#forms-nav-trans" data-bs-toggle="collapse" href="#">
                <i class="bx bxs-user-account"></i>
                <span><?= $aside_user[4] ?></span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav-trans" class="nav-content collapse <?= (preg_match("/$aside_user[4]/i", $title)) ? 'show' : '' ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?= site_url('data_setoran') ?>" class="<?= (preg_match("/$aside_user[2]/i", $title)) ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span><?= $aside_user[5] ?></span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('data_penjemputan') ?>" class="<?= (preg_match("/$aside_user[3]/i", $title)) ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span><?= $aside_user[6] ?></span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('data_pembayaran') ?>" class="<?= (preg_match("/$aside_user[2]/i", $title)) ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span><?= $aside_user[7] ?></span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('data_penjualan') ?>" class="<?= (preg_match("/$aside_user[3]/i", $title)) ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span><?= $aside_user[8] ?></span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('data_pembeli') ?>" class="<?= (preg_match("/$aside_user[2]/i", $title)) ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span><?= $aside_user[9] ?></span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('data_sampah') ?>" class="<?= (preg_match("/$aside_user[3]/i", $title)) ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span><?= $aside_user[10] ?></span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- Edukasi -->
        <li class="nav-item">
            <a class="nav-link <?= (preg_match("/$aside_user[12]/i", $title)) ? '' : 'collapsed' ?>" href="<?= site_url('data_edukasi') ?>">
                <i class="bi bi-journal-bookmark-fill"></i>
                <span><?= $aside_user[12] ?></span>
            </a>
        </li>
        <!-- Profil -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_user[4]) ? '' : 'collapsed' ?>" href="<?= site_url('profil_user') ?>">
                <i class="bi bi-person-circle"></i>
                <span><?= $aside_user[5] ?></span>
            </a>
        </li>
        <!-- Logout -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="<?= site_url('logout') ?>">
                <i class="bi bi-box-arrow-right"></i>
                <span>Logout</span>
            </a>
        </li>
        <!-- End Error 404 Page Nav -->
    </ul>
</aside>
<!-- End Sidebar-->