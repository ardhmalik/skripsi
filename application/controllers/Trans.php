<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Trans extends CI_Controller
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
		$this->load->model('trans_m', 'tmodel');
		$this->load->model('actor_m', 'acmodel');
		$this->load->model('user_m', 'umodel');
	}

	private function _add_data_bayar($data)
	{
		$jemput = $this->db->get_where('data_penjemputan', ['id_jemput'=>$data['id_jemput']])->row_array();
		$setor = $this->db->get_where('data_setoran', ['id_setor'=>$jemput['id_setor']])->row_array();
		$mitra = $this->db->get_where('data_mitra', ['id_mitra'=>$jemput['id_mitra']])->row_array();
		$rekening = $this->db->get_where('rekening', ['id_rek'=>$mitra['id_rek']])->row_array();
		
		// var_dump(($mitra));
		// var_dump($rekening);
		// die;
		$data = [
			'total_bayar' => $setor['subtotal'],
			'bank' => $rekening['bank'],
			'rek_tujuan' => $rekening['no_rek'],
			'status' => 0,
			'id_jemput' => $data['id_jemput']
		];
		// var_dump($data);
		// die;
		return $this->tmodel->add_pembayaran($data);
	}

	public function data_penjualan()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		($user['foto'] == null) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Data Penjualan',
			'user' => $user,
			'data_pembeli' => $this->acmodel->get_data_pembeli(),
			'data_sampah' => $this->umodel->get_data_sampah(),
			'data_jual' => $this->tmodel->get_data_penjualan(),
			'penjualan' => $this->tmodel->get_penjualan(),
		];

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
			if ($this->session->userdata('tipe') || $this->session->userdata('role') == "Driver") {
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
		
		$this->load->view('sections/main', $data);
	}
	
	public function data_setoran()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		($user['foto'] == null) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Data Setoran',
			'user' => $user,
			'data_setoran' => $this->tmodel->get_data_setoran(),
		];

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

		$this->load->view('sections/main', $data);
	}
	
	public function data_penjemputan()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		($user['foto'] == null) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Data penjemputan',
			'user' => $user,
			'data_penjemputan' => $this->tmodel->get_data_penjemputan(),
		];

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

		// var_dump($data);
		// die;

		$this->load->view('sections/main', $data);
	}
	
	public function data_pembayaran()
	{
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for user
		($user['foto'] == null) ? $user['foto'] = 'avatar.png' : $user['foto'];
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Data Pembayaran',
			'user' => $user,
			'data_penjemputan' => $this->tmodel->get_data_penjemputan(),
			'data_bayar' => $this->tmodel->get_data_pembayaran(),
		];

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

		$this->load->view('sections/main', $data);
	}

	public function add_penjualan()
	{
		$this->form_validation->set_rules($this->tmodel->penjualan_rules());

		$sampah = explode('_', $this->input->post('sampah'));
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		$input = [
			'id_user' => $user['id_user'],
			'id_sampah' => $sampah[0],
			'id_pembeli' => $this->input->post('id_pembeli'),
			'harga' => $sampah[1],
			'fee' => intval($this->input->post('fee')),
			'berat' => floatval($this->input->post('berat'))
		];
		$input['harga_akhir'] = $input['harga'] + $input['fee'];
		$input['total_harga'] = $input['berat'] * $input['harga_akhir'];

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">'
					. form_error('berat') . form_error('fee') .
					'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			if ($input['berat'] <= 0 || $input['fee'] <= 0) {
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Masukkan nilai lebih dari 0!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			} else {
				$data = [
					'harga' => $input['harga_akhir'],
					'berat' => $input['berat'],
					'subtotal' => $input['total_harga'],
					'id_sampah' => $input['id_sampah'],
					'id_pembeli' => $input['id_pembeli'],
					'id_user' => $input['id_user'],
				];
		
				// var_dump($data);
				// die;
		
				# Passing $input as a parameter of createUser() function to execute adding data to database
				$this->tmodel->add_penjualan($data);
				# Add an alert message to session if createUser() process is successful
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-success alert-dismissible fade show" role="alert">
						Berhasil menambahkan data penjualan
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			}
		}

		redirect('data_penjualan');
	}
	
	public function edit_penjualan()
	{
		$this->form_validation->set_rules($this->tmodel->penjualan_rules());

		$sampah = explode('_', $this->input->post('sampah'));
		$email_sess = $this->session->userdata('email');
		$user = $this->db->get_where('user', ['email' => $email_sess])->row_array();
		$input = [
			'id_jual' => $this->input->post('id_jual'),
			'id_user' => $user['id_user'],
			'id_sampah' => $sampah[0],
			'id_pembeli' => $this->input->post('id_pembeli'),
			'harga' => $sampah[2],
			'fee' => intval($this->input->post('fee')),
			'berat' => floatval($this->input->post('berat'))
		];
		$input['harga_akhir'] = $input['harga'] + $input['fee'];
		$input['total_harga'] = $input['berat'] * $input['harga_akhir'];

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">'
					. form_error('berat') . form_error('fee') .
					'<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			if ($input['berat'] <= 0 || $input['fee'] <= 0) {
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Masukkan nilai lebih dari 0!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			} else {
				$data = [
					'id_jual' => $input['id_jual'],
					'harga' => $input['harga_akhir'],
					'berat' => $input['berat'],
					'subtotal' => $input['total_harga'],
					'id_sampah' => $input['id_sampah'],
					'id_pembeli' => $input['id_pembeli'],
					'id_user' => $input['id_user']
				];
		
				// var_dump($data);
				// die;
		
				# Passing $input as a parameter of createUser() function to execute adding data to database
				$this->tmodel->update_penjualan($data);
				# Add an alert message to session if createUser() process is successful
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-success alert-dismissible fade show" role="alert">
						Berhasil memperbarui data penjualan sampah <span class="badge bg-success">'. $sampah[1] .'</span>
						dengan subtotal <span class="badge bg-success">'. "Rp " . number_format($data['subtotal'], 2, ',', '.') .'</span>
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			}
		}

		redirect('data_penjualan');
	}

	public function confirm_jual()
	{
		$input = [
			'id_jual' => $this->input->post('id_jual')
		];

		// var_dump($input);
		// die;
		
		$this->tmodel->confirm_penjualan($input);
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil mengkonfirmasi data penjualan sampah <span class="badge bg-success">'. $this->input->post('nama_sampah') .'</span>
				dengan subtotal <span class="badge bg-success">'. $this->input->post('subtotal') .'</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);
	
		redirect('data_penjualan');
	}
	
	public function confirm_jemput()
	{
		$user = $this->db->get_where('user', ['email'=>$this->session->userdata('email')])->row_array();
		$input = [
			'id_jemput' => $this->input->post('id_jemput'),
			'id_setor' => $this->input->post('id_setor'),
			'id_user' => $user['id_user']
		];

		// var_dump($input);
		// die;
		
		// Automatic add data to pembayaran table
		$this->_add_data_bayar($input);

		$this->tmodel->confirm_penjemputan($input);
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil mengkonfirmasi data penjemputan sampah <span class="badge bg-success">'. $this->input->post('nama_sampah') .'</span>
				dengan berat <span class="badge bg-success">'. $this->input->post('berat') .' kg</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);
	
		redirect('data_penjemputan');
	}
	
	public function confirm_bayar()
	{
		$file_name = 'bukti_bayar_' . date('Y-m-d_H:i:s_', strtotime('now')) . $this->input->post('id_bayar');
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
			'upload_path' => FCPATH . 'assets/img/pembayaran/',
			'allowed_types' => 'jpg|jpeg|png',
			'file_name' => $file_name,
			'overwrite' => true,
			'max_size' => 1024,
			'max_width' => 1800,
			'max_height' => 1800
		];

		
		# Initialize upload library
		$this->load->library('upload', $config);
		
		// var_dump($_FILES);
		// die;
		# IF statement to check field name on foto arrays
		if (!empty($_FILES['bukti']['name'])) {
			# IF failed to upload bukti
			if (!$this->upload->do_upload('bukti')) {
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

				$email = $this->session->userdata('email');
				$user = $this->db->get_where('user', ['email'=>$email])->row_array();
				$input = [
					'id_bayar' => $this->input->post('id_bayar'),
					'bukti' => $uploaded_data['file_name'],
					'id_setor' => $this->input->post('id_setor'),
					'id_user' => $user['id_user'],
				];

				$setor = $this->db->get_where('setoran', ['id_setor'=>$input['id_setor']])->row_array();
		
				var_dump($input);
				die;
		
				$this->tmodel->confirm_pembayaran($input);
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-success alert-dismissible fade show" role="alert">
						Berhasil mengkonfirmasi data pembayaran sampah <span class="badge bg-success">'. $setor['nama_sampah'] .'</span>
						dengan total pembayaran sebesar <span class="badge bg-success"> Rp '. number_format($this->input->post('total_bayar'), 2, ',', '.') .' kg</span>
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			}
		} else {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Upload bukti pembayaran!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		}
	
		redirect('data_pembayaran');
	}
	
	public function del_penjualan()
	{
		$input = [
			'id_jual' => $this->input->post('id_jual')
		];

		// var_dump($input);
		// die;
		
		$this->tmodel->del_penjualan($input);
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil menghapus data penjualan sampah <span class="badge bg-danger">'. $this->input->post('nama_sampah') .'</span>
				dengan subtotal <span class="badge bg-danger">'. $this->input->post('subtotal') .'</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);
	
		redirect('data_penjualan');
	}
}
