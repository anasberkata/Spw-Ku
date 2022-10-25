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

    // =============================================== PRODUK =============================================== 
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

    // =============================================== SUPPLIER =============================================== 
    public function supplier()
    {
        $data['title'] = "Data Supplier";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['supplier'] = $this->produk->get_supplier();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('produk/supplier', $data);
        $this->load->view('templates/footer');
    }

    public function supplier_add()
    {
        $this->form_validation->set_rules(
            'supplier',
            'Supplier',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $data['title'] = "Data Supplier";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['supplier'] = $this->produk->get_supplier();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('produk/supplier', $data);
            $this->load->view('templates/footer');
        } else {
            $supplier = $this->input->post('supplier', true);
            $address = $this->input->post('address', true);
            $phone = $this->input->post('phone', true);

            $data = [
                'id_supplier' => NULL,
                'supplier' => $supplier,
                'address' => $address,
                'phone' => $phone
            ];

            $this->produk->save_supplier($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Supplier berhasil ditambahkan!</div>');
            redirect('produk/supplier');
        }
    }

    public function supplier_edit()
    {
        $id_supplier = $this->input->post('id_supplier', true);
        $supplier = $this->input->post('supplier', true);
        $address = $this->input->post('address', true);
        $phone = $this->input->post('phone', true);

        $data = [
            'supplier' => $supplier,
            'address' => $address,
            'phone' => $phone
        ];

        $this->produk->update_supplier($data, $id_supplier);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pupplier berhasil diubah!</div>');
        redirect('produk/supplier');
    }

    public function supplier_delete()
    {
        $id_supplier = $this->input->post('id_supplier', true);

        $this->produk->delete_supplier($id_supplier);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">SUpplier berhasil dihapus!</div>');
        redirect('produk/supplier');
    }

    // =============================================== KATAGORI =============================================== 
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

    // =============================================== PRODUK =============================================== 
    public function product()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Produk";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['category'] = $this->produk->get_categories();
        $data['product'] = $this->produk->get_products($id_lab);
        $data['place'] = $this->produk->get_places();
        $data['lab'] = $id_lab;

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

            $data['category'] = $this->produk->get_categories();
            $data['product'] = $this->produk->get_products($id_lab);
            $data['place'] = $this->produk->get_places();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('produk/product', $data);
            $this->load->view('templates/footer');
        } else {
            $barcode = $this->input->post('code', true);
            $code = $this->barcode($barcode);
            $id_lab = $this->input->post('id_lab', true);
            $id_category = $this->input->post('id_category', true);
            $id_place = $this->input->post('id_place', true);
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
                'id_place' => $id_place,
                'id_owner' => 0,
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
        $id_place = $this->input->post('id_place', true);
        $barcode = $this->input->post('code', true);
        $code = $this->barcode($barcode);
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
                echo $this->upload->display_errors();
            }
        }

        $this->db->set('code', $code);
        $this->db->set('id_category', $id_category);
        $this->db->set('id_place', $id_place);
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

    function barcode($barcode)
    {
        // $generator = new Picqer\Barcode\BarcodeGeneratorPNG();
        // echo '<img src="data:image/png;base64,' . base64_encode($generator->getBarcode('081231723897', $generator::TYPE_CODE_128)) . '">';
        $generator = new Picqer\Barcode\BarcodeGeneratorJPG();
        file_put_contents('assets/img/barcode/' . $barcode . '.jpg', $generator->getBarcode($barcode, $generator::TYPE_CODABAR));

        return $barcode;
    }

    // =============================================== PEMBELIAN=============================================== 
    public function index_purchase()
    {
        $data['title'] = "Data Pembelian";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->produk->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('produk/purchase_index', $data);
        $this->load->view('templates/footer');
    }

    public function purchase()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['supplier'] = $this->produk->get_supplier();
        $data['lab'] = $id_lab;

        $data['purchase'] = $this->produk->get_purchase($id_lab);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('produk/purchase', $data);
        $this->load->view('templates/footer');
    }

    public function purchase_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_user = $this->input->post('id_user', true);
        $id_supplier = $this->input->post('id_supplier', true);
        $date_purchasing = $this->input->post('date_purchasing', true);

        $data = [
            'id_purchase' => NULL,
            'date_purchasing' => $date_purchasing,
            'id_supplier' => $id_supplier,
            'id_user' => $id_user,
            'id_lab' => $id_lab
        ];

        $this->produk->save_purchase($data);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembelian berhasil ditambahkan! Silahkan isi Produk</div>');

        redirect('produk/purchase/?id_lab=' . $id_lab);
    }

    public function purchase_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_user = $this->input->post('id_user', true);
        $date_purchasing = $this->input->post('date_purchasing', true);
        $id_supplier = $this->input->post('id_supplier', true);

        $data = [
            'date_purchasing' => $date_purchasing,
            'id_supplier' => $id_supplier,
            'id_user' => $id_user
        ];

        $this->produk->update_purchase($data, $id_purchase);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembelian berhasil diubah!</div>');

        redirect('produk/purchase/?id_lab=' . $id_lab);
    }

    public function purchase_detail()
    {
        $id_purchase = $this->input->get('id_purchase', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        // $data['supplier'] = $this->produk->get_supplier();

        $data['id_purchase'] = $id_purchase;
        $data['lab'] = $id_lab;
        $data['product'] = $this->produk->get_product($id_lab);

        $this->db->join('tbl_supplier', 'tbl_supplier.id_supplier = tbl_purchase.id_supplier');
        $data['purchase'] = $this->db->get_where('tbl_purchase', ['id_purchase' => $id_purchase])->row_array();
        $data['purchase_detail'] = $this->produk->get_purchase_detail($id_purchase);

        $data['total'] = $this->produk->sum_total_price($id_purchase);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('produk/purchase_detail', $data);
        $this->load->view('templates/footer');
    }

    public function purchase_detail_add()
    {
        $this->form_validation->set_rules(
            'qty_product',
            'Jumlah Produk',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'basic_price',
            'Harga',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $id_purchase = $this->input->get('id_purchase', true);
            $id_lab = $this->input->get('id_lab', true);

            $data['title'] = "Data Pembelian";
            $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

            $data['id_purchase'] = $id_purchase;
            $data['lab'] = $id_lab;
            $data['product'] = $this->produk->get_product($id_lab);
            $data['purchase_detail'] = $this->produk->get_purchase_detail($id_purchase);

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('produk/purchase_detail', $data);
            $this->load->view('templates/footer');
        } else {
            $id_lab = $this->input->post('id_lab', true);
            $id_purchase = $this->input->post('id_purchase', true);
            $id_product = $this->input->post('id_product', true);
            $qty_product = $this->input->post('qty_product', true);
            $basic_price = $this->input->post('basic_price', true);
            $selling_price = $this->input->post('selling_price', true);

            $data = [
                'id_purchase_detail' => NULL,
                'id_purchase' => $id_purchase,
                'id_product' => $id_product,
                'qty_product' => $qty_product,
                'basic_price' => $basic_price,
                'total_price' => $qty_product * $basic_price
            ];

            $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();

            $data_stock = [
                'qty' => $d['p']['qty'] + $qty_product,
                'basic_price' => $basic_price,
                'selling_price' => $selling_price
            ];

            $this->produk->save_purchase_detail($data);
            $this->produk->update_stock_product($data_stock, $id_product);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');

            redirect('produk/purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
        }
    }

    public function purchase_detail_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_purchase_detail = $this->input->post('id_purchase_detail', true);
        $id_product = $this->input->post('id_product', true);
        $qty_product = $this->input->post('qty_product', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);

        $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();
        $d['pd'] = $this->db->get_where('tbl_purchase_detail', ['id_purchase_detail' => $id_purchase_detail])->row_array();

        if ($qty_product > $d['pd']['qty_product']) {
            $selisih = $qty_product - $d['pd']['qty_product'];
            $qty = $d['p']['qty'] + $selisih;
        } else if ($qty_product < $d['pd']['qty_product']) {
            $selisih = $d['pd']['qty_product'] - $qty_product;
            $qty = $d['p']['qty'] - $selisih;
        } else if ($qty_product == $d['pd']['qty_product']) {
            $qty = $d['p']['qty'];
        }

        $data = [
            'id_product' => $id_product,
            'qty_product' => $qty_product,
            'basic_price' => $basic_price,
            'total_price' => $qty_product * $basic_price
        ];

        $data_stock = [
            'qty' => $qty,
            'basic_price' => $basic_price,
            'selling_price' => $selling_price
        ];

        $this->produk->update_purchase_detail($data, $id_purchase_detail);
        $this->produk->update_stock_product($data_stock, $id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil diubah!</div>');

        redirect('produk/purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
    }

    public function purchase_detail_delete()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_purchase_detail = $this->input->post('id_purchase_detail', true);
        $id_product = $this->input->post('id_product', true);
        $qty_product = $this->input->post('qty_product', true);

        $d['p'] = $this->db->get_where('tbl_product', ['id_product' => $id_product])->row_array();

        $data_stock = [
            'qty' => $d['p']['qty'] - $qty_product
        ];

        $this->produk->delete_purchase_detail($id_purchase_detail);
        $this->produk->update_stock_product($data_stock, $id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');

        redirect('produk/purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
    }

    public function ajax_produk()
    {
        $id = $this->input->get('id');
        // $id = 6;

        $data = $this->produk->ajax_produk($id);
        // $data = $this->produk->ajax_produk(1);

        echo json_encode($data);
    }
}
