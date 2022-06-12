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
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav <?= (($sess['tipe']) ? '' : 'd-none') ?>" id="sidebar-nav">
        <!-- Dashboard -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'dashboard') ? '' : 'collapsed' ?>" href="<?= site_url('dashboard') ?>">
                <i class="bi bi-house-fill"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <!-- Edukasi -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'edukasi') ? '' : 'collapsed' ?>" href="<?= site_url('edukasi') ?>">
                <i class="bi bi-journal-bookmark-fill"></i>
                <span>Edukasi</span>
            </a>
        </li>
        <!-- Sampah -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'sampah') ? '' : 'collapsed' ?>" href="<?= site_url('sampah') ?>">
                <i class="bi bi-trash2-fill"></i>
                <span>Sampah</span>
            </a>
        </li>
        <!-- Setoran -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'setoran') ? '' : 'collapsed' ?>" href="<?= site_url('setoran') ?>">
                <i class="bi bi-box"></i>
                <span>Setoran</span>
            </a>
        </li>
        <!-- Rekening -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'rekening') ? '' : 'collapsed' ?>" href="<?= site_url('rekening') ?>">
                <i class="bi bi-credit-card-fill"></i>
                <span>Rekening</span>
            </a>
        </li>
        <!-- Profil -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'profil_mitra') ? '' : 'collapsed' ?>" href="<?= site_url('profil_mitra') ?>">
                <i class="bi bi-person-circle"></i>
                <span>Profil</span>
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
            <a class="nav-link <?= ($this->uri->segment(1) == 'dashboard_user') ? '' : 'collapsed' ?>" href="<?= site_url('dashboard_user') ?>">
                <i class="bi bi-house-fill"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <!-- Data Pengguna -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'data_admin' || $this->uri->segment(1) == 'data_mitra') ? '' : 'collapsed' ?>" data-bs-target="#forms-nav-user" data-bs-toggle="collapse" href="#">
                <i class="bx bxs-user-account"></i>
                <span>Data Pengguna</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav-user" class="nav-content collapse <?= ($this->uri->segment(1) == 'data_admin' || $this->uri->segment(1) == 'data_mitra') ? 'show' : '' ?>" data-bs-parent="#sidebar-nav">
                <?php if ($sess['role'] === 'Ketua') : ?>
                    <li>
                        <a href="<?= site_url('data_admin') ?>" class="<?= ($this->uri->segment(1) == 'data_admin') ? 'active' : '' ?>">
                            <i class="bi bi-circle"></i>
                            <span>Admin</span>
                        </a>
                    </li>
                <?php endif ?>
                <li>
                    <a href="<?= site_url('data_mitra') ?>" class="<?= ($this->uri->segment(1) == 'data_mitra') ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span>Mitra</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- Data Transaksi -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'data_setoran' || $this->uri->segment(1) == 'data_penjemputan' || $this->uri->segment(1) == 'data_pembayaran' || $this->uri->segment(1) == 'data_penjualan' || $this->uri->segment(1) == 'data_pembeli' || $this->uri->segment(1) == 'data_sampah') ? '' : 'collapsed' ?>" data-bs-target="#forms-nav-trans" data-bs-toggle="collapse" href="#">
                <!-- <i class="bx bxs-user-account"></i> -->
                <i class="bi bi-arrow-left-right"></i>
                <span>Transaksi</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav-trans" class="nav-content collapse <?= ($this->uri->segment(1) == 'data_setoran' || $this->uri->segment(1) == 'data_penjemputan' || $this->uri->segment(1) == 'data_pembayaran' || $this->uri->segment(1) == 'data_penjualan' || $this->uri->segment(1) == 'data_pembeli' || $this->uri->segment(1) == 'data_sampah') ? 'show' : '' ?>" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="<?= site_url('data_setoran') ?>" class="<?= ($this->uri->segment(1) == 'data_setoran') ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span>Setoran</span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('data_penjemputan') ?>" class="<?= ($this->uri->segment(1) == 'data_penjemputan') ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span>Penjemputan</span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('data_pembayaran') ?>" class="<?= ($this->uri->segment(1) == 'data_pembayaran') ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span>Pembayaran</span>
                    </a>
                </li>
                <?php if ($this->session->userdata('role') != "Driver") : ?>
                    <li>
                        <a href="<?= site_url('data_penjualan') ?>" class="<?= ($this->uri->segment(1) == 'data_penjualan') ? 'active' : '' ?>">
                            <i class="bi bi-circle"></i>
                            <span>Penjualan</span>
                        </a>
                    </li>
                    <li>
                        <a href="<?= site_url('data_pembeli') ?>" class="<?= ($this->uri->segment(1) == 'data_pembeli') ? 'active' : '' ?>">
                            <i class="bi bi-circle"></i>
                            <span>Pembeli</span>
                        </a>
                    </li>
                <?php endif ?>
                <li>
                    <a href="<?= site_url('data_sampah') ?>" class="<?= ($this->uri->segment(1) == 'data_sampah') ? 'active' : '' ?>">
                        <i class="bi bi-circle"></i>
                        <span>Sampah</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- Edukasi -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'data_edukasi') ? '' : 'collapsed' ?>" href="<?= site_url('data_edukasi') ?>">
                <i class="bi bi-journal-bookmark-fill"></i>
                <span>Edukasi</span>
            </a>
        </li>
        <!-- Profil -->
        <li class="nav-item">
            <a class="nav-link <?= ($this->uri->segment(1) == 'profil_user') ? '' : 'collapsed' ?>" href="<?= site_url('profil_user') ?>">
                <i class="bi bi-person-circle"></i>
                <span>Profil</span>
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