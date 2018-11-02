<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Bidolu extends CI_Controller {
	public $viewFolder = "";
    public function __construct(){
        parent::__construct();
        $this->viewFolder = "homepage";
        $this->load->model("product_category_model");
        $this->load->model("product_model");
        $this->load->model("product_image_model");
        $this->load->model("product_file_model");
        $this->load->model("slide_model");
        $this->load->model("brand_model");
        $this->load->model("information_page_model");
        $this->load->model("sector_model");
        $this->load->model("customer_model");
        $this->load->model("other_addresses_model");
        $this->load->helper("text");
    }
	public function index(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $slides = $this->slide_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $new_products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 8)
        );
        $brands = $this->brand_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->viewFolder = "home_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $viewData->slides = $slides;
        $viewData->new_products = $new_products;
        $viewData->brands = $brands;
        $viewData->information_pages = $information_pages;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function contact_v(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "contact_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function work_with_us_v(){
		$viewData = new stdClass();
		$information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "work_with_us_v";
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function information_pages_v($url){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $information_page = $this->information_page_model->get(
        	array(
        		"isActive" => 1,
        		"url" => $url
        	)
        );
        $viewData->information_pages = $information_pages;
        $viewData->information_page = $information_page;
        $viewData->viewFolder = "information_pages_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function login_v(){
        if(get_active_user()){
            redirect(base_url("hesabim"));
        }
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
            array(
                "isActive" => 1
            ),"rank ASC"
        );
        $sectors = $this->sector_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->sectors = $sectors;
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "login_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function secure_shopping_v(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "secure_shopping_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function about_us_v(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "about_us_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function my_account_v(){
        if(!get_active_user()){
            redirect(base_url("giris-yap"));
        }
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
            array(
                "isActive" => 1
            ),"rank ASC"
        );
        $customer = get_active_user();
        $other_addresses = $this->other_addresses_model->get_all(
            array(
                "member_id" => $customer->id
            )
        );
        $sectors = $this->sector_model->get_all(
            array(
                "isActive" => 1
            ),"rank ASC"
        );
        $viewData->sectors = $sectors;
        $viewData->other_addresses = $other_addresses;
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "my_account_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function work_detail_v(){
		$viewData = new stdClass();
		$information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "work_detail_v";
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function apply_for_work_v(){
		$viewData = new stdClass();
		$information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "apply_for_work_v";
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function sample_box_request_v(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "sample_box_request_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function request_a_quote_v(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "request_a_quote_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function frequently_asked_questions_v(){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "frequently_asked_questions_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function product_detail_v($url){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->product = $this->product_model->get(
        	array(
        		"isActive" => 1,
        		"url" => $url
        	)
        );
        $viewData->other_products = $this->product_model->get_all(
        	array(
        		"isActive" => 1,
        		"id !=" => $viewData->product->id
            ),"rand()", array("start" => 0, "count" => 3)
        );
        $viewData->product_images = $this->product_image_model->get_all(
            array(
                "isActive" => 1,
                "product_id" => $viewData->product->id
            ),"rank ASC"
        );
        $viewData->product_files = $this->product_file_model->get_all(
            array(
                "isActive" => 1,
                "product_id" => $viewData->product->id
            ),"rank ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "product_detail_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
	public function all_product_v($url){
		$viewData = new stdClass();
        $categories = $this->product_category_model->get_all(
        	array(
        		"isActive" => 1
        	), "rank ASC"
        );
        $products = $this->product_model->get_all(
        	array(
        		"isActive" => 1
        	),"id ASC",array("start" => 0, "count" => 11)
        );
        $information_pages = $this->information_page_model->get_all(
        	array(
        		"isActive" => 1
        	),"rank ASC"
        );
        $viewData->all_products = $this->product_model->get_all(
        	array(
        		"isActive" => 1,
        		"category_url" => $url
        	),"id ASC",array()
        );
        $viewData->all_product = $this->product_model->get(
        	array(
        		"isActive" => 1,
        		"category_url" => $url
        	),"id ASC"
        );
        $viewData->information_pages = $information_pages;
        $viewData->viewFolder = "all_product_v";
        $viewData->categories = $categories;
        $viewData->products = $products;
        $this->load->view($viewData->viewFolder,$viewData);
	}
}