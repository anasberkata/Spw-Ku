<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Peralatan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Peralatan_model', 'peralatan');
        // $this->load->helper('date');
    }

    // PRODUK
    public function index()
    {
        $data['title'] = "Data Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->peralatan->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/index', $data);
        $this->load->view('templates/footer');
    }

    public function tool()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['tool'] = $this->peralatan->get_tools($id_lab);
        $data['tool_condition'] = $this->peralatan->get_condition();
        $data['tool_categories'] = $this->peralatan->get_categories();
        $data['lab'] = $id_lab;

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/tool', $data);
        $this->load->view('templates/footer');
    }

    public function tool_add()
    {
        $data['title'] = "Data Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $this->form_validation->set_rules(
            'tool',
            'Tool',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $id_lab = $this->input->get('id_lab', true);

            $data['tool'] = $this->peralatan->get_tools($id_lab);
            $data['tool_condition'] = $this->peralatan->get_condition();

            $this->load->view('templates/header', $data);
            $this->load->view('templates/aside', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('peralatan/tool', $data);
            $this->load->view('templates/footer');
        } else {
            $id_lab = $this->input->post('id_lab', true);
            $id_category = $this->input->post('id_category', true);
            $tool = $this->input->post('tool', true);
            $brand = $this->input->post('brand', true);
            $qty = $this->input->post('qty', true);
            $price = $this->input->post('price', true);
            $id_tool_condition = $this->input->post('id_tool_condition', true);
            $description = $this->input->post('description', true);
            $is_active = 1;

            $data = [
                'id_tool' => NULL,
                'id_tool_category' => $id_category,
                'tool' => $tool,
                'brand' => $brand,
                'qty' => $qty,
                'price' => $price,
                'tool_condition' => $id_tool_condition,
                'description' => $description,
                'id_lab' => $id_lab,
                'is_active' => $is_active
            ];

            $this->peralatan->save_tool($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil ditambahkan!</div>');
            redirect('peralatan/tool/?id_lab=' . $id_lab);
        }
    }

    public function tool_edit()
    {
        $id_tool = $this->input->post('id_tool', true);
        $id_lab = $this->input->post('id_lab', true);
        $id_category = $this->input->post('id_category', true);
        $tool = $this->input->post('tool', true);
        $brand = $this->input->post('brand', true);
        $qty = $this->input->post('qty', true);
        $price = $this->input->post('price', true);
        $id_tool_condition = $this->input->post('id_tool_condition', true);
        $description = $this->input->post('description', true);

        $data = [
            'id_tool_category' => $id_category,
            'tool' => $tool,
            'brand' => $brand,
            'qty' => $qty,
            'price' => $price,
            'tool_condition' => $id_tool_condition,
            'description' => $description
        ];

        $this->peralatan->update_tool($data, $id_tool);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil diubah!</div>');
        redirect('peralatan/tool/?id_lab=' . $id_lab);
    }

    public function tool_delete()
    {
        $id_tool = $this->input->post('id_tool', true);
        $id_lab = $this->input->post('id_lab', true);

        $this->peralatan->delete_tool($id_tool);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil dihapus!</div>');
        redirect('peralatan/tool/?id_lab=' . $id_lab);
    }

    public function printPDF()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['tool'] = $this->peralatan->get_tools($id_lab);
        $data['tool_condition'] = $this->peralatan->get_condition();
        $data['lab'] = $id_lab;

        $data['total_price'] = $this->peralatan->sum_total_price($id_lab);

        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L', 'setAutoTopMargin' => 'stretch']);
        $page = $this->load->view('peralatan/tool_pdf', $data, TRUE);
        $mpdf->WriteHTML($page);
        $mpdf->Output('Data Aset Lab SPW ' . $id_lab . '.pdf', 'I');
    }


    // PURCHASE
    public function index_purchase()
    {
        $data['title'] = "Data Pembelian Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->peralatan->get_lab();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/index_purchase', $data);
        $this->load->view('templates/footer');
    }

    public function tool_purchase()
    {
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();


        $data['tool'] = $this->peralatan->get_tools($id_lab);
        $data['tool_condition'] = $this->peralatan->get_condition();


        $data['lab'] = $id_lab;

        $data['tool_purchase'] = $this->peralatan->get_tool_purchase($id_lab);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/tool_purchase', $data);
        $this->load->view('templates/footer');
    }

    public function tool_purchase_add()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_user = $this->input->post('id_user', true);
        $shop = $this->input->post('shop', true);
        $date_purchasing = $this->input->post('date_purchasing', true);

        $data = [
            'id_purchase' => NULL,
            'date_purchasing' => $date_purchasing,
            'shop' => $shop,
            'id_user' => $id_user,
            'id_lab' => $id_lab
        ];

        $this->peralatan->save_tool_purchase($data);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembelian berhasil ditambahkan! Silahkan isi Produk</div>');

        redirect('peralatan/tool_purchase/?id_lab=' . $id_lab);
    }

    public function tool_purchase_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_user = $this->input->post('id_user', true);
        $date_purchasing = $this->input->post('date_purchasing', true);
        $shop = $this->input->post('shop', true);

        $data = [
            'date_purchasing' => $date_purchasing,
            'shop' => $shop,
            'id_user' => $id_user
        ];

        $this->peralatan->update_tool_purchase($data, $id_purchase);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Pembelian berhasil diubah!</div>');

        redirect('peralatan/tool_purchase/?id_lab=' . $id_lab);
    }

    public function tool_purchase_detail()
    {
        $id_purchase = $this->input->get('id_purchase', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        // $data['supplier'] = $this->produk->get_supplier();

        $data['id_purchase'] = $id_purchase;
        $data['lab'] = $id_lab;
        $data['tools'] = $this->peralatan->get_tools($id_lab);
        $data['condition'] = $this->peralatan->get_condition();

        $data['purchase'] = $this->db->get_where('tbl_tool_purchase', ['id_purchase' => $id_purchase])->row_array();
        $data['purchase_detail'] = $this->peralatan->get_tool_purchase_detail($id_purchase);

        $data['total'] = $this->peralatan->sum_total_purchase_price($id_purchase);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/tool_purchase_detail', $data);
        $this->load->view('templates/footer');
    }

    public function tool_purchase_detail_add()
    {
        $this->form_validation->set_rules(
            'qty_purchase',
            'Jumlah Aset',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        $this->form_validation->set_rules(
            'price_purchase',
            'Harga',
            'required',
            array(
                'required' => '{field} wajib diisi'
            )
        );

        if ($this->form_validation->run() == false) {
            $id_purchase = $this->input->get('id_purchase', true);
            $id_lab = $this->input->get('id_lab', true);

            redirect('peralatan/tool_purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);

        } else {
            $id_lab = $this->input->post('id_lab', true);
            $id_purchase = $this->input->post('id_purchase', true);
            $id_tool = $this->input->post('id_tool', true);
            $qty_purchase = $this->input->post('qty_purchase', true);
            $price_purchase = $this->input->post('price_purchase', true);
            $condition_purchase = $this->input->post('condition_purchase', true);

            $data = [
                'id_purchase_detail' => NULL,
                'id_purchase' => $id_purchase,
                'id_tool' => $id_tool,
                'qty_purchase' => $qty_purchase,
                'price_purchase' => $price_purchase,
                'total_price_purchase' => $qty_purchase * $price_purchase,
                'condition_purchase' => $condition_purchase
            ];

            $d['t'] = $this->db->get_where('tbl_tool', ['id_tool' => $id_tool])->row_array();

            $data_stock = [
                'qty' => $d['t']['qty'] + $qty_purchase,
                'price' => $d['t']['price'] + ($qty_purchase * $price_purchase)
            ];

            $this->peralatan->save_tool_purchase_detail($data);
            $this->peralatan->update_stock_tool($data_stock, $id_tool);

            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil ditambahkan!</div>');

            redirect('peralatan/tool_purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
        }
    }

    public function tool_purchase_detail_edit()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_purchase_detail = $this->input->post('id_purchase_detail', true);
        $id_tool = $this->input->post('id_tool', true);
        $qty_purchase = $this->input->post('qty_purchase', true);
        $price_purchase = $this->input->post('price_purchase', true);
        $condition_purchase = $this->input->post('condition_purchase', true);

        $d['t'] = $this->db->get_where('tbl_tool', ['id_tool' => $id_tool])->row_array();
        $d['pd'] = $this->db->get_where('tbl_tool_purchase_detail', ['id_purchase_detail' => $id_purchase_detail])->row_array();

        if ($qty_purchase == $d['pd']['qty_purchase']) {
            $qty = $d['t']['qty'];
        } else {
            $selisih = $qty_purchase - $d['pd']['qty_purchase'];
            $qty = $d['t']['qty'] + $selisih;
        }

        $final_price = $qty_purchase * $price_purchase;

        if ($final_price == $d['pd']['total_price_purchase']) {
            $price = $d['t']['price'];
        } else {
            $selisih_harga = $final_price - $d['pd']['total_price_purchase'];
            $price = $d['t']['price'] + $selisih_harga;
        }

        $data = [
            'id_tool' => $id_tool,
            'qty_purchase' => $qty_purchase,
            'price_purchase' => $price_purchase,
            'total_price_purchase' => $final_price,
            'condition_purchase' => $condition_purchase
        ];

        $data_stock = [
            'qty' => $qty,
            'price' => $price
        ];

        $this->peralatan->update_tool_purchase_detail($data, $id_purchase_detail);
        $this->peralatan->update_stock_tool($data_stock, $id_tool);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil diubah!</div>');

        redirect('peralatan/tool_purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
    }

    public function tool_purchase_detail_delete()
    {
        $id_lab = $this->input->post('id_lab', true);
        $id_purchase = $this->input->post('id_purchase', true);
        $id_purchase_detail = $this->input->post('id_purchase_detail', true);
        $id_tool = $this->input->post('id_tool', true);
        $qty_purchase = $this->input->post('qty_purchase', true);
        $price_purchase = $this->input->post('price_purchase', true);

        $d['t'] = $this->db->get_where('tbl_tool', ['id_tool' => $id_tool])->row_array();

        if ($price_purchase == $d['t']['price']) {
            $price = 0;
        } else {
            $price = $d['t']['price'] - $price_purchase;
        }

        $data_stock = [
            'qty' => $d['t']['qty'] - $qty_purchase,
            'price' => $price
        ];

        $this->peralatan->delete_tool_purchase_detail($id_purchase_detail);
        $this->peralatan->update_stock_tool($data_stock, $id_tool);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Peralatan berhasil dihapus!</div>');

        redirect('peralatan/tool_purchase_detail/?id_purchase=' . $id_purchase . '&id_lab=' . $id_lab);
    }

    public function tool_purchase_detail_excel()
    {
        $id_purchase = $this->input->get('id_purchase', true);
        $id_lab = $this->input->get('id_lab', true);

        $data['title'] = "Data Pembelian Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['id_purchase'] = $id_purchase;
        $data['lab'] = $id_lab;
        $data['tools'] = $this->peralatan->get_tools($id_lab);
        $data['condition'] = $this->peralatan->get_condition();

        $data['purchase'] = $this->db->get_where('tbl_tool_purchase', ['id_purchase' => $id_purchase])->row_array();
        $data['purchase_detail'] = $this->peralatan->get_tool_purchase_detail($id_purchase);

        $data['total'] = $this->peralatan->sum_total_purchase_price($id_purchase);

        $this->load->view('peralatan/tool_purchase_detail_excel', $data);
    }



    // CATAGORY
    public function category()
    {
        $data['title'] = "Data Kategori Aset";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['category'] = $this->peralatan->get_categories();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/aside', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('peralatan/category', $data);
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

            redirect('peralatan/category');

        } else {
            $category = $this->input->post('category', true);

            $data = [
                'id_tool_category' => NULL,
                'tool_category' => $category
            ];

            $this->peralatan->save_category($data);
            $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kategori berhasil ditambahkan!</div>');
            redirect('peralatan/category');
        }
    }

    public function category_edit()
    {
        $id_category = $this->input->post('id_category', true);
        $category = $this->input->post('category', true);

        $data = [
            'tool_category' => $category
        ];

        $this->peralatan->update_category($data, $id_category);
        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kategori berhasil diubah!</div>');
        redirect('peralatan/category');
    }

    public function category_delete()
    {
        $id_category = $this->input->post('id_category');

        $this->peralatan->delete_category($id_category);

        $this->session->set_flashdata('message', '<div class="alert alert-success text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">Kategori berhasil dihapus!</div>');
        redirect('peralatan/category');
    }
}