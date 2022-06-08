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

		// var_dump($data);
		// die;

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

		// var_dump($data);
		// die;

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
