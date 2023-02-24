<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Mitra extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Mitra_model', 'mitra');
        $this->load->helper('date');
    }

    // ---------------------------------------- FRANCHISOR ------------------------------------------ //
    public function partner()
    {
        $data['title'] = "Data Mitra";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['partner'] = $this->mitra->get_partner();
        $data['lab'] = $this->mitra->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('mitra/partner', $data);
        $this->load->view('templates/footer');
    }

    public function partner_add()
    {
        $data['title'] = "Data Mitra";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['partner'] = $this->mitra->get_partner();
        $data['lab'] = $this->mitra->get_lab();

        $name = $this->input->post('name', true);
        $email = "";
        $username = "";
        $password = "";
        $role_id = 7;
        $position = 7;
        $image = "default.jpg";
        $facebook = "";
        $instagram = "";
        $whatsapp = "";
        $icon = "";
        $format = "%Y-%m-%d";
        $date_created = mdate($format);
        $is_active = 1;

        $this->form_validation->set_rules(
            'name',
            'Nama Mitra',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            redirect('mitra/partner');
        } else {
            $data = [
                'id_user' => NULL,
                'name' => $name,
                'email' => $email,
                'username' => $username,
                'password' => $password,
                'role_id' => $role_id,
                'position' => $position,
                'image' => $image,
                'facebook' => $facebook,
                'instagram' => $instagram,
                'whatsapp' => $whatsapp,
                'icon' => $icon,
                'date_created' => $date_created,
                'is_active' => $is_active

            ];

            $this->mitra->save_partner($data);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Mitra berhasil ditambahkan!</div>');

            redirect('mitra/partner');
        }
    }

    public function partner_edit()
    {
        $id_partner = $this->input->post('id_user', true);
        $name = $this->input->post('name', true);
        $whatsapp = $this->input->post('whatsapp', true);

        $data = [
            'name' => $name,
            'whatsapp' => $whatsapp
        ];

        $this->mitra->update_partner($data, $id_partner);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Mitra berhasil diubah!</div>');

        redirect('mitra/partner');
    }

    public function partner_delete()
    {
        $id_partner = $this->input->post('id_user', true);

        $this->mitra->delete_partner($id_partner);
        $this->mitra->delete_product_partner($id_partner);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Mitra berhasil dihapus!</div>');

        redirect('mitra/partner');
    }

    public function partner_product()
    {
        $id_lab = $this->input->get('id_lab', true);
        $id_partner = $this->input->get('id_user', true);

        $data['title'] = "Data Mitra";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['partner_product'] = $this->mitra->get_partner_product($id_lab, $id_partner);
        $data['lab'] = $id_lab;

        $data['partner'] = $this->db->get_where('tbl_users', ['id_user' => $id_partner])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('mitra/partner_product', $data);
        $this->load->view('templates/footer');
    }

    public function partner_product_add()
    {
        $this->form_validation->set_rules(
            'product',
            'Product',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );
        $this->form_validation->set_rules(
            'selling_price',
            'Harga Jual',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $id_lab = $this->input->get('id_lab', true);
            $id_partner = $this->input->get('id_user', true);

            redirect('mitra/partner_product/?id_lab=' . $id_lab . '&id_user=' . $id_partner);
        } else {
            $barcode = $this->input->post('code', true);
            $code = $this->barcode($barcode);
            $id_partner = $this->input->post('id_user', true);
            $product = $this->input->post('product', true);
            $qty = $this->input->post('qty', true);
            $basic_price = $this->input->post('basic_price', true);
            $selling_price = $this->input->post('selling_price', true);
            $image = $this->uploadImage();
            $id_lab = $this->input->post('id_lab', true);
            $is_active = 1;

            $data = [
                'id_product' => NULL,
                'code' => $code,
                'id_category' => 13,
                'id_place' => 5,
                'id_owner' => $id_partner,
                'product' => $product,
                'qty' => 0,
                'qty_shop' => 0,
                'basic_price' => 0,
                'selling_price' => $selling_price,
                'image' => $image,
                'id_lab' => $id_lab,
                'is_active' => $is_active
            ];

            $this->mitra->save_partner_product($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');
            redirect('mitra/partner_product/?id_lab=' . $id_lab . '&id_user=' . $id_partner);
        }
    }

    public function partner_product_edit()
    {
        $id_product = $this->input->post('id_product', true);
        $id_lab = $this->input->post('id_lab', true);
        $id_partner = $this->input->post('id_user', true);
        $barcode = $this->input->post('code', true);
        $code = $this->barcode($barcode);
        $product = $this->input->post('product', true);
        $qty = $this->input->post('qty', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);

        $data['product'] = $this->mitra->get_franchisor_products_by_id($id_product);
        $change_image = $_FILES['image']['name'];

        if ($change_image) {
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '2048';
            $config['upload_path'] = './assets/img/products/';
            $config['max_width'] = '1024';
            $config['max_height'] = '1024';

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
        $this->db->set('product', $product);
        // $this->db->set('qty_shop', $qty);
        // $this->db->set('basic_price', $basic_price);
        $this->db->set('selling_price', $selling_price);

        $this->mitra->update_partner_product($id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil diubah!</div>');
        redirect('mitra/partner_product/?id_lab=' . $id_lab . '&id_user=' . $id_partner);
    }

    public function partner_product_delete()
    {
        $id_product = $this->input->post('id_product');
        $id_lab = $this->input->post('id_lab', true);
        $id_partner = $this->input->post('id_user', true);
        $code = $this->input->post('code', true);

        $this->mitra->delete_partner_product($id_product);
        $target = "assets/img/barcode/" . $code . ".jpg";
        unlink($target);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');
        redirect('mitra/partner_product/?id_lab=' . $id_lab . '&id_user=' . $id_partner);
    }











    // ---------------------------------------- FRANCHISOR ------------------------------------------ //
    public function franchisor()
    {
        $data['title'] = "Data Franchisor";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['franchisor'] = $this->mitra->get_franchisor();
        $data['lab'] = $this->mitra->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('mitra/franchisor', $data);
        $this->load->view('templates/footer');
    }

    public function franchisor_add()
    {
        $data['title'] = "Data Franchisor";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['franchisor'] = $this->mitra->get_franchisor();

        $name = $this->input->post('name', true);
        $email = "";
        $username = "";
        $password = "";
        $role_id = 8;
        $position = 8;
        $image = "default.jpg";
        $facebook = "";
        $instagram = "";
        $whatsapp = "";
        $icon = "";
        $format = "%Y-%m-%d";
        $date_created = mdate($format);
        $is_active = 1;

        $this->form_validation->set_rules(
            'name',
            'Pemilik Produk',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            redirect('mitra/franchisor');
        } else {
            $data = [
                'id_user' => NULL,
                'name' => $name,
                'email' => $email,
                'username' => $username,
                'password' => $password,
                'role_id' => $role_id,
                'position' => $position,
                'image' => $image,
                'facebook' => $facebook,
                'instagram' => $instagram,
                'whatsapp' => $whatsapp,
                'icon' => $icon,
                'date_created' => $date_created,
                'is_active' => $is_active

            ];

            $this->mitra->save_franchisor($data);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Franchisor berhasil ditambahkan!</div>');

            redirect('mitra/franchisor');
        }
    }

    public function franchisor_edit()
    {
        $id_owner = $this->input->post('id_user', true);
        $name = $this->input->post('name', true);
        $whatsapp = $this->input->post('whatsapp', true);

        $data = [
            'name' => $name,
            'whatsapp' => $whatsapp
        ];

        $this->mitra->update_franchisor($data, $id_owner);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Franchisor berhasil diubah!</div>');

        redirect('mitra/franchisor');
    }

    public function franchisor_delete()
    {
        $id_owner = $this->input->post('id_user', true);

        $this->mitra->delete_franchisor($id_owner);
        $this->mitra->delete_product_franchisor($id_owner);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Franchisor berhasil dihapus!</div>');

        redirect('mitra/franchisor');
    }

    public function franchisor_product()
    {
        $id_lab = $this->input->get('id_lab', true);
        $id_owner = $this->input->get('id_user', true);

        $data['title'] = "Data Franchisor";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['franchisor_product'] = $this->mitra->get_franchisor_product($id_lab, $id_owner);
        $data['lab'] = $id_lab;

        $data['owner'] = $this->db->get_where('tbl_users', ['id_user' => $id_owner])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('mitra/franchisor_product', $data);
        $this->load->view('templates/footer');
    }

    public function franchisor_product_add()
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
            $id_owner = $this->input->get('id_user', true);

            redirect('mitra/franchisor_product/?id_lab=' . $id_lab . '&id_user=' . $id_owner);
        } else {
            $barcode = $this->input->post('code', true);
            $code = $this->barcode($barcode);
            $id_owner = $this->input->post('id_user', true);
            $product = $this->input->post('product', true);
            $qty = $this->input->post('qty', true);
            $basic_price = $this->input->post('basic_price', true);
            $selling_price = $this->input->post('selling_price', true);
            $image = $this->uploadImage();
            $id_lab = $this->input->post('id_lab', true);
            $is_active = 1;

            $data = [
                'id_product' => NULL,
                'code' => $code,
                'id_category' => 14,
                'id_place' => 6,
                'id_owner' => $id_owner,
                'product' => $product,
                'qty' => 0,
                'qty_shop' => $qty,
                'basic_price' => $basic_price,
                'selling_price' => $selling_price,
                'image' => $image,
                'id_lab' => $id_lab,
                'is_active' => $is_active
            ];

            $this->mitra->save_franchisor_product($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil ditambahkan!</div>');
            redirect('mitra/franchisor_product/?id_lab=' . $id_lab . '&id_user=' . $id_owner);
        }
    }

    public function franchisor_product_edit()
    {
        $id_product = $this->input->post('id_product', true);
        $id_lab = $this->input->post('id_lab', true);
        $id_owner = $this->input->post('id_user', true);
        $barcode = $this->input->post('code', true);
        $code = $this->barcode($barcode);
        $product = $this->input->post('product', true);
        $qty = $this->input->post('qty', true);
        $basic_price = $this->input->post('basic_price', true);
        $selling_price = $this->input->post('selling_price', true);

        $data['product'] = $this->mitra->get_franchisor_products_by_id($id_product);
        $change_image = $_FILES['image']['name'];

        if ($change_image) {
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '2048';
            $config['upload_path'] = './assets/img/products/';
            $config['max_width'] = '1024';
            $config['max_height'] = '1024';

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
        $this->db->set('product', $product);
        $this->db->set('qty_shop', $qty);
        $this->db->set('basic_price', $basic_price);
        $this->db->set('selling_price', $selling_price);

        $this->mitra->update_franchisor_product($id_product);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil diubah!</div>');

        redirect('mitra/franchisor_product/?id_lab=' . $id_lab . '&id_user=' . $id_owner);
    }

    public function franchisor_product_delete()
    {
        $id_product = $this->input->post('id_product');
        $id_lab = $this->input->post('id_lab', true);
        $id_owner = $this->input->post('id_user', true);
        $code = $this->input->post('code', true);

        $this->mitra->delete_franchisor_product($id_product);
        $target = "assets/img/barcode/" . $code . ".jpg";
        unlink($target);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Produk berhasil dihapus!</div>');

        redirect('mitra/franchisor_product/?id_lab=' . $id_lab . '&id_user=' . $id_owner);
    }

    private function uploadImage()
    {
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '2048';
        $config['upload_path'] = './assets/img/products/';
        $config['max_width'] = '1024';
        $config['max_height'] = '1024';

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

    // DATA KHUSUS FRANCHISOR
    public function data_franchisor()
    {
        $data['title'] = "Data Penjualan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();
        $data['franchise'] = $this->penjualan->get_franchise();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('franchisor/data_franchisor', $data);
        $this->load->view('templates/footer');
    }

    public function data_franchisor_detail()
    {
        $id_franchise = $this->input->get('id_franchise', true);
        $id_franchisor = $this->input->get('id_franchisor', true);

        $data['title'] = "Data Penjualan";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_franchise'] = $id_franchise;
        $data['franchisor'] = $this->penjualan->get_franchisor();

        $data['franchise'] = $this->db->get_where('tbl_franchise', ['id_franchise' => $id_franchise])->row_array();
        $data['franchise_detail'] = $this->penjualan->get_franchise_detail_for_franchisor($id_franchise);

        $data['total_basic_price_franchise'] = $this->penjualan->sum_total_basic_price_franchise($id_franchise);
        $data['total_selling_price_franchise'] = $this->penjualan->sum_total_selling_price_franchise($id_franchise);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('franchisor/data_franchisor_detail', $data);
        $this->load->view('templates/footer');
    }
}