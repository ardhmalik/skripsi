<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mitra extends CI_Controller
{
	/**
	 * @todo initialize all function needed
	 * @access public
	 * @description This function used to load library 
	 * 'form_validation' and load model 'Auth_model' as 'amodel'
	 * @see https://codeigniter.com/userguide3/general/creating_libraries.html?highlight=construct
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('auth_m', 'amodel');
	}

	public function dashboard()
	{
		# $session variable to save field email & username from user
		$sessions = [
			'email' => $this->session->userdata('email'),
			'username' => $this->session->userdata('username'),
			'tipe' => $this->session->userdata('tipe')
		];
		# $mitra variable returns mitra row array data value as per email in stored session
		$mitra = $this->amodel->get_mitra_by_email($sessions['email']);

		# Ternary operation to set foto image for user
		($mitra['foto'] == null) ? $mitra['foto'] = 'avatar.png' : $mitra['foto'];

		# IF condition to check if there is a stored 'email' session
		if (!$this->session->userdata('email')) {
			# If TRUE, add an alert message to session
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Silahkan login terlebih dahulu sebelum mengakses konten!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
			# It will be returned to login page
			redirect('login_mitra');
		} else {
			if ($this->session->userdata('role')) {
				# If TRUE, add an alert message to session
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Tidak boleh mengakses halaman!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
				# It will be returned to dashboard user
				redirect('dashboard_user');
			}
		}

		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Dashboard Mitra',
			'mitra' => $mitra
		];

		$this->load->view('sections/main', $data);
	}
}
