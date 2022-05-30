<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <a href="<?= site_url('dashboard') ?>" class="logo d-flex align-items-center">
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
                    <img src="<?= base_url('assets/img/user/') . $mitra['foto'] ?>" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2"><?= $mitra['username'] ?></span>
                </a>
                <!-- End Profile Image Icon -->
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6><?= $mitra['username'] ?></h6>
                        <span><?= $this->session->userdata('tipe') ?></span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="<?= site_url('profil_mitra') ?>">
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
$aside_nav = ['Dashboard Mitra', 'Edukasi', 'Setoran', 'Rekening', 'Struktur', 'Profil'];
?>
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <!-- Dashboard -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_nav[0]) ? '' : 'collapsed' ?>" href="<?= site_url('dashboard') ?>">
                <i class="bi bi-house-fill"></i>
                <span><?= $aside_nav[0] ?></span>
            </a>
        </li>
        <!-- Edukasi -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_nav[1]) ? '' : 'collapsed' ?>" href="<?= site_url('edukasi') ?>">
                <i class="bi bi-journal-bookmark-fill"></i>
                <span><?= $aside_nav[1] ?></span>
            </a>
        </li>
        <!-- Setoran -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_nav[2]) ? '' : 'collapsed' ?>" href="<?= site_url('setoran') ?>">
                <i class="bi bi-file-earmark-arrow-up"></i>
                <span><?= $aside_nav[2] ?></span>
            </a>
        </li>
        <!-- Rekening -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_nav[3]) ? '' : 'collapsed' ?>" href="<?= site_url('rekening') ?>">
                <i class="bi bi-credit-card"></i>
                <span><?= $aside_nav[3] ?></span>
            </a>
        </li>
        <?php if ($this->session->userdata('tipe') === 'Bank Sampah Unit') : ?>
            <!-- Struktur -->
            <li class="nav-item">
                <a class="nav-link <?= ($title === $aside_nav[4]) ? '' : 'collapsed' ?>" href="<?= site_url('struktur') ?>">
                    <i class="bi bi-person-lines-fill"></i>
                    <span><?= $aside_nav[4] ?></span>
                </a>
            </li>
        <?php endif ?>
        <!-- Profil -->
        <li class="nav-item">
            <a class="nav-link <?= ($title === $aside_nav[4]) ? '' : 'collapsed' ?>" href="<?= site_url('profil_mitra') ?>">
                <i class="bi bi-person-circle"></i>
                <span><?= $aside_nav[5] ?></span>
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