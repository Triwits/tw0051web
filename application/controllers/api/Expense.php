<?php
   
require APPPATH . 'libraries/REST_Controller.php';
     
class Expense extends REST_Controller {
    
    public function __construct() {
       parent::__construct();
       $this->load->database();
        $this->load->model('Data_model');
    }
       

       public function viewPassdetails_get()
    {
     $data = $this->db->get("expense")->result();
         $this->response($data, REST_Controller::HTTP_OK);
    }
    //  public function getPassbyid_get($id)
    // {
    //  $data = $this->db->select('*')->from("expense")->where('expense.id',$id)->get()->result();
    //      $this->response($data, REST_Controller::HTTP_OK);
    // }

public function viewBags_get()
{
    $data = $this->db->select('*')->from('bags')->order_by('id')->get()->result();
         $this->response($data, REST_Controller::HTTP_OK);
}
 public function expense_post()
    {
       $result=$this->Data_model->passengerData();

       $data["result"] = $result['result'];
       $data["operation"] = $result['operation'];
       $data['status']=$result['status'];
       $data['data']=$result['data'];
     

       $status=$result['status'];
           $this->response($data); 
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
        
