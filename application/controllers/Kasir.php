<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Kasir extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model('Kasir_model', 'kasir');
        $this->load->helper('date');
    }

    // LAB
    public function index()
    {
        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $this->kasir->get_lab();

        $this->load->view('kasir/header', $data);
        $this->load->view('kasir/index', $data);
        $this->load->view('kasir/footer');
    }

    // KASIR
    public function cashier()
    {
        $id_lab = $this->input->get('id_lab', true);
        $data['title'] = "Kasir";
        $data['user'] = $this->db->get_where('tbl_users', ['id_user' => $this->session->userdata('id_user')])->row_array();

        $data['lab'] = $id_lab;
        $data['product'] = $this->kasir->get_product($id_lab);

        // $this->load->view('kasir/header', $data);
        // $this->load->view('kasir/cashier', $data);
        // $this->load->view('kasir/footer');

        $this->load->view('kasir/kasir', $data);
    }

    function cashier_cart_add()
    { //fungsi Add To Cart
        $data = array(
            'id' => $this->input->post('product_id'),
            'name' => $this->input->post('product_name'),
            'price' => $this->input->post('product_price'),
            'qty' => $this->input->post('quantity'),
        );
        $this->cart->insert($data);
        echo $this->show_cart(); //tampilkan cart setelah added
    }

    function show_cart()
    { //Fungsi untuk menampilkan Cart
        $output = '';
        $no = 0;
        foreach ($this->cart->contents() as $items) {
            $no++;
            $output .= '
				<tr>
					<td>' . $items['name'] . '</td>
					<td>' . number_format($items['price']) . '</td>
					<td>' . $items['qty'] . '</td>
					<td>' . number_format($items['subtotal']) . '</td>
					<td><button type="button" id="' . $items['rowid'] . '" class="hapus_cart btn btn-danger btn-xs">Batal</button></td>
				</tr>
			';
        }
        $output .= '
			<tr>
				<th colspan="3">Total</th>
				<th colspan="2">' . 'Rp ' . number_format($this->cart->total()) . '</th>
			</tr>
		';
        return $output;
    }

    function cashier_cart_load()
    { //load data cart
        echo $this->show_cart();
    }

    function cashier_cart_delete()
    { //fungsi untuk menghapus item cart
        $data = array(
            'rowid' => $this->input->post('row_id'),
            'qty' => 0,
        );
        $this->cart->update($data);
        echo $this->show_cart();
    }
}
