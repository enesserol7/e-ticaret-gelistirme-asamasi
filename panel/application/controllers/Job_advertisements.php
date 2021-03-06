<?php
class Job_advertisements extends CI_Controller{
    public $viewFolder = "";
    public function __construct(){
        parent::__construct();
        $this->viewFolder = "job_advertisements_v";
        $this->load->model("job_advertisements_model");
        $this->load->helper("text");
        if(!get_active_user()){
            redirect(base_url("login"));
        }
    }
    public function index(){
        $viewData = new stdClass();
        $items = $this->job_advertisements_model->get_all(
            array()
        );
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "list";
        $viewData->items = $items;
        $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
    }
    public function new_form(){
        $viewData = new stdClass();
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "add";
        $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
    }
    public function save(){
        $this->load->library("form_validation");
        if($_FILES["img_url"]["name"] == ""){
            $alert = array(
                "title" => "İşlem Başarısız",
                "text" => "Lütfen bir görsel seçiniz",
                "type"  => "error"
            );
            $this->session->set_flashdata("alert", $alert);

            redirect(base_url("job_advertisements/new_form"));

            die();
        }
            $this->form_validation->set_rules("title", "Başlık", "required|trim");
        if ($this->input->post("allowButton") == "on") {
            $this->form_validation->set_rules("button_caption", "Buton Başlık", "required|trim");
            $this->form_validation->set_rules("button_url", "Button URL Bilgisi", "required|trim");   
        }
        $this->form_validation->set_message(
            array(
                "required"  => "<b>{field}</b> alanı doldurulmalıdır"
            )
        );
        $validate = $this->form_validation->run();
        if($validate){
            $file_name = convertToSEO(pathinfo($_FILES["img_url"]["name"], PATHINFO_FILENAME)) . "." . pathinfo($_FILES["img_url"]["name"], PATHINFO_EXTENSION);
            $image_1920x1208 = upload_picture($_FILES["img_url"]["tmp_name"], "uploads/$this->viewFolder",1920,1208, $file_name);
            if($image_1920x1208){
                $insert = $this->job_advertisements_model->add(
                    array(
                     "title"         => $this->input->post("title"),
                     "url"           => convertToSEO($this->input->post("title")),
                     "description"   => $this->input->post("description"),
                     "img_url"       => $file_name,
                     "keyw"         => $this->input->post("keyw"),
                     "sought_after_features" => $this->input->post("sought_after_features"),
                     "department"         => $this->input->post("department"),
                     "address"         => $this->input->post("address"),   
                     "isActive"      => 1,
                     "createdAt"     => date("Y-m-d H:i:s")
                    )
                );
                if($insert){
                    $alert = array(
                        "title" => "İşlem Başarılı",
                        "text" => "Kayıt başarılı bir şekilde eklendi",
                        "type"  => "success"
                    );
                } else {
                    $alert = array(
                        "title" => "İşlem Başarısız",
                        "text" => "Kayıt Ekleme sırasında bir problem oluştu",
                        "type"  => "error"
                    );
                }
            } else {
                $alert = array(
                    "title" => "İşlem Başarısız",
                    "text" => "Görsel yüklenirken bir problem oluştu",
                    "type"  => "error"
                );
                $this->session->set_flashdata("alert", $alert);
                redirect(base_url("job_advertisements/new_form"));
                die();
            }
            $this->session->set_flashdata("alert", $alert);
            redirect(base_url("job_advertisements"));
        } else {
            $viewData = new stdClass();
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "add";
            $viewData->form_error = true;
            $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
        }
    }
    public function update_form($id){
        $viewData = new stdClass();
        $item = $this->job_advertisements_model->get(
            array(
                "id"    => $id,
            )
        );
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "update";
        $viewData->item = $item;
        $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
    }
    public function update($id){
        $this->load->library("form_validation");
        $this->form_validation->set_rules("title", "Başlık", "required|trim");
        if ($this->input->post("allowButton") == "on") {
            $this->form_validation->set_rules("button_caption", "Buton Başlık", "required|trim");
            $this->form_validation->set_rules("button_url", "Button URL Bilgisi", "required|trim");   
        }
        $this->form_validation->set_message(
            array(
                "required"  => "<b>{field}</b> alanı doldurulmalıdır"
            )
        );
        $validate = $this->form_validation->run();
        if($validate){
            if($_FILES["img_url"]["name"] !== "") {
                $file_name = convertToSEO(pathinfo($_FILES["img_url"]["name"], PATHINFO_FILENAME)) . "." . pathinfo($_FILES["img_url"]["name"], PATHINFO_EXTENSION);
                $image_1920x1208 = upload_picture($_FILES["img_url"]["tmp_name"], "uploads/$this->viewFolder",1920,1208, $file_name);
                if($image_1920x1208){
                    $data = array(
                     "title"                  => $this->input->post("title"),
                     "url"           => convertToSEO($this->input->post("title")),
                     "description"            => $this->input->post("description"),
                     "img_url"                => $file_name,
                     "keyw"                   => $this->input->post("keyw"),
                     "sought_after_features"  => $this->input->post("sought_after_features"),
                     "department"             => $this->input->post("department"),
                     "address"                => $this->input->post("address"),   
                    );
                } else {
                    $alert = array(
                        "title" => "İşlem Başarısız",
                        "text" => "Görsel yüklenirken bir problem oluştu",
                        "type" => "error"
                    );
                    $this->session->set_flashdata("alert", $alert);
                    redirect(base_url("job_advertisements/update_form/$id"));
                    die();
                }
            } else {
                $data = array(
                     "title"         => $this->input->post("title"),
                     "url"           => convertToSEO($this->input->post("title")),
                     "description"   => $this->input->post("description"),
                     "keyw"         => $this->input->post("keyw"),
                     "sought_after_features" => $this->input->post("sought_after_features"),
                     "department"         => $this->input->post("department"),
                     "address"         => $this->input->post("address"),   
                );
            }
            $update = $this->job_advertisements_model->update(array("id" => $id), $data);
            if($update){
                $alert = array(
                    "title" => "İşlem Başarılı",
                    "text" => "Kayıt başarılı bir şekilde güncellendi",
                    "type"  => "success"
                );
            } else {

                $alert = array(
                    "title" => "İşlem Başarısız",
                    "text" => "Kayıt Güncelleme sırasında bir problem oluştu",
                    "type"  => "error"
                );
            }
            $this->session->set_flashdata("alert", $alert);
            redirect(base_url("job_advertisements"));
        } else {
            $viewData = new stdClass();
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "update";
            $viewData->form_error = true;
            $viewData->item = $this->job_advertisements_model->get(
                array(
                    "id"    => $id,
                )
            );
            $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
        }
    }
    public function delete($id){
        $delete = $this->job_advertisements_model->delete(
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
        redirect(base_url("job_advertisements"));
    }
    public function isActiveSetter($id){
        if($id){
            $isActive = ($this->input->post("data") === "true") ? 1 : 0;
            $this->job_advertisements_model->update(
                array(
                    "id"    => $id
                ),
                array(
                    "isActive"  => $isActive
                )
            );
        }
    }
    public function rankSetter(){
        $data = $this->input->post("data");
        parse_str($data, $order);
        $items = $order["ord"];
        foreach ($items as $rank => $id){
            $this->job_advertisements_model->update(
                array(
                    "id"        => $id,
                    "rank !="   => $rank
                ),
                array(
                    "rank"      => $rank
                )
            );
        }
    }
}