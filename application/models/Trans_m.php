<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Auth_model is child of CI_Model
 * @author Malik Ardhiansyah
 * @description This model class as link between database and controllers
 * @return functions Used by Auth and Plans Controller
 */
class Trans_m extends CI_Model
{

    public function penjualan_rules()
    {
        return [
            [
                'field' => 'berat',
                'label' => 'Berat sampah',
                'rules' => 'required|trim|numeric',
                'errors' => [
                    'numeric' => 'Masukkan Berat berupa angka!'
                ]
            ], [
                'field' => 'fee',
                'label' => 'Fee',
                'rules' => 'required|trim|numeric',
                'errors' => [
                    'numeric' => 'Masukkan Fee berupa angka!',
                ]
            ]
        ];
    }
    
    public function get_penjualan()
    {
        $sql = $this->db->get('penjualan');
        $query = $sql->result_array();

        return $query;
    }

    public function get_data_penjualan()
    {
        $sql = $this->db->get('data_penjualan');
        $query = $sql->result_array();

        return $query;
    }
    
    public function get_data_setoran()
    {
        $sql = $this->db->get('data_setoran');
        $query = $sql->result_array();

        return $query;
    }

    public function add_penjualan($data)
    {
        $sql = 'SELECT tambah_penjualan(?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }
    
    public function update_penjualan($data)
    {
        $sql = 'SELECT ubah_penjualan(?, ?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }

    public function confirm_penjualan($data)
    {
        $sql = 'SELECT konfirmasi_penjualan(?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }

    public function del_penjualan($data)
    {
        $sql = 'SELECT hapus_penjualan(?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }
}