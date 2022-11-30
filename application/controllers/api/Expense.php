<?php
   
require APPPATH . 'libraries/REST_Controller.php';
     
class Expense extends REST_Controller {
    
    public function __construct() {
       parent::__construct();
       $this->load->database();
        $this->load->model('Data_model');
    }
       

       public function expense_get()
    {
     $data = $this->db->get("expense")->result();
         $this->response($data, REST_Controller::HTTP_OK);
    }

public function viewBags_get()
{
    $data = $this->db->select('*')->from('bags')->order_by('id')->get()->result();
         $this->response($data, REST_Controller::HTTP_OK);
}
 public function expense_post()
    {
      $data = array(
            'FullName' => $this->input->post('FullName'),
           'AirlineName' => $this->input->post('AirlineName'),
           'Bags' => $this->input->post('Bags'),
            'Normal_Vip' => $this->input->post('Normal_Vip'),
           );
           $r = $this->Data_model->expense($data);
           $this->response($r); 
    }


     public function expenseupdate_put(){
           $id = $this->uri->segment(4);
           $data = array(
           //'FullName' => $this->input->get('FullName'),
          
           //'AirlineName' => $this->input->get('AirlineName'),
           'Bags' => $this->input->get('Bags'),
           
       
           //'Normal_Vip' => $this->input->get('Normal_Vip'),
          
           );
            $r = $this->Data_model->expenseupdate($id,$data);
               $this->response($r); 
       }



 public function expensedelete_delete($id)
    {
        $this->db->delete('expense', array('id'=>$id));
       
        $this->response(['Item deleted successfully.'], REST_Controller::HTTP_OK);
    }
        






}
        
