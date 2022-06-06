<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Auth_model is child of CI_Model
 * @author Malik Ardhiansyah
 * @description This model class as link between database and controllers
 * @return functions Used by Auth and Plans Controller
 */
class User_m extends CI_Model
{
    public function get_all_user()
    {
        $sql = $this->db->get('data_user');
        $query = $sql->result_array();

        return $query;
    }

    public function get_all_mitra()
    {
        $sql = $this->db->get('data_mitra');
        $query = $sql->result_array();

        return $query;
    }

    public function get_data_edukasi()
    {
        $sql = $this->db->get('data_edukasi');
        $query = $sql->result_array();

        return $query;
    }

    public function get_data_sampah()
    {
        $sql = $this->db->get('data_sampah');
        $query = $sql->result_array();

        return $query;
    }

    public function get_jenis_sampah()
    {
        $sql = $this->db->get('jenis');
        $query = $sql->result_array();

        return $query;
    }

    public function detail_edukasi($id)
    {
        $sql = $this->db->get_where('data_edukasi', ['id_edu' => $id]);
        $query = $sql->row_array();

        return $query;
    }

    public function data_followers_edu()
    {
        $sql = $this->db->get('followers_edu');
        $query = $sql->result_array();

        return $query;
    }

    public function add_edukasi($data)
    {
        $sql = 'SELECT tambah_edukasi(?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }

    public function update_edukasi($data)
    {
        $sql = 'SELECT ubah_edukasi(?, ?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }

    public function add_sampah($data)
    {
        $sql = 'SELECT tambah_sampah(?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }
    
    public function update_sampah($data)
    {
        $sql = 'SELECT ubah_sampah(?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();
        
        return $query;
    }
    
    public function add_jenis($data)
    {
        $sql = 'SELECT tambah_jenis(?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }
    
    public function update_jenis($data)
    {
        $sql = 'SELECT ubah_jenis(?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }
}
