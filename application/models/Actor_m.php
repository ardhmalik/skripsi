<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Auth_model is child of CI_Model
 * @author Malik Ardhiansyah
 * @description This model class as link between database and controllers
 * @return functions Used by Auth and Plans Controller
 */
class Actor_m extends CI_Model
{
    public function pembeli_rules()
    {
        return [
            [
                'field' => 'nama',
                'label' => 'Nama Pembeli',
                'rules' => 'required|trim|is_unique[pembeli.nama]',
                'errors' => [
                    'is_unique' => 'Nama Pembeli telah terdaftar, coba gunakan nama lain!'
                ]
            ], [
                'field' => 'no_telp',
                'label' => 'Nomor HP',
                'rules' => 'required|trim|numeric|min_length[8]',
                'errors' => [
                    'numeric' => 'Masukkan Nomor HP berupa angka!',
                    'min_length' => 'Masukkan Nomor HP minimal 8 digit angka!'
                ]
            ], [
                'field' => 'alamat',
                'label' => 'Username',
                'rules' => 'required|trim'
            ]
        ];
    }
    
    public function get_data_admin()
    {
        $sql = $this->db->get('data_admin');
        $query = $sql->result_array();

        return $query;
    }

    public function get_data_mitra()
    {
        $sql = $this->db->get('data_mitra');
        $query = $sql->result_array();

        return $query;
    }

    public function active_admin($id)
    {
        $sql = 'SELECT aktifkan_admin(?)';
        $query = $this->db->query($sql, $id)->row_array();

        return $query;
    }

    public function inactive_admin($id)
    {
        $sql = 'SELECT hapus_admin(?)';
        $query = $this->db->query($sql, $id)->row_array();

        return $query;
    }

    public function active_mitra($id)
    {
        $sql = 'SELECT aktifkan_mitra(?)';
        $query = $this->db->query($sql, $id)->row_array();

        return $query;
    }

    public function inactive_mitra($id)
    {
        $sql = 'SELECT hapus_mitra(?)';
        $query = $this->db->query($sql, $id)->row_array();

        return $query;
    }

    public function get_data_pembeli()
    {
        $sql = 'SELECT pembeli.*, used_pembeli.used_jual FROM pembeli LEFT JOIN used_pembeli ON pembeli.id_pembeli=used_pembeli.id_pembeli';
        $query = $this->db->query($sql)->result_array();

        return $query;
    }

    public function add_pembeli($data)
    {
        $sql = 'SELECT tambah_pembeli(?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }

    public function update_pembeli($data)
    {
        $sql = 'SELECT ubah_pembeli(?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }

    public function del_pembeli($data)
    {
        $sql = 'SELECT hapus_pembeli(?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }
}
