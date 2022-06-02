<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Auth_model is child of CI_Model
 * @author Malik Ardhiansyah
 * @description This model class as link between database and controllers
 * @return functions Used by Auth and Plans Controller
 */
class Mitra_m extends CI_Model
{

    public function edit_rek_rules()
    {
        return [
            [
                'field' => 'bank',
                'label' => 'Bank',
                'rules' => 'required|trim'
            ], [
                'field' => 'no_rek',
                'label' => 'Nomor Rekening',
                'rules' => 'required|trim|numeric|min_length[7]',
                'errors' => [
                    'numeric' => 'Masukkan karakter nomor rekening berupa angka!',
                    'min_length' => 'Masukkan nomor rekening minimal 7 digit!'
                ]
            ], [
                'field' => 'atas_nama',
                'label' => 'Atas Nama',
                'rules' => 'required|trim|min_length[4]',
                'errors' => [
                    'min_length' => 'Masukkan atas nama minimal 4 digit karakter!'
                ]
            ]
        ];
    }
    
    public function edit_struktur_rules()
    {
        return [
            [
                'field' => 'total_nsb',
                'label' => 'Total Nasabah',
                'rules' => 'required|numeric',
                'errors' => [
                    'numeric' => 'Masukkan nilai total nasabah berupa angka!'
                ]
            ]
        ];
    }

    public function update_struktur($data)
    {
        $sql = 'SELECT ubah_struktur(?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data);

        return $query;
    }
    
    public function get_rek_mitra($id_mitra)
    {
        $sql = 'CALL tampil_detail_rekening(?)';
        $query = $this->db->query($sql, $id_mitra)->row_array();

        return $query;
    }
    
    public function update_rek($data)
    {
        // var_dump($data);
        // die;
        $sql = 'SELECT ubah_rekening(?, ?, ?, ?)';
        $query = $this->db->query($sql, $data);

        return $query;
    }
}