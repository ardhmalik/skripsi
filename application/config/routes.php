<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'auth/login_mitra';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


/**
 * CUSTOM ROUTING
 */ 

# BASIC
$route['reg_user'] = 'auth/reg_user';
$route['reg_mitra'] = 'auth/reg_mitra';
$route['login_user'] = 'auth/login_user';
$route['login_mitra'] = 'auth/login_mitra';
$route['profil_user'] = 'auth/profil_user';
$route['profil_mitra'] = 'auth/profil_mitra';
$route['edit_profil'] = 'auth/edit_profil';
$route['change_password'] = 'auth/change_password';
$route['logout'] = 'auth/logout';

# USER
// all data
$route['data_role'] = 'actor/data_role';
$route['data_tipe'] = 'actor/data_tipe';
$route['data_jenis'] = 'user/data_jenis';
$route['data_admin'] = 'actor/data_admin';
$route['data_mitra'] = 'actor/data_mitra';
$route['data_edukasi'] = 'user/data_edukasi';
$route['data_setoran'] = 'trans/data_setoran';
$route['data_penjemputan'] = 'trans/data_penjemputan';
$route['data_pembayaran'] = 'trans/data_pembayaran';
$route['data_penjualan'] = 'trans/data_penjualan';
$route['data_pembeli'] = 'actor/data_pembeli';
$route['data_sampah'] = 'user/data_sampah';
// dashboard
$route['dashboard_user'] = 'user/dashboard';
// role
$route['add_role'] = 'actor/add_role';
$route['edit_role'] = 'actor/edit_role';
// tipe
$route['add_tipe'] = 'actor/add_tipe';
$route['edit_tipe'] = 'actor/edit_tipe';
// jenis
$route['add_jenis'] = 'user/add_jenis';
$route['edit_jenis'] = 'user/edit_jenis';
// admin
$route['on_admin'] = 'actor/on_admin';
$route['off_admin'] = 'actor/off_admin';
// mitra
$route['on_mitra'] = 'actor/on_mitra';
$route['off_mitra'] = 'actor/off_mitra';
// sampah
$route['add_sampah'] = 'user/add_sampah';
$route['edit_sampah'] = 'user/edit_sampah';
$route['del_sampah'] = 'user/del_sampah';
// edukasi
$route['add_edukasi'] = 'user/add_edukasi';
$route['edit_edukasi'] = 'user/edit_edukasi';
$route['del_edukasi'] = 'user/del_edukasi';
// penjualan
$route['add_penjualan'] = 'trans/add_penjualan';
$route['edit_penjualan'] = 'trans/edit_penjualan';
$route['del_penjualan'] = 'trans/del_penjualan';
$route['confirm_jual'] = 'trans/confirm_jual';
// pembeli
$route['add_pembeli'] = 'actor/add_pembeli';
$route['edit_pembeli'] = 'actor/edit_pembeli';
$route['del_pembeli'] = 'actor/del_pembeli';
// pembayaran
$route['confirm_bayar'] = 'trans/confirm_bayar';
// penjemputan
$route['confirm_jemput'] = 'trans/confirm_jemput';



# MITRA
// lihat data
$route['setoran'] = 'mitra/setoran';
$route['sampah'] = 'mitra/sampah';
$route['rekening'] = 'mitra/rekening';
$route['struktur'] = 'mitra/struktur';
// dashboard
$route['dashboard'] = 'mitra/dashboard';
// rekening
$route['edit_rek'] = 'mitra/edit_rek';
// struktur
$route['edit_struktur'] = 'mitra/edit_struktur';
// edukasi
$route['edukasi'] = 'mitra/edukasi';
// setoran
$route['add_setoran'] = 'mitra/add_setoran';
$route['edit_setoran'] = 'mitra/edit_setoran';
$route['del_setoran'] = 'mitra/del_setoran';