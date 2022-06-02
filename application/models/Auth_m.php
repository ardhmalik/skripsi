<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Auth_model is child of CI_Model
 * @author Malik Ardhiansyah
 * @description This model class as link between database and controllers
 * @return functions Used by Auth and Plans Controller
 */
class Auth_m extends CI_Model
{
    /**
     * Rules of login authentification 
     * @access public
     * @description Contains the login rules that the form_validation library will load
     * @return string [][]
     */
    public function login_rules()
    {
        return [
            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => 'required|trim|valid_email',
                'errors' => [
                    'valid_email' => 'Format email salah!'
                ]
            ], [
                'field' => 'password',
                'label' => 'Password',
                'rules' => 'required|trim'
            ]
        ];
    }

    /**
     * Rules of registration authentification 
     * @access public
     * @description Contains the registration rules that the form_validation library will load
     * @return (string|string[])[][]
     */
    public function reg_mitra_rules()
    {
        return [
            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => 'required|trim|valid_email|is_unique[mitra.email]',
                'errors' => [
                    'is_unique' => 'Email telah terdaftar, coba gunakan email lain!'
                ]
            ], [
                'field' => 'password',
                'label' => 'Password',
                'rules' => 'required|min_length[5]|trim',
                'errors' => [
                    'min_length' => 'Masukkan password minimal 5 digit!'
                ]
            ], [
                'field' => 'username',
                'label' => 'Username',
                'rules' => 'required|trim|is_unique[mitra.username]',
                'errors' => [
                    'is_unique' => 'Username telah terdaftar, coba username lain!'
                ]
            ], [
                'field' => 'alamat',
                'label' => 'Username',
                'rules' => 'required|trim'
            ], [
                'field' => 'no_telp',
                'label' => 'Nomor HP',
                'rules' => 'required|trim|numeric|min_length[8]',
                'errors' => [
                    'numeric' => 'Masukkan karakter berupa angka!',
                    'min_length' => 'Masukkan nomor HP minimal 8 digit angka!'
                ]
            ], [
                'field' => 'jadwal_jemput',
                'label' => 'Jadwal jemput',
                'rules' => 'required'
            ], [
                'field' => 'id_tipe',
                'label' => 'Tipe mitra',
                'rules' => 'required'
            ]
        ];
    }

    /**
     * Rules of change password 
     * @access public
     * @description Contains the change password rules
     * @return string [][]
     */
    public function change_pass_rules()
    {
        return [
            [
                'field' => 'curr_password',
                'label' => 'Current Password',
                'rules' => 'required'
            ], [
                'field' => 'new_password',
                'label' => 'New Password',
                'rules' => 'required|trim|min_length[5]',
                'errors' => [
                    'min_length' => 'Password baru harus memiliki 5 karakter atau lebih!'
                ]
            ], [
                'field' => 'renew_password',
                'label' => 'Repeat Password',
                'rules' => 'required|matches[new_password]',
                'errors' => [
                    'matches' => 'Repeat Password tidak sama dengan New Password, coba lagi!'
                ]
            ]
        ];
    }
    
    /**
     * Rules of registration authentification 
     * @access public
     * @description Contains the registration rules that the form_validation library will load
     * @return (string|string[])[][]
     */
    public function reg_user_rules()
    {
        return [
            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => 'required|trim|valid_email|is_unique[user.email]',
                'errors' => [
                    'is_unique' => 'Email telah terdaftar, coba gunakan email lain!'
                ]
            ], [
                'field' => 'password',
                'label' => 'Password',
                'rules' => 'required|min_length[5]|trim',
                'errors' => [
                    'min_length' => 'Masukkan password minimal 5 digit!'
                ]
            ], [
                'field' => 'username',
                'label' => 'Username',
                'rules' => 'required|trim|is_unique[user.username]',
                'errors' => [
                    'is_unique' => 'Username telah terdaftar, coba username lain!'
                ]
            ], [
                'field' => 'no_telp',
                'label' => 'Nomor HP',
                'rules' => 'required|trim|numeric|min_length[8]',
                'errors' => [
                    'numeric' => 'Masukkan karakter berupa angka!',
                    'min_length' => 'Masukkan nomor HP minimal 8 digit angka!'
                ]
            ], [
                'field' => 'id_role',
                'label' => 'Role user',
                'rules' => 'required'
            ]
        ];
    }
    
    /**
     * Finds and returns a tipe mitra
     * @access public
     * @return array of tipe mitra
     */
    public function get_tipe_mitra()
    {
        $sql = $this->db->get('tipe');
        $query = $sql->result_array();

        return $query;
    }
    
    /**
     * Finds and returns a tipe mitra
     * @access public
     * @return array of tipe mitra
     */
    public function get_role_user()
    {
        $sql = $this->db->get('role');
        $query = $sql->result_array();

        return $query;
    }

    /**
     * Finds and returns a mitra by email
     * @access public
     * @param string $email Contains email
     * @return row of mitra
     */
    public function get_mitra_by_email($email)
    {
        $sql = 'CALL tampil_profil_mitra(?)';
        $query = $this->db->query($sql, $email)->row_array();

        return $query;
    }
    
    /**
     * Finds and returns a user by email
     * @access public
     * @param string $email Contains email
     * @return row of user
     */
    public function get_user_by_email($email)
    {
        $sql = 'CALL tampil_profil_user(?)';
        $query = $this->db->query($sql, $email)->row_array();

        return $query;
    }

    /**
     * Create and insert new user
     * @access public
     * @param string $data Containing an array of emails, usernames, passwords
     * @description A function that executes a query with a stored procedure 
     * 'addUser(email_param, username_param, password_param)'
     */
    public function create_mitra($data)
    {
        $sql = 'CALL tambah_mitra(?, ?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data);

        return $query;
    }
    
    /**
     * Create and insert new user
     * @access public
     * @param string $data Containing an array of emails, usernames, passwords
     * @description A function that executes a query with a stored procedure 
     * 'addUser(email_param, username_param, password_param)'
     */
    public function create_user($data)
    {
        $sql = 'CALL tambah_user(?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data);

        return $query;
    }

    /**
     * Update data user
     * @access public
     * @param string $data Containing an array of id_user, avatar, username
     * @description A function that executes a query with a stored procedure 
     * 'editser(id_user_param, avatar_param, username_param)'
     */
    public function update_user($data)
    {
        $sql = 'SELECT ubah_profil_user(?, ?, ?, ?)';
        $query = $this->db->query($sql, $data);

        return $query;
    }
    
    /**
     * Update data user
     * @access public
     * @param string $data Containing an array of id_user, avatar, username
     * @description A function that executes a query with a stored procedure 
     * 'editser(id_user_param, avatar_param, username_param)'
     */
    public function update_mitra($data)
    {
        $sql = 'SELECT ubah_profil_mitra(?, ?, ?, ?, ?, ?)';
        $query = $this->db->query($sql, $data);

        return $query;
    }

    /**
     * Processing change password
     * @access public
     * @param mixed $id_user and $new_pass
     * @return mixed
     */
    public function change_pass_user($id_user, $new_pass)
    {
        $this->db->set('password', $new_pass);
        $this->db->where('id_user', $id_user);
        $query = $this->db->update('user');

        return $query;
    }
    
    /**
     * Processing change password
     * @access public
     * @param mixed $id_user and $new_pass
     * @return mixed
     */
    public function change_pass_mitra($id_mitra, $new_pass)
    {
        $this->db->set('password', $new_pass);
        $this->db->where('id_mitra', $id_mitra);
        $query = $this->db->update('mitra');

        return $query;
    }
}
