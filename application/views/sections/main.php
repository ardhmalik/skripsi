<?php
# Load header & navbar sections
$this->load->view('sections/header');
$this->load->view('sections/nav');

# Mitra
if ($this->session->userdata('tipe')) {
    switch ($this->uri->segment(1)) {
        case 'dashboard':
            $this->load->view('mitra/dashboard');
            break;
        case 'edukasi':
            $this->load->view('mitra/edukasi');
            $this->load->view('sections/modal_edukasi_mitra');
            break;
        case 'setoran':
            $this->load->view('mitra/setoran');
            $this->load->view('sections/modal_setoran_mitra');
            break;
        case 'rekening':
            $this->load->view('mitra/rekening');
            break;
        case 'profil_mitra':
            $this->load->view('mitra/profil');
            break;
        default:
            $this->load->view('mitra/dashboard');
            break;
    }
}
# User
elseif ($this->session->userdata('role')) {
    switch ($this->uri->segment(1)) {
        case 'dashboard_user':
            $this->load->view('user/dashboard');
            break;
        case 'data_admin':
            $this->load->view('user/admin');
            $this->load->view('sections/modal_user');
            break;
        case 'data_mitra':
            $this->load->view('user/mitra');
            $this->load->view('sections/modal_mitra');
            break;
        case 'data_penjemputan':
            $this->load->view('user/penjemputan');
            $this->load->view('sections/modal_penjemputan');
            break;
        case 'data_setoran':
            $this->load->view('user/setoran');
            // $this->load->view('sections/modal_setoran');
            break;
        case 'data_penjualan':
            $this->load->view('user/penjualan');
            $this->load->view('sections/modal_penjualan');
            break;
        case 'data_pembeli':
            $this->load->view('user/pembeli');
            $this->load->view('sections/modal_pembeli');
            break;
        case 'data_sampah':
            $this->load->view('user/sampah');
            $this->load->view('sections/modal_sampah');
            break;
        case 'data_edukasi':
            $this->load->view('user/edukasi');
            $this->load->view('sections/modal_edukasi');
            break;
        case 'profil_user':
            $this->load->view('user/profil');
            break;
        default:
            $this->load->view('user/dashboard');
            break;
    }
} else {
    redirect('login_mitra');
}

# Load footer section
$this->load->view('sections/footer');
