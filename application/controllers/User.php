<?php
defined('BASEPATH') or exit('No direct script access allowed');

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

	/**
	 * Running process to delete avatar images
	 * @access private
	 * @param string $file
	 * @return array|false
	 */
	private function _del_avatar($file)
	{
		return array_map('unlink', glob(FCPATH . "assets/img/user/$file.*"));
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

	public function data_sampah()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		(is_null($user['foto'])) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Data Sampah',
			'user' => $user,
			'data_jenis' => $this->umodel->get_jenis_sampah(),
			'data_sampah' => $this->umodel->get_data_sampah(),
		];

		$this->load->view('sections/main', $data);
	}

	public function add_sampah()
	{
		$file_name = str_replace(' ', '_', $this->input->post('nama'));
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
			'upload_path' => FCPATH . 'assets/img/sampah/',
			'allowed_types' => 'gif|jpg|jpeg|png',
			'file_name' => $file_name,
			'overwrite' => true,
			'max_size' => 1024,
			'max_width' => 1000,
			'max_height' => 1000
		];

		# Initialize upload library
		$this->load->library('upload', $config);

		// var_dump($_FILES);
		// die;

		if (!is_numeric($this->input->post('harga'))) {
			# Add an alert message to session if createUser() process is successful
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Masukkan harga sampah berupa angka!
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		}

		# IF statement to check field name on foto arrays
		if (!empty($_FILES['gambar']['name'])) {
			# IF failed to upload gambar
			if (!$this->upload->do_upload('gambar')) {
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
			} else {
				# $uploaded_data variable to store process upload data
				$uploaded_data = $this->upload->data();
				$input = [
					'nama' => $this->input->post('nama'),
					'harga' => $this->input->post('harga'),
					'gambar' => $uploaded_data['file_name'],
					'id_jenis' => $this->input->post('id_jenis')
				];

				// var_dump($input);
				// die;

				# Passing $input as a parameter of createUser() function to execute adding data to database
				$this->umodel->add_sampah($input);
				# Add an alert message to session if createUser() process is successful
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-success alert-dismissible fade show" role="alert">
						Berhasil menambahkan <span class="badge bg-success">' . $input['nama'] . '</span> ke data sampah!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>'
				);
			}
		} else {
			$input = [
				'nama' => $this->input->post('nama'),
				'harga' => $this->input->post('harga'),
				'gambar' => null,
				'id_jenis' => $this->input->post('id_jenis')
			];
			// var_dump($input);
			// die;
			# Passing $input as a parameter of createUser() function to execute adding data to database
			$this->umodel->add_sampah($input);
			# Add an alert message to session if createUser() process is successful
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
						Berhasil menambahkan <span class="badge bg-success">' . $input['nama'] . '</span> ke data sampah!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
			);
		}

		redirect('data_sampah');
	}

	public function edit_sampah()
	{
		$sampah = $this->db->get_where('sampah', ['id_sampah'=>$this->input->post('id_sampah')])->row_array();
		
		$file_name = $this->input->post('id_sampah');
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
			'upload_path' => FCPATH . 'assets/img/sampah/',
			'allowed_types' => 'gif|jpg|jpeg|png',
			'file_name' => $file_name,
			'overwrite' => true,
			'max_size' => 1024,
			'max_width' => 1000,
			'max_height' => 1000
		];
		
		# Initialize upload library
		$this->load->library('upload', $config);
		
		// var_dump($_FILES);
		// die;
		
		if (!is_numeric($this->input->post('harga'))) {
			# Add an alert message to session if createUser() process is successful
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
				Masukkan harga sampah berupa angka!
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			# IF statement to check field name on foto arrays
			if (!empty($_FILES['gambar']['name'])) {
				# IF failed to upload gambar
				if (!$this->upload->do_upload('gambar')) {
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
				} else {
					if (!is_null($sampah['gambar'])) {
						$this->_del_avatar($sampah['gambar']);
					}
					
					# $uploaded_data variable to store process upload data
					$uploaded_data = $this->upload->data();
					$input = [
						'id_sampah' => $this->input->post('id_sampah'),
						'nama' => $this->input->post('nama'),
						'harga' => $this->input->post('harga'),
						'gambar' => $uploaded_data['file_name'],
						'id_jenis' => $this->input->post('id_jenis')
					];
					
					// var_dump($sampah);
					// die;
	
					# Passing $input as a parameter of createUser() function to execute adding data to database
					$this->umodel->update_sampah($input);
					# Add an alert message to session if createUser() process is successful
					$this->session->set_flashdata(
						'message',
						'<div class="alert alert-success alert-dismissible fade show" role="alert">
							Berhasil memperbarui <span class="badge bg-success">' . $input['nama'] . '</span>
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
							</div>'
					);
				}
			} else {
				$input = [
					'id_sampah' => $this->input->post('id_sampah'),
					'nama' => $this->input->post('nama'),
					'harga' => $this->input->post('harga'),
					'gambar' => $sampah['gambar'],
					'id_jenis' => $this->input->post('id_jenis')
				];
				// var_dump($sampah);
				// die;
				# Passing $input as a parameter of createUser() function to execute adding data to database
				$this->umodel->update_sampah($input);
				# Add an alert message to session if createUser() process is successful
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-success alert-dismissible fade show" role="alert">
							Berhasil memperbarui <span class="badge bg-success">' . $input['nama'] . '</span>
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>'
				);
			}
		}

		redirect('data_sampah');
	}
}
