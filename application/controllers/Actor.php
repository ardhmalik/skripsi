<?php
defined('BASEPATH') OR exit('No direct script access allowed');

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
				Berhasil mengaktifkan admin ' . $admin['email'] . '
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
				Berhasil menonaktifkan admin ' . $admin['email'] . '
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);
		
		redirect('data_admin');
	}
}
