<!-- Foreach loop to print data edus in modal -->
<?php foreach ($data_bayar as $bayar) : ?>
    <!-- Modal Edit Edukasi -->
    <div class="modal fade" id="confirmBayar-<?= $bayar['id_bayar'] ?>" tabindex="-1" aria-labelledby="formConfirmBayar" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5 class="modal-title" id="formConfirmBayar">Confirm Pembayaran</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- End Modal Header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="container-fluid">
                        <!-- Form Edit Edukasi -->
                        <form action="<?= site_url('confirm_bayar') ?>" method="post" enctype="multipart/form-data" class="mx-3 my-3">
                            <!-- <= var_dump($data_jemput) ?> -->
                            <?php
                            for ($i = 0; $i < count($data_jemput); $i++) {
                                if ($data_jemput[$i]['id_jemput'] == $bayar['id_jemput']) {
                                    echo '<input type="hidden" name="id_setor" id="id_setor" value="'. $data_jemput[$i]['id_setor'] .'">';
                                }
                            } ?>
                            <input type="hidden" name="id_bayar" id="id_bayar" value="<?= $bayar['id_bayar'] ?>">
                            <input type="hidden" name="total_bayar" id="total_bayar" value="<?= $bayar['total_bayar'] ?>">
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="bank" id="bank" value="<?= $bayar['bank'] ?>" placeholder="Enter new bank" required disabled>
                                <label for="bank">Bank</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="rek_tujuan" id="rek_tujuan" value="<?= $bayar['rek_tujuan'] ?>" placeholder="Enter new rek_tujuan" required disabled>
                                <label for="rek_tujuan">No.Rek</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <input type="text" class="form-control" name="atas_nama" id="atas_nama" value="<?= $bayar['atas_nama'] ?>" placeholder="Enter new atas_nama" required disabled>
                                <label for="atas_nama">Atas Nama</label>
                            </div>
                            <div class="mb-3 form-floating">
                                <div class="pt-2">
                                    <div class="input-group">
                                        <input type="file" name="bukti" id="bukti" class="form-control" title="Pilih gambar bukti pembayaran" accept="image/png, image/jpeg, image/jpg">
                                        <label class="input-group-text me-2" for="bukti"><i class="bi bi-upload"></i></label>
                                    </div>
                                    <small class="text-muted fst-italic">Max: 1MB (1800x1800 px) *.(png,jpg,jpeg)</small>
                                </div>
                            </div>
                            <div class="d-flex bd-highlight">
                                <div class="p-2 bd-highlight">
                                    <button type="button" class="btn fw-bold btn-outline-secondary" data-bs-dismiss="modal">Batal</button>
                                </div>
                                <div class="p-2 ms-auto bd-highlight">
                                    <input type="submit" class="btn fw-bold btn-success" value="Konfirmasi">
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
    <!-- End Modal Edit Edukasi -->
<?php endforeach ?>