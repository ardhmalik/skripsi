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
}
