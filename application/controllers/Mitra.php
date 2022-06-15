<?php
defined('BASEPATH') or exit('No direct script access allowed');

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
		$this->load->model('trans_m', 'tmodel');
		$this->load->model('user_m', 'umodel');
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
		$mitra = $this->db->get_where('mitra', ['email' => $sessions['email']])->row_array();
		// var_dump($mitra);
		// die;

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
			'mitra' => $mitra,
			'month' => $this->db->get('month')->result_array(),
			'setoran' => $this->tmodel->get_data_setoran(),
			'top_setoran' => $this->tmodel->top_setoran(),
			'setor_per_month' => []
		];

		# Looping to insert array data to $data['new_setor']
		for ($i = 0; $i < count($data['setoran']); $i++) {
			/**
			 * Logic for insert array count to $data['jual_per_month']
			 */
			# $penjualan variable to store result array of jual per month
			$this->db->select('subtotal, status');
			$this->db->where('id_mitra', $mitra['id_mitra']);
			$this->db->from('setoran');
			$setoran = $this->db->get()->result_array();
			$subtotal = [];
			// var_dump($setoran);
			// die;
			# push array to $data['jual_per_month']
			$data['total_setoran'] = count($setoran);
			for ($j=0; $j < count($setoran); $j++) { 
				if ($setoran[$j]['status'] == "Selesai") {
					array_push($subtotal, $setoran[$j]['subtotal']);
				}
			}
			# push array to $data['jual_per_month']
			$data['total_pendapatan'] = array_sum($subtotal);
		}

		# Looping to insert array data to $data['new_jual']
		for ($i = 0; $i < count($data['month']); $i++) {
			/**
			 * Logic for insert array count to $data['jual_per_month']
			 */
			# $penjualan variable to store result array of jual per month
			$this->db->like('tanggal', '-' . $data['month'][$i]['month_number'] . '-');
			$this->db->select('status');
			$this->db->where('id_mitra', $mitra['id_mitra']);
			$this->db->from('setoran');
			$setoran = $this->db->get()->result_array();

			# push array to $data['jual_per_month']
			array_push($data['setor_per_month'], count($setoran));
		}

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

	public function edit_struktur()
	{
		$this->form_validation->set_rules($this->mmodel->edit_struktur_rules());

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
				'id_struktur' => $this->input->post('id_struktur'),
				'ketua' => $this->input->post('ketua'),
				'sekretaris' => $this->input->post('sekretaris'),
				'bendahara' => $this->input->post('bendahara'),
				'anggota' => $this->input->post('anggota'),
				'total_nsb' => $this->input->post('total_nsb')
			];

			// var_dump($input);
			// die;

			$this->mmodel->update_struktur($input);
			# Send error message with session flashdata
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil memperbarui struktur!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		}

		// var_dump($input);
		// die;

		redirect('profil_mitra');
	}

	public function sampah()
	{
		$email_sess = $this->session->userdata('email');
		$mitra = $this->db->get_where('mitra', ['email' => $email_sess])->row_array();
		# Ternary operation to set foto image for mitra
		(is_null($mitra['foto'])) ? $mitra['foto'] = 'avatar.png' : $mitra['foto'];
		$data = [
			'project' => 'Bank sampah Induk Rumah Harum',
			'title' => 'Data Sampah',
			'mitra' => $mitra,
			'data_jenis' => $this->umodel->get_jenis_sampah(),
			'data_sampah' => $this->umodel->get_data_sampah(),
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
			redirect('');
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

		$this->load->view('sections/main', $data);
	}

	public function setoran()
	{
		$email_sess = $this->session->userdata('email');
		# $mitra variable returns mitra row array data value as per email in stored session
		$mitra = $this->db->get_where('mitra', ['email' => $email_sess])->row_array();

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
			'title' => 'Setoran',
			'mitra' => $mitra,
			'data_sampah' => $this->umodel->get_data_sampah(),
			'setoran' => $this->tmodel->get_setoran_mitra($mitra['id_mitra']),
		];

		// var_dump($data);
		// die;

		$this->load->view('sections/main', $data);
	}

	public function add_setoran()
	{
		$email_sess = $this->session->userdata('email');
		$mitra = $this->db->get_where('mitra', ['email' => $email_sess])->row_array();

		$sampah = explode('_', $this->input->post('sampah'));
		$input['id_sampah'] = $sampah[0];
		$input['harga'] = $sampah[1];
		$input['nama_sampah'] = $sampah[2];
		$input['curr_jadwal'] = $this->input->post('curr_jadwal');
		$input['berat'] = $this->input->post('berat');
		$input['jadwal_jemput'] = (empty($this->input->post('jadwal_jemput'))) ? null : $this->input->post('jadwal_jemput') . " " . $this->input->post('waktu_jemput') . ":00";

		// var_dump($input);
		// die;

		if (!is_numeric($input['berat'])) {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Masukkan nilai berat berupa angka!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} elseif ($input['berat'] <= 0) {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Masukkan nilai berat lebih dari 0!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} elseif (!is_null($input['curr_jadwal']) && !is_null($input['jadwal_jemput']) || is_null($input['curr_jadwal']) && is_null($input['jadwal_jemput'])) {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Pilih salah satu jadwal penjemputan!
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			$data = [
				'berat' => $input['berat'],
				'subtotal' => $input['berat'] * $input['harga'],
				'id_sampah' => $input['id_sampah'],
				'id_mitra' => $mitra['id_mitra'],
				'jadwal_jemput' => (is_null($input['curr_jadwal'])) ? $input['jadwal_jemput'] : $mitra['jadwal_jemput'],
			];

			// var_dump($data);
			// die;

			# Passing $input as a parameter of createUser() function to execute adding data to database
			$this->tmodel->add_setoran($data);
			# Add an alert message to session if createUser() process is successful
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil menambah data setoran sampah <span class="badge bg-success">' . $input['nama_sampah'] . '</span>
				dengan subtotal <span class="badge bg-success">' . "Rp " . number_format($data['subtotal'], 2, ',', '.') . '</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
			);
		}

		redirect('setoran');
	}

	public function edit_setoran()
	{
		$email_sess = $this->session->userdata('email');
		$mitra = $this->db->get_where('mitra', ['email' => $email_sess])->row_array();

		$sampah = explode('_', $this->input->post('sampah'));
		$input['id_sampah'] = $sampah[0];
		$input['harga'] = $sampah[1];
		$input['nama_sampah'] = $sampah[2];
		$input['berat'] = $this->input->post('berat');
		$input['jadwal_jemput'] = (empty($this->input->post('jadwal_jemput'))) ? null : $this->input->post('jadwal_jemput') . " " . $this->input->post('waktu_jemput') . ":00";


		// Current data
		$curr = [
			'id_sampah' => $this->input->post('curr_id_sampah'),
			'jadwal_jemput' => $this->input->post('curr_jadwal_jemput'),
			'berat' => $this->input->post('curr_berat')
		];

		// var_dump(is_null($input['jadwal_jemput']));
		// var_dump($input['jadwal_decission']);
		// die;

		// New data
		$new = [
			'id_sampah' => $input['id_sampah'],
			'jadwal_jemput' => (is_null($input['jadwal_jemput'])) ? $curr['jadwal_jemput'] : $input['jadwal_jemput'],
			'berat' => $input['berat']
		];

		// var_dump($curr, $new);
		// die;

		if (empty(array_diff($curr, $new))) {
			$this->session->set_flashdata(
				'message',
				'<div class="alert alert-info alert-dismissible fade show" role="alert">
					Tidak melakukan perubahan apapun
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
			);
		} else {
			if (!is_numeric($input['berat'])) {
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Masukkan nilai berat berupa angka!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			} elseif ($input['berat'] <= 0) {
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Masukkan nilai berat lebih dari 0!
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>'
				);
			} else {
				$data = [
					'id_setor' => $this->input->post('id_setor'),
					'berat' => $new['berat'],
					'subtotal' => $new['berat'] * $input['harga'],
					'id_sampah' => $input['id_sampah'],
					'jadwal_jemput' => $new['jadwal_jemput'],
				];

				// var_dump($data);
				// die;

				# Passing $input as a parameter of createUser() function to execute adding data to database
				$this->tmodel->update_setoran($data);
				# Add an alert message to session if createUser() process is successful
				$this->session->set_flashdata(
					'message',
					'<div class="alert alert-success alert-dismissible fade show" role="alert">
					Berhasil menambah data setoran sampah <span class="badge bg-primary">' . $input['nama_sampah'] . '</span>
					dengan subtotal <span class="badge bg-primary">' . "Rp " . number_format($data['subtotal'], 2, ',', '.') . '</span>
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>'
				);
			}
		}

		redirect('setoran');
	}

	public function del_setoran()
	{
		$input = [
			'id_setor' => $this->input->post('id_setor')
		];

		// var_dump($input);
		// die;

		$this->tmodel->del_setoran($input);
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil menghapus data setoran sampah <span class="badge bg-danger">' . $this->input->post('nama_sampah') . '</span>
				dengan subtotal <span class="badge bg-danger">' . $this->input->post('subtotal') . '</span>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('setoran');
	}

	public function edukasi()
	{
		$email_sess = $this->session->userdata('email');
		# $mitra variable returns mitra row array data value as per email in stored session
		$mitra = $this->db->get_where('mitra', ['email' => $email_sess])->row_array();

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
			'title' => 'Edukasi',
			'mitra' => $mitra,
			'data_edu' => $this->umodel->get_data_edukasi(),
		];

		$this->load->view('sections/main', $data);
	}

	public function join_edukasi()
	{
		$input = [
			'id_mitra' => $this->input->post('id_mitra'),
			'id_edu' => $this->input->post('id_edu')
		];

		// var_dump($id_mitra);
		// var_dump($id_edu);
		// die;

		# Passing $input as a parameter of createUser() function to execute adding data to database
		$this->mmodel->join_edukasi($input);
		# Add an alert message to session if createUser() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil mengikuti edukasi, klik tombol <span class="badge bg-dark">Batal</span> untuk membatalkan
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('edukasi');
	}

	public function cancel_edukasi()
	{
		$id_mitra = $this->input->post('id_mitra');

		// var_dump($id_mitra);
		// die;

		# Passing $input as a parameter of createUser() function to execute adding data to database
		$this->mmodel->cancel_edukasi($id_mitra);
		# Add an alert message to session if createUser() process is successful
		$this->session->set_flashdata(
			'message',
			'<div class="alert alert-success alert-dismissible fade show" role="alert">
				Berhasil batal mengikuti edukasi, klik tombol <span class="badge bg-primary">Ikut</span> untuk mengikuti edukasi
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>'
		);

		redirect('edukasi');
	}
}
