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

    public function get_data_edukasi()
    {
        $sql = $this->db->get('data_edukasi');
        $query = $sql->result_array();

        return $query;
    }

    public function add_edukasi($data)
    {
        $sql = 'SELECT tambah_edukasi(?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data)->row_array();

        return $query;
    }
}