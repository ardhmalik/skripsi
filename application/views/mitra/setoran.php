<main id="main" class="main">
    <div class="pagetitle">
        <h1><?= $title ?></h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('dashboard_user') ?>">Home</a></li>
                <li class="breadcrumb-item active"><?= $title ?></li>
            </ol>
        </nav>
    </div>
    <?= $this->session->flashdata('message') ?>

    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Data Setoran</h5>
                        <p>Berisi daftar setoran mitra</p>
                        <div class="row">
                            <div class="col-auto ms-auto">
                                <div class="btn btn-primary fw-bold" data-bs-toggle="modal" data-bs-target="#addSetoran">
                                    <i class="bi bi-plus-square-fill"></i> Tambah Setoran
                                </div>
                            </div>
                        </div>
                        <!-- < var_dump($setoran) ?> -->
                        <!-- Table with stripped rows -->
                        <div class="table-responsive">
                            <table class="table datatable table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Tanggal</th>
                                        <th scope="col">Sampah</th>
                                        <th scope="col">Berat</th>
                                        <th scope="col">Harga/kg</th>
                                        <th scope="col">Subtotal</th>
                                        <th scope="col">Jadwal Jemput</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 0;
                                    foreach ($setoran as $setor) : ?>
                                        <tr>
                                            <th scope="row">
                                                <?= ++$no ?>
                                            </th>
                                            <td>
                                                <?= $setor['tanggal'] ?>
                                            </td>
                                            <td>
                                                <?= $setor['nama_sampah'] ?>
                                            </td>
                                            <td>
                                                <?= $setor['berat'] ?>
                                            </td>
                                            <td>
                                                <?= "Rp " . number_format($setor['harga'], 2, ',', '.')  ?>
                                            </td>
                                            <td>
                                                <?= "Rp " . number_format($setor['subtotal'], 2, ',', '.')  ?>
                                            </td>
                                            <td>
                                                <?= $setor['jadwal_jemput'] ?>
                                            </td>
                                            <td class="text-center">
                                                <?php
                                                switch ($setor['status']) {
                                                    case 'Penjemputan':
                                                        echo '<span class="badge rounded-pill bg-danger"><i class="bi bi-truck"></i> Penjemputan</span>';
                                                        break;
                                                    case 'Pembayaran':
                                                        echo '<span class="badge rounded-pill bg-primary"><i class="bi bi-cash-coin"></i> Pembayaran</span>';
                                                        break;
                                                    case 'Selesai':
                                                        echo '<span class="badge rounded-pill bg-success"><i class="bi bi-check-circle me-1"></i> Selesai</span>';
                                                        break;
                                                    default:
                                                        echo '<span class="badge rounded-pill bg-danger"><i class="bi bi-truck"></i> Penjemputan</span>';
                                                        break;
                                                }
                                                ?>
                                            </td>
                                            <td>
                                                <?php if ($setor['status'] == "Penjemputan") : ?>
                                                    <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#editSetor-<?= $setor['id_setor'] ?>" title="Edit">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </button>
                                                    <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delSetor-<?= $setor['id_setor'] ?>" title="Hapus">
                                                        <i class="bi bi-trash2-fill"></i>
                                                    </button>
                                                <?php endif ?>
                                            </td>
                                        </tr>
                                    <?php endforeach ?>
                                    <?php if (empty($setoran)) : ?>
                                        <tr class="text-center">
                                            <td colspan="8" class="my-3">
                                                <div class="alert alert-info alert-dismissible fade show" role="alert">
                                                    Anda belum pernah melakukan penyetoran sampah, klik
                                                    <span class="badge pill bg-primary btn btn-primary fw-bold" data-bs-toggle="modal" data-bs-target="#addSetoran">
                                                        <i class="bi bi-plus-square-fill"></i> Tambah Setoran
                                                    </span>
                                                    untuk menambahkan setoran!
                                                </div>
                                            </td>
                                        </tr>
                                    <?php endif ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- End Table with stripped rows -->
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>