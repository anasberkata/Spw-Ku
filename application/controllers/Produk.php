<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Produk extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Produk_model', 'produk');
        // $this->load->helper('date');
    }

    // PRODUK
    public function index()
    {
        $data['title'] = "Data Produk";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->produk->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('produk/index', $data);
        $this->load->view('templates/footer');
    }

    public function product()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Produk";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        // Kode Produk
        $ambilKode = $this->produk->get_code_product();
        $nourut = (int) substr($ambilKode, 6, 3);
        $kodeBarang = $nourut + 1;
        $awalKode = "SPW-";
        $data['code_product'] = $awalKode . sprintf("%03s", $kodeBarang);

        $data['category'] = $this->produk->get_categories();
        $data['product'] = $this->produk->get_products($id_lab);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('produk/product', $data);
        $this->load->view('templates/footer');
    }

    public function product_add()
    {
        $this->form_validation->set_rules(
            'product',
            'Product',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $id_lab = $this->input->get('id_lab', true);

            $data['title'] = "Data Produk";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            // Kode Produk
            $ambilKode = $this->produk->get_code_product();
            $nourut = (int) substr($ambilKode, 6, 3);
            $kodeBarang = $nourut + 1;
            $awalKode = "SPW-";
            $data['code_product'] = $awalKode . sprintf("%03s", $kodeBarang);

            $data['category'] = $this->produk->get_categories();
            $data['product'] = $this->produk->get_products($id_lab);

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('produk/product', $data);
            $this->load->view('templates/footer');
        } else {
            $code = $this->input->post('code', true);
            $id_lab = $this->input->post('id_lab', true);
            $id_category = $this->input->post('id_category', true);
            $product = $this->input->post('product', true);
            $qty = $this->input->post('qty', true);
            $basic_price = $this->input->post('basic_price', true);
            $selling_price = $this->input->post('selling_price', true);
            $image = $this->uploadImage();
            $is_active = 1;

            $data = [
                'id_product' => NULL,
                'code' => $code,
                'id_category' => $id_category,
                'product' => $product,
                'qty' => $qty,
                'basic_price' => $basic_price,
                'selling_price' => $selling_price,
                'image' => $image,
                'id_lab' => $id_lab,
                'is_active' => $is_active
            ];

            $this->produk->save_product($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');
            redirect('produk/product/?id_lab=' . $id_lab);
        }
    }

    public function product_edit()
    {
        $id_product = $this->input->post('id_product', true);
        $id_lab = $this->input->post('id_lab', true);
        $id_category = $this->input->post('id_category', true);
        $product = $this->input->post('product', true);
        $qty = $this->input->post('qty', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);

        $data['product'] = $this->produk->get_products_by_id($id_product);
        $change_image = $_FILES['image']['name'];

        if ($change_image) {
            $config['allowed_types']    = 'gif|jpg|png';
            $config['max_size']         = '2048';
            $config['upload_path']      = './assets/img/products/';
            $config['max_width']        = '1024';
            $config['max_height']       = '1024';

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {
                $old_image = $data['product']->image;
                if ($old_image != 'default-product.jpg') {
                    unlink(FCPATH . 'assets/img/products/' . $old_image);
                }
                $new_image = $this->upload->data('file_name');
                $this->db->set('image', $new_image);
            } else {
                echo $this->upload->dispay_errors();
            }
        }

        $this->db->set('id_category', $id_category);
        $this->db->set('product', $product);
        $this->db->set('qty', $qty);
        $this->db->set('basic_price', $basic_price);
        $this->db->set('selling_price', $selling_price);

        $this->produk->update_product($id_product);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil diubah!</div>');
        redirect('produk/product/?id_lab=' . $id_lab);
    }

    public function product_delete()
    {
        $id_product = $this->input->post('id_product');
        $id_lab = $this->input->post('id_lab', true);

        $this->produk->delete_product($id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');
        redirect('produk/product/?id_lab=' . $id_lab);
    }

    private function uploadImage()
    {
        $config['allowed_types']    = 'gif|jpg|png';
        $config['max_size']         = '2048';
        $config['upload_path']      = './assets/img/products/';
        $config['max_width']        = '1024';
        $config['max_height']       = '1024';

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('image')) {
            return $this->upload->data("file_name");
        }

        return "default-product.jpg";
    }

    // KATAGORI
    public function category()
    {
        $data['title'] = "Data Kategori";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['category'] = $this->produk->get_categories();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('produk/category', $data);
        $this->load->view('templates/footer');
    }

    public function category_add()
    {
        $this->form_validation->set_rules(
            'category',
            'Category',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $data['title'] = "Data Kategori";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['category'] = $this->produk->get_categories();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('produk/category', $data);
            $this->load->view('templates/footer');
        } else {
            $category = $this->input->post('category', true);

            $data = [
                'id_category' => NULL,
                'category' => $category
            ];

            $this->produk->save_category($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Menu berhasil ditambahkan!</div>');
            redirect('produk/category');
        }
    }

    public function category_edit()
    {
        $id_category = $this->input->post('id_category', true);
        $category = $this->input->post('category', true);

        $data = [
            'category' => $category
        ];

        $this->produk->update_category($data, $id_category);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kategori berhasil diubah!</div>');
        redirect('produk/category');
    }

    public function category_delete()
    {
        $id_category = $this->input->post('id_category');

        $this->produk->delete_category($id_category);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kategori berhasil dihapus!</div>');
        redirect('produk/category');
    }
}
