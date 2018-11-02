<?php
    public function cvSend(){
        $this->load->view("front/includes/cv");
    }
    public function offer_requestsSending(){
        $this->load->model("file_model");
        $fullName = convertToSEO($this->input->post("name"));
        $file_name = convertToSEO(pathinfo($_FILES["file"]["name"], PATHINFO_FILENAME)) . "." . pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);
        $config["allowed_types"] = "*";
        $config["upload_path"]   = "uploads/offer_requests_v/";
        $config["file_name"]     = $fullName."-".$file_name;
        $this->load->library("upload", $config);
        $upload = $this->upload->do_upload("file");
        if($upload){
            $uploaded_file = $this->upload->data("file_name");
            $insert = $this->file_model->add(
                array(
                    "file" => "{$config["upload_path"]}$uploaded_file",
                    "name" => $this->input->post("name"),
                    "phone" => $this->input->post("phone"),
                    "email" => $this->input->post("email"),
                    "offer_requested_product" => $this->input->post("offer_requested_product"),
                    "offer_requested_attributes" => $this->input->post("offer_requested_attributes"),
                    "dimensions" => $this->input->post("dimensions"),
                    "weight" => $this->input->post("weight"),
                    "direction_of_printing" => $this->input->post("direction_of_printing"),
                    "createdAt" => date("Y-m-d H:i:s")
                )
            );
            if($insert){
                $alert = array(
                    "title" => "İşlem Başarılı",
                    "text" => "CV Başarılı bir şekilde gönderildi...",
                    "type"  => "success"
                );
            } else {
                $alert = array(
                    "title" => "İşlem Başarısız",
                    "text" => "CV gönderme işlemi sırasında bir problem oluştu",
                    "type"  => "error"
                );
            }
        } else {
            $alert = array(
                "title" => "İşlem Başarısız",
                "text" => "CV gönderme işlemi sırasında bir problem oluştu",
                "type"  => "error"
            );
        }
        $this->session->set_flashdata("alert",$alert);
        redirect(base_url());
    }
?>