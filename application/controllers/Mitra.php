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
		$this->load->model('mitra_m', 'mmodel');
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

	public function rekening()
	{
		# $session variable to save field email & username from user
		$sessions = [
			'email' => $this->session->userdata('email'),
			'username' => $this->session->userdata('username'),
			'tipe' => $this->session->userdata('tipe')
		];
		# $mitra variable returns mitra row array data value as per email in stored session
		$mitra = $this->db->get_where('mitra', ['email' => $sessions['email']])->row_array();

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
			'title' => 'Rekening',
			'mitra' => $mitra,
			'rekening' => $this->mmodel->get_rek_mitra($mitra['id_mitra'])
		];

		$this->load->view('sections/main', $data);
	}

	public function edit_rek()
	{
		$this->form_validation->set_rules($this->mmodel->edit_rek_rules());

		
		# IF statement while form_validation not run
		if ($this->form_validation->run() == FALSE) {
			# Send validation error message with session flashdata
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">'
				. validation_errors() .
				'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			$input = [
				'id_rek' => $this->input->post('id_rek'),
				'bank' => $this->input->post('bank'),
				'atas_nama' => $this->input->post('atas_nama'),
				'no_rek' => $this->input->post('no_rek')
			];

			// var_dump($input);
			// die;

			$this->mmodel->update_rek($input);
			# Send error message with session flashdata
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil memperbarui rekening!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		}

		// var_dump($input);
		// die;

		redirect('rekening');
	}
}
