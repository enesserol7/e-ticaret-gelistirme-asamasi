<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Product extends CI_Controller {
	public $viewFolder = "";
    public function __construct(){
        parent::__construct();
        $this->viewFolder = "product_v";
        $this->load->model("product_model");
        $this->load->model("product_category_model");
        $this->load->model("product_image_model");
        $this->load->model("product_file_model");
        $this->load->model("product_price_model");
        $this->load->helper("text");
        if (!get_active_user()) {
            redirect(base_url("login"));
        }
    }
	public function index(){
		$viewData = new stdClass();
		$items = $this->product_model->get_all(
			array(),"rank ASC"
		);
		$viewData->viewFolder = $this->viewFolder;
		$viewData->subViewFolder = "list";
		$viewData->items = $items;
		$this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);
	}
	public function new_form(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
            array()
        );
		$viewData->viewFolder = $this->viewFolder;
		$viewData->subViewFolder = "add";
        $viewData->categories = $categories;
		$this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);
	}
	public function save(){
        $this->load->library("form_validation");
        $this->form_validation->set_rules("title", "Başlık", "required|trim");
        $this->form_validation->set_message(
            array(
                "required"  => "<b>{field}</b> alanı doldurulmalıdır"
            )
        );
        $category = $this->product_category_model->get(
            array(
                "isActive" => 1,
                "id" => $this->input->post("category_id")
            )
        );
        $validate = $this->form_validation->run();
        if($validate){
            $insert = $this->product_model->add(
                array(
                    "title"         => $this->input->post("title"),
                    "description"   => $this->input->post("description"),
                    "url"           => convertToSEO($this->input->post("title")),
                    "category_id" => $this->input->post("category_id"),
                    "category_title" => $category->title,
                    "category_url" => $category->url,
                    "dimensions" => $this->input->post("dimensions"),
                    "paper_type" => $this->input->post("paper_type"),
                    "cut" => $this->input->post("cut"),
                    "color" => $this->input->post("color"),
                    "price" => $this->input->post("price"),
                    "vat_rate" => $this->input->post("vat_rate"),
                    "application" => $this->input->post("application"),
                    "lac" => $this->input->post("lac"),
                    "lamination" => $this->input->post("lamination"),
                    "covering" => $this->input->post("covering"),
                    "metarial" => $this->input->post("metarial"),
                    "thickness" => $this->input->post("thickness"),
                    "fabric" => $this->input->post("fabric"),
                    "carrier_metarial" => $this->input->post("carrier_metarial"),
                    "flag_type" => $this->input->post("flag_type"),
                    "fixing_metarial" => $this->input->post("fixing_metarial"),
                    "envelope_adhesive" => $this->input->post("envelope_adhesive"),
                    "envelope_window" => $this->input->post("envelope_window"),
                    "number_of_leaves" => $this->input->post("number_of_leaves"),
                    "packing" => $this->input->post("packing"),
                    "production_time" => $this->input->post("production_time"),
                    "product_keyw" => $this->input->post("product_keyw"),
                    "product_desc" => $this->input->post("product_desc"),
                    "rank"          => 0,
                    "isActive"      => 1,
                    "createdAt"     => date("Y-m-d H:i:s")
                )
            );
            if($insert){
                $alert = array(
                    "title" => "İşlem Başarılıyla Gerçekleşti.",
                    "text" => "Kayıt başarılı bir şekilde eklendi",
                    "type" => "success"
                );
            } else {
                $alert = array(
                    "title" => "İşlem Başarısız Oldu!",
                    "text" => "Kayıt ekleme sırasında bir problem oluştu!",
                    "type" => "error"
                );
            }
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("product"));
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
        $viewData->categories = $this->product_category_model->get_all(
            array(
                "isActive" => 1
            )
        );
    	$item = $this->product_model->get(
    		array(
    			"id"=>$id
    		)
    	);
		$viewData->viewFolder = $this->viewFolder;
		$viewData->subViewFolder = "update";
		$viewData->item = $item;
		$this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);
    }
    public function update($id){
        $this->load->library("form_validation");
        $this->form_validation->set_rules("title", "Başlık", "required|trim");
        $this->form_validation->set_message(
            array(
                "required"  => "<b>{field}</b> alanı doldurulmalıdır"
            )
        );
        $category = $this->product_category_model->get(
            array(
                "isActive" => 1,
                "id" => $this->input->post("category_id")
            )
        );
        $validate = $this->form_validation->run();
        if($validate){
            $update = $this->product_model->update(
            	array(
            		"id" => $id
            	),
                array(
                    "title"         => $this->input->post("title"),
                    "description"   => $this->input->post("description"),
                    "url"           => convertToSEO($this->input->post("title")),
                    "category_id" => $this->input->post("category_id"),
                    "category_title" => $category->title,
                    "category_url" => $category->url,
                    "dimensions" => $this->input->post("dimensions"),
                    "paper_type" => $this->input->post("paper_type"),
                    "cut" => $this->input->post("cut"),
                    "color" => $this->input->post("color"),
                    "price" => $this->input->post("price"),
                    "vat_rate" => $this->input->post("vat_rate"),
                    "application" => $this->input->post("application"),
                    "lac" => $this->input->post("lac"),
                    "lamination" => $this->input->post("lamination"),
                    "covering" => $this->input->post("covering"),
                    "metarial" => $this->input->post("metarial"),
                    "thickness" => $this->input->post("thickness"),
                    "fabric" => $this->input->post("fabric"),
                    "carrier_metarial" => $this->input->post("carrier_metarial"),
                    "flag_type" => $this->input->post("flag_type"),
                    "fixing_metarial" => $this->input->post("fixing_metarial"),
                    "envelope_adhesive" => $this->input->post("envelope_adhesive"),
                    "envelope_window" => $this->input->post("envelope_window"),
                    "number_of_leaves" => $this->input->post("number_of_leaves"),
                    "packing" => $this->input->post("packing"),
                    "product_keyw" => $this->input->post("product_keyw"),
                    "product_desc" => $this->input->post("product_desc"),
                    "production_time" => $this->input->post("production_time")
                )
            );
            if($update){
                $alert = array(
                    "title" => "İşlem Başarılıyla Gerçekleşti.",
                    "text" => "Kayıt başarılı bir şekilde güncellendi.",
                    "type" => "success"
                );
            } else {
                $alert = array(
                    "title" => "İşlem Başarısız Oldu.",
                    "text" => "Kayıt güncelleme sırasında bir problem oluştu!",
                    "type" => "error"
                );
            }
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("product"));
        } else {
        	$item = $this->product_model->get(
    			array(
    				"id"=>$id
    			)
    		);
            $viewData = new stdClass();
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "update";
            $viewData->form_error = true;
    		$viewData->item = $item;
            $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
        }
    }
    public function delete($id){
    	$delete = $this->product_model->delete(
    		array(
    			"id" => $id
    		)
    	);
    	if ($delete) {
    		$alert = array(
                "title" => "İşlem Başarılıyla Gerçekleşti.",
                "text" => "Kayıt silme işlemi başarılı bir şekilde silindi.",
                "type" => "success"
            );
    	}else{
            $alert = array(
                "title" => "İşlem Başarılıyla Gerçekleşti.",
                "text" => "Kayıt silme işlemi sırasında bir problem oluştu!",
                "type" => "error"
            );
    	}
        $this->session->set_flashdata("alert",$alert);
        redirect(base_url("product"));
    }
    public function imageDelete($id,$parent_id){
        $delete = $this->product_image_model->delete(
            array(
                "id" => $id
            )
        );
        if ($delete) {
            $rsil = getFileName($id);
            unlink("uploads/{$this->viewFolder}/$rsil");
            redirect(base_url("product/image_form/$parent_id"));
        }else{
            redirect(base_url("product/image_form/$parent_id"));
        }
    }
    public function isActiveSetter($id){
    	if ($id) {
    		$isActive = ($this->input->post("data") === "true") ? 1 : 0;
    		$this->product_model->update(
    			array(
    				"id" => $id
    			),
    			array(
    				"isActive" => $isActive
    			)
    		);
    	}
    }
    public function imageIsActiveSetter($id){
        if ($id) {
            $imageIsActive = ($this->input->post("data") === "true") ? 1 : 0;
            $this->product_image_model->update(
                array(
                    "id" => $id
                ),
                array(
                    "isActive" => $imageIsActive
                )
            );
        }
    }
    public function rankSetter(){
    	$data = $this->input->post("data");
    	parse_str($data,$order);
    	$items = $order["ord"];
    	foreach ($items as $rank => $id) {
    		$this->product_model->update(
    			array(
    				"id" => $id,
    				"rank !=" => $rank
    			),
    			array(
    				"rank" => $rank
    			)
    		);
    	}
    }
    public function imageRankSetter(){
        $data = $this->input->post("data");
        parse_str($data,$order);
        $items = $order["ord"];
        foreach ($items as $rank => $id) {
            $this->product_image_model->update(
                array(
                    "id" => $id,
                    "rank !=" => $rank
                ),
                array(
                    "rank" => $rank
                )
            );
        }
    }
    public function image_form($id){
        $viewData = new stdClass();
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "image";
        $viewData->item = $this->product_model->get(
            array(
                "id" => $id
            )
        );
        $viewData->item_images = $this->product_image_model->get_all(
            array(
                "product_id" => $id
            ),"rank ASC"
        );
        $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);

    }
    public function image_upload($id){
        $file_name = convertToSEO(pathinfo($_FILES["file"]["name"], PATHINFO_FILENAME)).".".pathinfo($_FILES["file"]["name"],PATHINFO_EXTENSION);
        $image_260x200 = upload_picture($_FILES["file"]["tmp_name"], "uploads/$this->viewFolder",260,200, $file_name);
        $image_580x446 = upload_picture($_FILES["file"]["tmp_name"], "uploads/$this->viewFolder",580,446, $file_name);
        if($image_260x200 && $image_580x446){
            $this->product_image_model->add(
                array(
                    "img_url" => $file_name,
                    "rank" => 0,
                    "isActive" => 1,
                    "isCover" => 0,
                    "createdAt" => date("Y-m-d H:i:s"),
                    "product_id" => $id
                )
            );
        }else{
            echo "basarısız";
        }
    }
    public function refresh_image_list($id){
        $viewData = new stdClass();
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "image";
        $viewData->item_images = $this->product_image_model->get_all(
            array(
                "product_id" => $id
            )
        );
        $render_html = $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/render_elements/image_list_v",$viewData,true);
        echo $render_html;
    }
    public function isCoverSetter($id,$parent_id){
        if ($id && $parent_id) {
            $isCover = ($this->input->post("data") === "true") ? 1 : 0;
            $this->product_image_model->update(
                array(
                    "id" => $id,
                    "product_id" => $parent_id
                ),
                array(
                    "isCover" => $isCover
                )
            );

            $this->product_image_model->update(
                array(
                    "id !=" => $id,
                    "product_id" => $parent_id
                ),
                array(
                    "isCover" => 0
                )
            );
            $viewData = new stdClass();
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "image";
            $viewData->item_images = $this->product_image_model->get_all(
                array(
                    "product_id" => $parent_id
                ),"rank ASC"
            );
            $render_html = $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/render_elements/image_list_v",$viewData,true);
            echo $render_html;
        }
    }
    public function upload_form($id){
        $viewData = new stdClass();
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "file";
        $viewData->item = $this->product_model->get(
            array(
                "id" => $id
            )
        );
        $viewData->item_files = $this->product_file_model->get_all(
            array(
                "product_id" => $id
            ),"rank ASC"
        );
        $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);
    }
    public function file_upload($id, $url){
        $file_name = convertToSEO(pathinfo($_FILES["file"]["name"], PATHINFO_FILENAME)) . "." . pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);
        $config["allowed_types"] = "*";
        $config["upload_path"]   = "uploads/$this->viewFolder/files/$url/";
        $config["file_name"]     = $file_name;
        $this->load->library("upload", $config);
        $upload = $this->upload->do_upload("file");
        if($upload){
            $uploaded_file = $this->upload->data("file_name");
            $this->product_file_model->add(
                array(
                    "url"           => $uploaded_file,
                    "rank"          => 0,
                    "isActive"      => 1,
                    "createdAt"     => date("Y-m-d H:i:s"),
                    "product_id"    => $id
                )
            );
        }
        else{
            echo $this->upload->display_errors();
        }
    }
    public function refresh_file_list($id){
        $viewData = new stdClass();
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "file";
        $viewData->item_files = $this->product_files_model->get_all(
            array(
                "product_id" => $id
            )
        );
        $render_html = $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/render_elements/file_list_v",$viewData,true);
        echo $render_html;
    }
    public function fileRankSetter(){
        $data = $this->input->post("data");
        parse_str($data,$order);
        $items = $order["ord"];
        foreach ($items as $rank => $id) {
            $this->product_file_model->update(
                array(
                    "id" => $id,
                    "rank !=" => $rank
                ),
                array(
                    "rank" => $rank
                )
            );
        }
    }
    public function fileIsActiveSetter($id){
        if ($id) {
            $fileIsActive = ($this->input->post("data") === "true") ? 1 : 0;
            $this->product_file_model->update(
                array(
                    "id" => $id
                ),
                array(
                    "isActive" => $fileIsActive
                )
            );
        }
    }
    public function price_list($id){
        $viewData = new stdClass();
        $items = $this->product_price_model->get_all(
            array(
                "product_id" => $id
            ),"rank ASC"
        );
        $viewData->item = $this->product_model->get(
            array(
                "id" => $id
            )
        );
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "price_list";
        $viewData->items = $items;
        $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);
    }
    public function price_form($id){
        $viewData = new stdClass();
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "price";
        $viewData->item = $this->product_model->get(
            array(
                "id" => $id
            )
        );
        $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);
    }
    public function price_save($id){
        $this->load->library("form_validation");
        $this->form_validation->set_rules("price_title", "Başlık", "required|trim");
        $this->form_validation->set_message(
            array(
                "required"  => "<b>{field}</b> alanı doldurulmalıdır"
            )
        );
        $validate = $this->form_validation->run();
        if($validate){
            $insert = $this->product_price_model->add(
                array(
                    "price_title" => $this->input->post("price_title"),
                    "price" => $this->input->post("price"),
                    "product_id" => $id
                )
            );
            if($insert){
                $alert = array(
                    "title" => "İşlem Başarılıyla Gerçekleşti.",
                    "text" => "Kayıt başarılı bir şekilde eklendi",
                    "type" => "success"
                );
            } else {
                $alert = array(
                    "title" => "İşlem Başarısız Oldu!",
                    "text" => "Kayıt ekleme sırasında bir problem oluştu!",
                    "type" => "error"
                );
            }
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("product/price_list/$id"));
        } else {
            $viewData = new stdClass();
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "price";
            $viewData->form_error = true;
            $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
        }
    }
    public function price_update_form($id,$product_id){
        $viewData = new stdClass();
        $item = $this->product_price_model->get(
            array(
                "id"=>$id
            )
        );
        $viewData->item2 = $this->product_model->get(
            array(
                "id" => $product_id
            )
        );
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "price_update";
        $viewData->item = $item;
        $this->load->view("{$this->viewFolder}/{$viewData->subViewFolder}/index",$viewData);
    }
    public function price_update($id,$product_id){
        $this->load->library("form_validation");
        $this->form_validation->set_rules("price_title", "Başlık", "required|trim");
        $this->form_validation->set_message(
            array(
                "required"  => "<b>{field}</b> alanı doldurulmalıdır"
            )
        );
        $validate = $this->form_validation->run();
        if($validate){
            $update = $this->product_price_model->update(
                array(
                    "id" => $id
                ),
                array(
                    "price_title" => $this->input->post("price_title"),
                    "price"   => $this->input->post("price"),
                    "product_id" => $product_id,
                )
            );
            if($update){
                $alert = array(
                    "title" => "İşlem Başarılıyla Gerçekleşti.",
                    "text" => "Kayıt başarılı bir şekilde güncellendi.",
                    "type" => "success"
                );
            } else {
                $alert = array(
                    "title" => "İşlem Başarısız Oldu.",
                    "text" => "Kayıt güncelleme sırasında bir problem oluştu!",
                    "type" => "error"
                );
            }
            $this->session->set_flashdata("alert",$alert);
            redirect(base_url("product/price_list/$product_id"));
        } else {
            $item = $this->product_model->get(
                array(
                    "id"=>$id
                )
            );
            $viewData = new stdClass();
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "update";
            $viewData->form_error = true;
            $viewData->item = $item;
            $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
        }
    }
    public function price_delete($id,$product_id){
        $delete = $this->product_price_model->delete(
            array(
                "id" => $id
            )
        );
        if ($delete) {
            $alert = array(
                "title" => "İşlem Başarılıyla Gerçekleşti.",
                "text" => "Kayıt silme işlemi başarılı bir şekilde silindi.",
                "type" => "success"
            );
        }else{
            $alert = array(
                "title" => "İşlem Başarılıyla Gerçekleşti.",
                "text" => "Kayıt silme işlemi sırasında bir problem oluştu!",
                "type" => "error"
            );
        }
        $this->session->set_flashdata("alert",$alert);
        redirect(base_url("product/price_list/$product_id"));
    }
    public function priceIsActiveSetter($id){
        if ($id) {
            $priceIsActive = ($this->input->post("data") === "true") ? 1 : 0;
            $this->product_price_model->update(
                array(
                    "id" => $id
                ),
                array(
                    "isActive" => $priceIsActive
                )
            );
        }
    }
    public function priceRankSetter(){
        $data = $this->input->post("data");
        parse_str($data,$order);
        $items = $order["ord"];
        foreach ($items as $rank => $id) {
            $this->product_price_model->update(
                array(
                    "id" => $id,
                    "rank !=" => $rank
                ),
                array(
                    "rank" => $rank
                )
            );
        }
    }
}