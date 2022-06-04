<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller
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
		$this->load->model('user_m', 'umodel');
	}

	public function dashboard()
	{
		# $session variable to save field email & username from user
		$sessions = [
			'email' => $this->session->userdata('email'),
			'username' => $this->session->userdata('username'),
			'role' => $this->session->userdata('role')
		];
		# $user variable returns user row array data value as per email in stored session
		$user = $this->amodel->get_user_by_email($sessions['email']);

		# Ternary operation to set foto image for user
		($user['foto'] == null) ? $user['foto'] = 'avatar.png' : $user['foto'];

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
			redirect('login_user');
		} else {
			if ($this->session->userdata('tipe')) {
				# If TRUE, add an alert message to session
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Tidak boleh mengakses halaman!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
				# It will be returned to dashboard user
				redirect('dashboard');
			}
		}

		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Dashboard',
			'user' => $user
		];

		$this->load->view('sections/main', $data);
	}

	public function data_edukasi()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		($user['foto'] == null) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Edukasi',
			'users' => $this->umodel->get_all_user(),
			'mitra' => $this->umodel->get_all_mitra(),
			'user' => $user,
			'mitra' => $this->umodel->get_all_mitra(),
			'data_edu' => $this->umodel->get_data_edukasi(),
			'followers_edu' => $this->umodel->data_followers_edu(),
		];

		$this->load->view('sections/main', $data);
	}
	
	public function add_edukasi()
	{
		$_mulai = $this->input->post('mulai');
		$_selesai = $this->input->post('selesai');
		$dates = [
			'tgl_mulai' => date('Y-m-d ', strtotime($_mulai)),
			'tgl_selesai' => date('Y-m-d ', strtotime($_selesai)),
			'wkt_mulai' => date('H:i:s', strtotime($_mulai)),
			'wkt_selesai' => date('H:i:s', strtotime($_selesai))
		];
		$input = [
			'judul' => $this->input->post('judul'),
			'tempat' => $this->input->post('tempat'),
			'mulai' => $dates['tgl_mulai'] . $dates['wkt_mulai'],
			'selesai' => $dates['tgl_selesai'] . $dates['wkt_selesai'],
			'ket' => $this->input->post('ket'),
			'id_user' => $this->input->post('pembicara')
		];

		// var_dump($input);
		// die;

		# Passing $input as a parameter of createUser() function to execute adding data to database
		$this->umodel->add_edukasi($input);
		# Add an alert message to session if createUser() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil menambahkan data edukasi
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('data_edukasi');
	}

	public function edit_edukasi()
	{
		$_mulai = $this->input->post('mulai');
		$_selesai = $this->input->post('selesai');
		if ($_mulai != "" && $_selesai != "") {
			$dates = [
				'tgl_mulai' => date('Y-m-d ', strtotime($_mulai)),
				'tgl_selesai' => date('Y-m-d ', strtotime($_selesai)),
				'wkt_mulai' => date('H:i:s', strtotime($_mulai)),
				'wkt_selesai' => date('H:i:s', strtotime($_selesai))
			];
		} else {
			$data_edu = $this->umodel->detail_edukasi($this->input->post('id_edu'));
			// var_dump($data_edu);
			// die;
			$dates = [
				'tgl_mulai' => date('Y-m-d ', strtotime($data_edu['mulai'])),
				'tgl_selesai' => date('Y-m-d ', strtotime($data_edu['selesai'])),
				'wkt_mulai' => date('H:i:s', strtotime($data_edu['mulai'])),
				'wkt_selesai' => date('H:i:s', strtotime($data_edu['selesai']))
			];
		}
		$input = [
			'id_edu' => $this->input->post('id_edu'),
			'judul' => $this->input->post('judul'),
			'tempat' => $this->input->post('tempat'),
			'mulai' => $dates['tgl_mulai'] . $dates['wkt_mulai'],
			'selesai' => $dates['tgl_selesai'] . $dates['wkt_selesai'],
			'ket' => $this->input->post('ket'),
			'id_user' => $this->input->post('pembicara')
		];

		// var_dump($input);
		// die;

		# Passing $input as a parameter of createUser() function to execute adding data to database
		$this->umodel->update_edukasi($input);
		# Add an alert message to session if createUser() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil memperbarui data edukasi
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('data_edukasi');
	}
}
