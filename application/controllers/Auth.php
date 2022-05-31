<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Auth is child of CI_Controller
 * @author Malik Ardhiansyah
 * @description This controller acts as a link between models and views
 * @return functions Used by view
 */
class Auth extends CI_Controller
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
	
	/**
	 * Process of login
	 * @todo Processing login account
	 * @access private
	 * @return view dashboard and return login page if login failed
	 */
	private function _login_mitra()
	{
		# $session variable to save field email & username from user
		$data = [
			'email' => $this->input->post('email'),
			'password' => $this->input->post('password')
		];
		# $mitra variable returns user row array data value as per email in the stored session
		$mitra = $this->amodel->get_mitra_by_email($data['email']);
		// var_dump($mitra);
		// die;

		# IF statement to check if user data exists
		if ($mitra) {
			# IF statement to check whether entered password matches user data
			if (password_verify($data['password'], $mitra['password'])) {
				# $data variable to save field email & username from $mitra
				$data = [
					'email' => $mitra['email'],
					'username' => $mitra['username'],
					'tipe' => $mitra['tipe_mitra']
				];
				# Add $data values to session
				$this->session->set_userdata($data);

				redirect('dashboard');
			} else {
				# If password is not matches, will be send wrong password message
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Maaf password anda salah, coba lagi!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
				# It will be returned to login page
				redirect('login_mitra');
			}
		} else {
			# If there is no user data, will be send email isn't registered message
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Email belum terdaftar, silahkan 
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					<a href="' . site_url('reg_mitra') . '" class="fw-bold">Daftar terlebih dahulu</a>
				</div>'
			);
			# It will be returned to login page
			redirect('login_mitra');
		}
	}
	
	/**
	 * Process of login
	 * @todo Processing login account
	 * @access private
	 * @return view dashboard and return login page if login failed
	 */
	private function _login_user()
	{
		# $session variable to save field email & username from user
		$data = [
			'email' => $this->input->post('email'),
			'password' => $this->input->post('password')
		];
		# $user variable returns user row array data value as per email in the stored session
		$user = $this->amodel->get_user_by_email($data['email']);
		// var_dump($user);
		// die;

		# IF statement to check if user data exists
		if ($user) {
			# IF statement to check whether entered password matches user data
			if (password_verify($data['password'], $user['password'])) {
				# $data variable to save field email & username from $user
				$data = [
					'email' => $user['email'],
					'username' => $user['username'],
					'role' => $user['role']
				];
				# Add $data values to session
				$this->session->set_userdata($data);

				redirect('dashboard_user');
			} else {
				# If password is not matches, will be send wrong password message
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Maaf password anda salah, coba lagi!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
				# It will be returned to login page
				redirect('login_user');
			}
		} else {
			# If there is no user data, will be send email isn't registered message
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Email belum terdaftar, silahkan 
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					<a href="' . site_url('reg_user') . '" class="fw-bold">Daftar terlebih dahulu</a>
				</div>'
			);
			# It will be returned to login page
			redirect('login_user');
		}
	}
	
	/**
	 * Navigate to login mitra page
	 * @access public
	 * @description Show login page if don't have 'email' session saved
	 * @return view login page
	 */
	public function login_mitra()
	{
		# $amodel variable to shorten model call 'amodel'
		$amodel = $this->amodel;
		# $validation variable to shorten form_validation library
		$validation = $this->form_validation;
		# Initialize login rules with login_rules()
		$validation->set_rules($amodel->login_rules());

		# IF statement to check if there is a stored 'email' session
		if ($this->session->userdata('email')) {
			# If TRUE, add an wrong password alert message to session
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-info alert-dismissible fade show" role="alert">
					Anda dalam keadaan login, silahkan <a href="' . site_url('logout') . '" class="alert-link fw-bold">Logout</a> terlebih dahulu!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
			# It will be returned to dashboard page
			redirect('dashboard');
		}

		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Login Mitra'
		];

		# IF statement to check form_validation not running
		if ($validation->run() == FALSE) {
			# If TRUE, it will be load login page
			$this->load->view('auth/header', $data);
			$this->load->view('auth/login_mitra', $data);
			$this->load->view('auth/footer');
		} else {
			# If FALSE, it will be load private function _login()
			$this->_login_mitra();
		}
	}

	/**
	 * Navigate to login user page
	 * @access public
	 * @description Show login page if don't have 'email' session saved
	 * @return view login page
	 */
	public function login_user()
	{
		# $amodel variable to shorten model call 'amodel'
		$amodel = $this->amodel;
		# $validation variable to shorten form_validation library
		$validation = $this->form_validation;
		# Initialize login rules with login_rules()
		$validation->set_rules($amodel->login_rules());

		# IF statement to check if there is a stored 'email' session
		if ($this->session->userdata('email')) {
			# If TRUE, add an wrong password alert message to session
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-info alert-dismissible fade show" role="alert">
					Anda dalam keadaan login, silahkan <a href="' . site_url('logout') . '" class="alert-link fw-bold">Logout</a> terlebih dahulu!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
			# It will be returned to dashboard page
			redirect('dashboard_user');
		}

		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Login User'
		];

		# IF statement to check form_validation not running
		if ($validation->run() == FALSE) {
			# If TRUE, it will be load login page
			$this->load->view('auth/header', $data);
			$this->load->view('auth/login_user', $data);
			$this->load->view('auth/footer');
		} else {
			# If FALSE, it will be load private function _login()
			$this->_login_user();
		}
	}
	
	/**
	 * Navigate to registration mitra page
	 * @access public
	 * @description Show login page if don't have 'email' session saved
	 * @return view login page
	 */
	public function reg_mitra()
	{
		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Registrasi Mitra'
		];
		$this->load->view('auth/header', $data);
		$this->load->view('auth/reg_mitra');
		$this->load->view('auth/footer');
	}
	
	/**
	 * Navigate to registration user page
	 * @access public
	 * @description Show login page if don't have 'email' session saved
	 * @return view login page
	 */
	public function reg_user()
	{
		$data = [
			'project' => 'Bank Sampah Induk Rumah Harum',
			'title' => 'Registrasi User'
		];
		$this->load->view('auth/header', $data);
		$this->load->view('auth/reg_user');
		$this->load->view('auth/footer');
	}

	/**
	 * Process of logout
	 * @todo Processing logout account and unset userdata on session
	 * @access public
	 * @return view login page
	 */
	public function logout()
	{
		# $data variable to store items as array of userdata keys
		$data = ['email', 'username'];
		# $tipe variable to store result of tipe check ternary operation
		$tipe = ($this->session->userdata('tipe')) ? array_push($data, 'tipe') : '';
		# $role variable to store result of role check ternary operation
		$role = ($this->session->userdata('role')) ? array_push($data, 'role') : '';
		# Unset all from session
		$this->session->unset_userdata($data);

		# Send success message with session flashdata
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-info alert-dismissible fade show" role="alert">
				Anda telah berhasil logout
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);
		# It will be returned to login page
		$red = redirect(($role) ? 'login_user' : '');
		// var_dump($red);
		// die;
	}
}
