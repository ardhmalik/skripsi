<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Actor extends CI_Controller
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
		$this->load->model('actor_m', 'acmodel');
	}

	public function data_admin()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Data Admin',
			'user' => $user,
			'data_admin' => $this->acmodel->get_data_admin()
		];

		$this->load->view('sections/main', $data);
	}

	public function on_admin()
	{
		$id_admin = $this->input->post('id_admin');
		$admin = $this->db->get_where('user', ['id_user' => $id_admin])->row_array();

		// var_dump($admin);
		// die;

		# Passing $input as a parameter of createUser() function to execute adding data to database
		$this->acmodel->active_admin($id_admin);
		# Add an alert message to session if createUser() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Akun admin <i>' . $admin['email'] . '</i> telah <span class="badge bg-primary">AKTIF</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('data_admin');
	}

	public function off_admin()
	{
		$id_admin = $this->input->post('id_admin');
		$admin = $this->db->get_where('user', ['id_user' => $id_admin])->row_array();

		// var_dump($admin);
		// die;

		# Passing $input as a parameter of createUser() function to execute adding data to database
		$this->acmodel->inactive_admin($id_admin);
		# Add an alert message to session if createUser() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Akun admin <i>' . $admin['email'] . '</i> telah <span class="badge bg-danger">NONAKTIF</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('data_admin');
	}

	public function data_mitra()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		$mitra = $this->db->get_where('mitra', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		($user['foto'] == null) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Data Mitra',
			'mitra' => $mitra,
			'user' => $user,
			'data_mitra' => $this->acmodel->get_data_mitra()
		];

		$this->load->view('sections/main', $data);
	}

	public function on_mitra()
	{
		$id_mitra = $this->input->post('id_mitra');
		$mitra = $this->db->get_where('mitra', ['id_mitra' => $id_mitra])->row_array();

		// var_dump($id_mitra);
		// die;

		# Passing $input as a parameter of createmitra() function to execute adding data to database
		$this->acmodel->active_mitra($id_mitra);
		# Add an alert message to session if createmitra() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Akun mitra <i>' . $mitra['email'] . '</i> telah <span class="badge bg-primary">AKTIF</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('data_mitra');
	}

	public function off_mitra()
	{
		$id_mitra = $this->input->post('id_mitra');
		$mitra = $this->db->get_where('mitra', ['id_mitra' => $id_mitra])->row_array();

		// var_dump($mitra);
		// die;

		# Passing $input as a parameter of createUser() function to execute adding data to database
		$this->acmodel->inactive_mitra($id_mitra);
		# Add an alert message to session if createUser() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Akun mitra <i>' . $mitra['email'] . '</i> telah <span class="badge bg-danger">NONAKTIF</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('data_mitra');
	}


	public function data_pembeli()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		(is_null($user['foto'])) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Data Pembeli',
			'user' => $user,
			'data_pembeli' => $this->acmodel->get_data_pembeli(),
		];

		$this->load->view('sections/main', $data);
	}

	public function add_pembeli()
	{
		$this->form_validation->set_rules($this->acmodel->pembeli_rules());
		$input = [
			'nama' => $this->input->post('nama'),
			'no_telp' => $this->input->post('no_telp'),
			'alamat' => $this->input->post('alamat')
		];

		// var_dump($input);
		// die;
		
		if ($this->form_validation->run() == TRUE) {
			$this->acmodel->add_pembeli($input);
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil menambahkan pembeli <span class="badge bg-success">' . $input['nama'] . '</span>
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">'
					. form_error('nama') . form_error('no_telp') .
					'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		}
		
		redirect('data_pembeli');
	}
	
	public function edit_pembeli()
	{
		$this->form_validation->set_rules($this->acmodel->pembeli_rules());
		$input = [
			'id_pembeli' => $this->input->post('id_pembeli'),
			'nama' => $this->input->post('nama'),
			'no_telp' => $this->input->post('no_telp'),
			'alamat' => $this->input->post('alamat')
		];
	
		// var_dump($input);
		// die;

		if ($this->form_validation->run() == TRUE) {
			$this->acmodel->update_pembeli($input);
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil memperbarui pembeli <span class="badge bg-success">' . $input['nama'] . '</span>
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">'
					. form_error('nama') . form_error('no_telp') .
					'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		}

		redirect('data_pembeli');
	}

	public function del_pembeli()
	{
		$input = [
			'id_pembeli' => $this->input->post('id_pembeli')
		];

		// var_dump($input);
		// die;
		
		$this->acmodel->del_pembeli($input);
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil menghapus pembeli <span class="badge bg-danger">'. $this->input->post('nama') .'</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);
	
		redirect('data_pembeli');

	}
}
