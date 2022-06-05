<?php
defined('BASEPATH') or exit('No direct script access allowed');

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
		$this->load->model('actor_m', 'acmodel');
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
			if ($mitra['status'] == 1) {
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
				# If password is not matches, will be send wrong password message
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Maaf akun anda telah di <span class="badge bg-danger">Non Aktif</span> kan,
						silahkan hubungi pihak Bank Sampah Induk Rumah Harum untuk proses pengaktifan kembali!
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
			if ($user['status'] == 1) {
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
				# If password is not matches, will be send wrong password message
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Maaf akun anda telah di <span class="badge bg-danger">Non Aktif</span> kan,
						silahkan hubungi ketua Bank Sampah Induk Rumah Harum untuk proses pengaktifan kembali!
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

			if ($this->session->userdata('tipe')) {
				# It will be returned to dashboard page
				redirect('dashboard');
			} elseif ($this->session->userdata('role')) {
				# It will be returned to dashboard page
				redirect('dashboard_user');
			}
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
		# $amodel variable to shorten model call 'amodel'
		$amodel = $this->amodel;
		# $validation variable to shorten form_validation library
		$validation = $this->form_validation;
		# Initialize registration rules with reg_rules()
		$validation->set_rules($amodel->reg_mitra_rules());

		# IF condition to check if there is a stored 'email' session
		if ($this->session->userdata('email')) {
			# If TRUE, add an alert message to session
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-info alert-dismissible fade show" role="alert">
					Anda dalam keadaan login, silahkan <a href="' . site_url('logout') . '" class="alert-link fw-bold">Logout</a> terlebih dahulu!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);

			if ($this->session->userdata('role')) {
				# It will be returned to user dashboard page
				redirect('dashboard_user');
			} else {
				# It will be returned to mitra dashboard page
				redirect('dashboard');
			}
		}

		# IF statement to check form_validation not running
		if ($validation->run() == FALSE) {
			$data = [
				'project' => 'Bank Sampah Induk Rumah Harum',
				'title' => 'Registrasi Mitra',
				'tipe' => $amodel->get_tipe_mitra()
			];

			$this->load->view('auth/header', $data);
			$this->load->view('auth/reg_mitra', $data);
			$this->load->view('auth/footer');
		} else {
			/**
			 * If form_validation runs, it will save input data to variable $input
			 * $input variable to store array of data passed to 'Auth_model'
			 * Add @param true in post() method to avoid XSS attack
			 * Add htmlspecialchars() method for change character to HTML entity
			 * Add password_hash() method to create a password hash
			 *  */
			$input['waktu_jemput'] = $this->input->post('waktu_jemput') . ":00";
			$input = [
				'email' => htmlspecialchars($this->input->post('email', true)),
				'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
				'username' => htmlspecialchars($this->input->post('username', true)),
				'alamat' => htmlspecialchars($this->input->post('alamat', true)),
				'no_telp' => $this->input->post('no_telp'),
				'jadwal_jemput' => $this->input->post('jadwal_jemput') . " " . $input['waktu_jemput'],
				'id_tipe' => $this->input->post('id_tipe')
			];

			// var_dump($input);
			// die;

			# Passing $input as a parameter of createUser() function to execute adding data to database
			$amodel->create_mitra($input);
			# Add an alert message to session if createUser() process is successful
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil mendaftarkan akun, silahkan login
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);

			redirect('');
		}
	}

	/**
	 * Navigate to registration mitra page
	 * @access public
	 * @description Show login page if don't have 'email' session saved
	 * @return view login page
	 */
	public function reg_user()
	{
		# $amodel variable to shorten model call 'amodel'
		$amodel = $this->amodel;
		# $validation variable to shorten form_validation library
		$validation = $this->form_validation;
		# Initialize registration rules with reg_rules()
		$validation->set_rules($amodel->reg_user_rules());

		# IF condition to check if there is a stored 'email' session
		if ($this->session->userdata('email')) {
			# If TRUE, add an alert message to session
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-info alert-dismissible fade show" role="alert">
					Anda dalam keadaan login, silahkan <a href="' . site_url('logout') . '" class="alert-link fw-bold">Logout</a> terlebih dahulu!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);

			if ($this->session->userdata('role')) {
				# It will be returned to user dashboard page
				redirect('dashboard_user');
			} else {
				# It will be returned to user dashboard page
				redirect('dashboard');
			}
		}

		# IF statement to check form_validation not running
		if ($validation->run() == FALSE) {
			$data = [
				'project' => 'Bank Sampah Induk Rumah Harum',
				'title' => 'Registrasi User',
				'role' => $amodel->get_role_user()
			];

			$this->load->view('auth/header', $data);
			$this->load->view('auth/reg_user', $data);
			$this->load->view('auth/footer');
		} else {
			/**
			 * If form_validation runs, it will save input data to variable $input
			 * $input variable to store array of data passed to 'Auth_model'
			 * Add @param true in post() method to avoid XSS attack
			 * Add htmlspecialchars() method for change character to HTML entity
			 * Add password_hash() method to create a password hash
			 *  */
			$input = [
				'email' => htmlspecialchars($this->input->post('email', true)),
				'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
				'username' => htmlspecialchars($this->input->post('username', true)),
				'no_telp' => $this->input->post('no_telp'),
				'id_role' => $this->input->post('id_role')
			];

			// var_dump($input);
			// die;

			# Passing $input as a parameter of createUser() function to execute adding data to database
			$amodel->create_user($input);
			# Add an alert message to session if createUser() process is successful
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil mendaftarkan akun, silahkan login
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);

			redirect('login_user');
		}
	}

	/**
	 * Navigate an profil user page
	 * @access public
	 * @return void
	 */
	public function profil_mitra()
	{
		# $amodel variable to shorten model call 'amodel'
		$amodel = $this->amodel;
		# $session variable to save field email & username from user
		$sessions = [
			'email' => $this->session->userdata('email'),
			'username' => $this->session->userdata('username'),
			'tipe' => $this->session->userdata('tipe')
		];
		# $user variable returns user row array data value as per email in stored session
		$mitra = $this->db->get_where('data_mitra', ['email'=>$sessions['email']])->row_array();
		# Ternary operation to set foto image for mitra
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
			if (!$this->session->userdata('tipe')) {
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

		# $data variable to store array of data passed to dashboard page
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Profil',
			'mitra' => $mitra,
			'struktur' => $this->db->get_where('struktur', ['id_mitra'=>$mitra['id_mitra']])->row_array()
		];

		// var_dump($data);
		// die;

		# Load view main on folder sections and pass $data variable
		$this->load->view('sections/main', $data);
	}

	/**
	 * Navigate an profil user page
	 * @access public
	 * @return void
	 */
	public function profil_user()
	{
		# $amodel variable to shorten model call 'amodel'
		$amodel = $this->amodel;
		# $session variable to save field email & username from user
		$sessions = [
			'email' => $this->session->userdata('email'),
			'username' => $this->session->userdata('username'),
			'role' => $this->session->userdata('role')
		];
		# $user variable returns user row array data value as per email in stored session
		$user = $amodel->get_user_by_email($sessions['email']);
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

		# $data variable to store array of data passed to dashboard page
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Profil',
			'user' => $user
		];

		// var_dump($data);
		// die;

		# Load view main on folder sections and pass $data variable
		$this->load->view('sections/main', $data);
	}

	/**
	 * Processing edit_profile
	 * @access public
	 * @return void
	 */
	public function edit_profil()
	{
		$sess = $this->session;
		# $email to getting email from session
		$email = $this->session->userdata('email');
		# $file_name variable to store string email without '@' and '.com'
		$file_name = str_replace(['@', '.com'], ['_', ''], $email);
		/**
		 * $config variable to store settings of upload library
		 * upload_path		=> Location to save file
		 * allowed_types	=> Uploadable file extension
		 * file_name		=> Saved upload file naming
		 * overwrite		=> Allow to overwrite the same file name
		 * max_size			=> Maximal file size on KB
		 * max_width		=> Maximal width of file on px
		 * max_height		=> Maximal height of file on px
		 */
		$config = [
			'upload_path' => FCPATH . 'assets/img/user/',
			'allowed_types' => 'gif|jpg|jpeg|png',
			'file_name' => $file_name,
			'overwrite' => true,
			'max_size' => 1024,
			'max_width' => 1000,
			'max_height' => 1000
		];

		# Initialize upload library
		$this->load->library('upload', $config);

		if ($this->session->userdata('role')) {
			# $user variable returns user row array data value as per email in the stored session
			$user = $this->db->get_where('user', ['email' => $email])->row_array();
			# $old_data variable to store old user data
			$old_data = [
				'foto' => $user['foto'],
				'username' => $user['username'],
				'no_telp' => $user['no_telp']
			];
			# $new_data variable to save value of id_user & username from user
			$new_data = [
				'id_user' => $this->input->post('id_user'),
				'username' => $this->input->post('username'),
				'no_telp' => $this->input->post('no_telp')
			];
		} elseif ($this->session->userdata('tipe')) {
			# $user variable returns user row array data value as per email in the stored session
			$mitra = $this->db->get_where('mitra', ['email' => $email])->row_array();
			# $old_data variable to store old user data
			$old_data = [
				'foto' => $mitra['foto'],
				'username' => $mitra['username'],
				'alamat' => $mitra['alamat'],
				'no_telp' => $mitra['no_telp'],
				'jadwal_jemput' => $mitra['jadwal_jemput']
			];
			$input = [
				'jadwal_jemput' => $this->input->post('jadwal_jemput'),
				'waktu_jemput' => ($this->input->post('waktu_jemput') != "") ? $this->input->post('waktu_jemput')  . ":00" : date('H:i:s', strtotime($old_data['jadwal_jemput']))
			];


			$jadwal_empty = ($input['jadwal_jemput'] != "") ? $input['jadwal_jemput'] . " " . $input['waktu_jemput'] : date('Y-m-d', strtotime($old_data['jadwal_jemput'])) . " " . $input['waktu_jemput'];
			// var_dump($jadwal_empty);
			// die;
			# $new_data variable to save value of id_user & username from user
			$new_data = [
				'id_mitra' => $this->input->post('id_mitra'),
				'username' => $this->input->post('username'),
				'alamat' => $this->input->post('alamat'),
				'no_telp' => $this->input->post('no_telp'),
				'jadwal_jemput' => ($input['jadwal_jemput'] != "" && $input['waktu_jemput'] != date('H:i:s', strtotime($old_data['jadwal_jemput']))) ? $input['jadwal_jemput'] . " " . $input['waktu_jemput'] : $jadwal_empty
			];

			// var_dump($new_data['jadwal_jemput']);
			// die;
		}

		// var_dump($new_data);
		// die;

		# IF statement to check field name on foto arrays
		if (!empty($_FILES['foto']['name'])) {
			# IF failed to upload foto
			if (!$this->upload->do_upload('foto')) {
				# $error variable to store value of error message from upload library
				$error = $this->upload->display_errors();
				# Send error message with session flashdata
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">'
						. $error .
						'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			}
			# ELSEIF statement to check id_user is not null
			elseif (!is_null(($sess->userdata('role')) ? $new_data['id_user'] : $new_data['id_mitra'])) {
				# $uploaded_data variable to store process upload data
				$uploaded_data = $this->upload->data();

				if ($sess->userdata('role')) {
					# $data variable to store data to be passed to the model
					$data = [
						'id_user' => $new_data['id_user'],
						'username' => $new_data['username'],
						'no_telp' => $new_data['no_telp'],
						'foto' => $uploaded_data['file_name']
					];

					# Passing $data as a parameter of update_user() function to update data on database
					$this->amodel->update_user($data);
				} elseif ($sess->userdata('tipe')) {
					# $data variable to store data to be passed to the model
					$data = [
						'id_mitra' => $new_data['id_mitra'],
						'username' => $new_data['username'],
						'alamat' => $new_data['alamat'],
						'no_telp' => $new_data['no_telp'],
						'foto' => $uploaded_data['file_name'],
						'jadwal_jemput' => $new_data['jadwal_jemput']
					];

					// var_dump($data);
					// die;
					# Passing $data as a parameter of update_user() function to update data on database
					$this->amodel->update_mitra($data);
				}

				# Send success message with session flashdata
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil memperbarui profil-1!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
				);
			}
		}
		# ELSEIF statement to check id_user is not null AND current username is not same with new username
		elseif (!is_null(($sess->userdata('role')) ? $new_data['id_user'] && $old_data['username'] != $new_data['username'] || $old_data['no_telp'] != $new_data['no_telp'] : $new_data['id_mitra']) && $old_data['username'] != $new_data['username'] || $old_data['no_telp'] != $new_data['no_telp'] || $old_data['alamat'] != $new_data['alamat'] || $old_data['jadwal_jemput'] != $new_data['jadwal_jemput']) {
			if ($sess->userdata('role')) {
				# $data variable to store data to be passed to the model
				$data = [
					'id_user' => $new_data['id_user'],
					'username' => $new_data['username'],
					'no_telp' => $new_data['no_telp'],
					'foto' => $old_data['foto']
				];
				# Passing $data as a parameter of update_user() function to update data on database
				$this->amodel->update_user($data);
			} elseif ($sess->userdata('tipe')) {
				# $data variable to store data to be passed to the model
				$data = [
					'id_mitra' => $new_data['id_mitra'],
					'username' => $new_data['username'],
					'alamat' => $new_data['alamat'],
					'no_telp' => $new_data['no_telp'],
					'foto' => $old_data['foto'],
					'jadwal_jemput' => $new_data['jadwal_jemput']
				];

				// var_dump($data);
				// die;
				# Passing $data as a parameter of update_mitra() function to update data on database
				$this->amodel->update_mitra($data);
			}

			# Send success message with session flashdata
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil memperbarui profil-2!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			# Send info message with session flashdata
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-secondary alert-dismissible fade show" role="alert">
					Tidak ada perubahan!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		}

		if ($sess->userdata('role')) {
			redirect('profil_user');
		} elseif ($sess->userdata('tipe')) {
			redirect('profil_mitra');
		}
	}

	/**
	 * Processing change password
	 * @access public
	 * @return void
	 */
	public function change_password()
	{
		# $amodel variable to shorten model call 'amodel'
		$amodel = $this->amodel;
		# $sessions variable to shorten session method
		$sessions = $this->session;
		# $validation variable to shorten form_validation library
		$validation = $this->form_validation;
		# Initialize registration rules with reg_rules()
		$validation->set_rules($amodel->change_pass_rules());

		# IF statement while form_validation not run
		if ($validation->run() == FALSE) {
			# Send validation error message with session flashdata
			$sessions->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">'
					. validation_errors() .
					'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			if ($sessions->userdata('role')) {
				# $user variable returns user row array data value as per email in the stored session
				$user = $this->db->get_where('user', ['email' => $sessions->userdata('email')])->row_array();
				# $input variable to store value of form change password
				$input = [
					'id_user' => $this->input->post('id_user'),
					'curr_password' => $this->input->post('curr_password'),
					'new_password' => $this->input->post('new_password'),
					'renew_password' => $this->input->post('renew_password')
				];
			} elseif ($sessions->userdata('tipe')) {
				# $mitra variable returns mitra row array data value as per email in the stored session
				$mitra = $this->db->get_where('mitra', ['email' => $sessions->userdata('email')])->row_array();
				# $input variable to store value of form change password
				$input = [
					'id_mitra' => $this->input->post('id_mitra'),
					'curr_password' => $this->input->post('curr_password'),
					'new_password' => $this->input->post('new_password'),
					'renew_password' => $this->input->post('renew_password')
				];
			}

			# IF statement to check whether entered password matches user data
			if (password_verify($input['curr_password'], ($sessions->userdata('role')) ? $user['password'] : $mitra['password'])) {
				# IF statement to check the new password match with the current password
				if ($input['new_password'] == $input['curr_password']) {
					# Send error message with session flashdata
					$sessions->set_flashdata(
						'message',
						'<div class="alert alert-danger alert-dismissible fade show" role="alert">
							Password baru tidak boleh sama dengan password lama!
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>'
					);
				} else {
					// var_dump($input['new_password']);
					// die;
					# $new_pass variable to store result value of hashing new password
					$new_pass = password_hash($input['new_password'], PASSWORD_DEFAULT);
					if ($sessions->userdata('role')) {
						# Passing $data['id_user'] and $new_pass as a parameter of change_pass() function to update data on database
						$amodel->change_pass_user($user['id_user'], $new_pass);
					} elseif ($sessions->userdata('tipe')) {
						# Passing $data['id_mitra'] and $new_pass as a parameter of change_pass() function to update data on database
						$amodel->change_pass_mitra($mitra['id_mitra'], $new_pass);
					}

					# Send error message with session flashdata
					$sessions->set_flashdata(
						'message',
						'<div class="alert alert-success alert-dismissible fade show" role="alert">
							Berhasil memperbarui password!
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>'
					);
				}
			} else {
				# Send error message with session flashdata
				$sessions->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Password saat ini salah, coba lagi!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			}
		}

		if ($sessions->userdata('role')) {
			redirect('profil_user');
		} elseif ($sessions->userdata('tipe')) {
			redirect('profil_mitra');
		}
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
