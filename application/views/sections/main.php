<?php
# Load header & navbar sections
$this->load->view('sections/header');
$this->load->view('sections/nav');

# Mitra
if ($this->session->userdata('tipe'))
{
    switch ($this->uri->segment(1)) {
        case 'dashboard':
            $this->load->view('mitra/dashboard');
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
