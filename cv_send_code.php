<?php
    public function cvSend(){
        $this->load->view("front/includes/cv");
    }
    public function cvSending(){
        $this->load->model("file_model");
        $fullName = convertToSEO($this->input->post("full_name"));
        $file_name = convertToSEO(pathinfo($_FILES["file"]["name"], PATHINFO_FILENAME)) . "." . pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);
        $config["allowed_types"] = "*";
        $config["upload_path"]   = "uploads/cv_v/";
        $config["file_name"]     = $fullName."-".$file_name;
        $this->load->library("upload", $config);
        $upload = $this->upload->do_upload("file");
        if($upload){
            $uploaded_file = $this->upload->data("file_name");
            $insert = $this->file_model->add(
                array(
                    "url"           => "{$config["upload_path"]}$uploaded_file",
                    "full_name"     => $this->input->post("full_name"),
                    "name_seo"     => convertToSEO($this->input->post("full_name")),
                    "phone"         => $this->input->post("phone"),
                    "email"         => $this->input->post("email"),
                    "folder_name"   => "{$config["upload_path"]}$uploaded_file",
                    "createdAt"     => date("Y-m-d H:i:s")
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