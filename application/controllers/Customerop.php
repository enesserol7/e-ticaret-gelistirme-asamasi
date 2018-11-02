<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Customerop extends CI_Controller {
    public $viewFolder = "";
    public function __construct(){
        parent::__construct();
        $this->viewFolder = "homepage";
        $this->load->model("customer_model");
        $this->load->model("other_addresses_model");
        $this->load->helper("text");
    }
    public function do_login(){
        if(get_active_user()){
            redirect(base_url("hesabim"));
        }
        $this->load->library("form_validation");
        $this->form_validation->set_rules("email", "Kullanıcı Adı", "required|trim");
        $this->form_validation->set_rules("password", "Şifre", "required|trim|min_length[6]|max_length[8]");
        $this->form_validation->set_message(
            array(
                "required"  => "<b>{field}</b> alanı doldurulmalıdır!",
                "valid_email" => "Lütfen geçerli bir e-posta adresi giriniz!",
                "min_length" => "{field} en az 6 karakterden oluşmalıdır!",
                "max_length" => "{field} en fazla 8 karakterden oluşmalıdır!"
            )
        );
        $validate = $this->form_validation->run();
        if ($validate == FALSE) {
            $viewData = new stdClass();
            $viewData->viewFolder = "login_v";
            $viewData->form_error = true;
            $this->load->view($viewData->viewFolder,$viewData);
        }else{
            $customer = $this->customer_model->get(
                array(
                    "email" => $this->input->post("email"),
                    "password" => md5($this->input->post("password")),
                    "isActive" => 1
                )
            );
            if ($customer) {
                $alert = array(
                    "title" => "İşlem Başarılıyla Gerçekleşti.",
                    "text" => "$customer->full_name Hoşgeldiniz...",
                    "type" => "success"
                );
                $this->session->set_userdata("customer",$customer);
                $this->session->set_flashdata("alert",$alert);
                redirect(base_url());
            }else{
                $alert = array(
                    "title" => "İşlem Başarısız!.",
                    "text" => "Lütfen giriş bilgilerinizi kontrol ediniz!",
                    "type" => "error"
                );
                $this->session->set_flashdata("alert",$alert);
                redirect(base_url("giris-yap"));
            }
        }
    }
    public function logout(){
        $this->session->unset_userdata("customer");
        redirect(base_url());
    }
    public function register(){
        $this->load->library("form_validation");
        $this->form_validation->set_rules("email","E-Posta Adresi","trim|required|valid_email");
        if ($this->form_validation->run() === FALSE) {
            redirect(base_url("giris-yap"));
        }else{
            $this->load->model("customer_model");
            $insert = $this->customer_model->add(
                array(
                    "name" => $this->input->post("name"),
                    "url"  => convertToSEO($this->input->post("name")),
                    "email" => $this->input->post("email"),
                    "sector_id" => $this->input->post("sector"),
                    "ip_address" => $this->input->ip_address(),
                    "isActive" => 1,
                    "createdAt" => date("Y-m-d H:i:s")
                )
            );
            if ($insert) {
                echo "basarı";
            }else{
                echo "basarısız";
            }
        }
        redirect(base_url());
    }
    public function update_information($id){
        $this->load->library("form_validation");
        $this->form_validation->set_rules("email","E-Posta Adresi","trim|required|valid_email");
        if ($this->form_validation->run() === FALSE) {
            redirect(base_url("giris-yap"));
        }else{
             if ($this->input->post("password") != "") {
                $password = md5($this->input->post("password"));
                $update = $this->customer_model->update(
                array(
                    "id" => $id
                ),
                array(
                        "name" => $this->input->post("name"),
                        "email" => $this->input->post("email"),
                        "url" => convertToSEO($this->input->post("name")),
                        "phone" => $this->input->post("phone_1"),
                        "phone_2" => $this->input->post("phone_2"),
                        "password" => $password,
                        "tc_no" => $this->input->post("tc_no"),
                        "tax_number" => $this->input->post("tax_number"),
                        "date_of_birth" => $this->input->post("date_of_birth"),
                        "gender" => $this->input->post("gender"),
                        "sector_id" => $this->input->post("sector_id"),
                        "company_name" => $this->input->post("company_name"),
                    )
                );
            }else{
                $update = $this->customer_model->update(
                    array(
                        "id" => $id
                    ),
                    array(
                        "name" => $this->input->post("name"),
                        "email" => $this->input->post("email"),
                        "url" => convertToSEO($this->input->post("name")),
                        "phone" => $this->input->post("phone_1"),
                        "phone_2" => $this->input->post("phone_2"),
                        "tc_no" => $this->input->post("tc_no"),
                        "tax_number" => $this->input->post("tax_number"),
                        "date_of_birth" => $this->input->post("date_of_birth"),
                        "gender" => $this->input->post("gender"),
                        "sector_id" => $this->input->post("sector_id"),
                        "company_name" => $this->input->post("company_name"),
                    )
                );
                if ($update) {
                    $customer = $this->customer_model->get(
                        array(
                            "id" => $id,
                            "isActive" => 1
                        )
                    );
                    $this->session->set_userdata("customer",$customer);
                }else{
                    echo "basarısız";
                }
            }
        }
        redirect(base_url("hesabim"));
    }
    public function add_address($id){
        $update = $this->other_addresses_model->add(
            array(
                "member_id" => $id,
                "address_title" => $this->input->post("address_title"),
                "city" => $this->input->post("city"),
                "state" => $this->input->post("state"),
                "post_code" => $this->input->post("post_code"),
                "address" => $this->input->post("address"),
                "createdAt" => date("Y-m-d H:i:s")
            )
        );
        if ($update) {
            echo "basarı";
        }else{
            echo "basarısız";
        }
        redirect(base_url("hesabim"));
    }
    public function addressDelete($id){
        $delete = $this->other_addresses_model->delete(
            array(
                "id"    => $id
            )
        );
        if($delete){
            $alert = array(
                "title" => "İşlem Başarılı",
                "text" => "Kayıt başarılı bir şekilde silindi",
                "type"  => "success"
            );
        } else {
            $alert = array(
                "title" => "İşlem Başarılı",
                "text" => "Kayıt silme sırasında bir problem oluştu",
                "type"  => "error"
            );
        }
        $this->session->set_flashdata("alert", $alert);
        redirect(base_url("hesabim"));
    }
}