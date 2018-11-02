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
$route['default_controller'] = 'bidolu';
$route["iletisim"] = "bidolu/contact_v";
$route["bizimle-calismak-ister-misiniz"] = "bidolu/work_with_us_v";
$route["bilgi-sayfalari/(:any)"] = "bidolu/information_pages_v/$1";
$route["guvenli-alisveris"] = "bidolu/secure_shopping_v";
$route["hakkimizda"] = "bidolu/about_us_v";
$route["hesabim"] = "bidolu/my_account_v";
$route["numune-kutusu-talebi"] = "bidolu/sample_box_request_v";
$route["teklif-iste"] = "bidolu/request_a_quote_v";
$route["is-detayi"] = "bidolu/work_detail_v";
$route["ise-basvur"] = "bidolu/apply_for_work_v";
$route["urunler/(:any)"] = "bidolu/all_product_v/$1";
$route["urun-detay/(:any)"] = "bidolu/product_detail_v/$1";
$route["sikca-sorulan-sorular"] = "bidolu/frequently_asked_questions_v";
$route["giris-yap"] = "bidolu/login_v";
$route["kayit"] = "customerop/register";
$route["giris"] = "customerop/do_login";
$route["cikis"] = "customerop/logout";
$route["bilgi-guncelle/(:any)"] = "customerop/update_information/$1";
$route["adres-ekle/(:any)"] = "customerop/add_address/$1";
$route["adres-sil/(:any)"] = "customerop/addressDelete/$1";
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
