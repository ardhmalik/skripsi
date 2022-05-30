<?php
# Load header & navbar sections
$this->load->view('sections/header');
$this->load->view('sections/nav');

# Load main according to field
if ($this->session->userdata('tipe')) {
    $this->load->view('mitra/dashboard');
} elseif ($this->session->userdata('role')) {
    $this->load->view('user/dashboard');
} else {
    redirect('login_mitra');
}

# Load footer section
$this->load->view('sections/footer');

?>