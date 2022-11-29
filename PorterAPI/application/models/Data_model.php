<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_model extends CI_Model {



public function getUserData($login,$pass){
      $data= $this->db->where('email',$login)->where('password',$pass)->get('user');
       return $data;
   }

 public function expense($data)
       {
        $this->FullName = $data['FullName'];
        $this->AirlineName = $data['AirlineName'];      
        $this->Bags = $data['Bags']; 
        $this->Normal_Vip = $data['Normal_Vip'];
        
        
               
     if($this->db->insert('expense',$this))
       {    
         return 'Data inserted successfully';
        }
      else
          {
            return "Error has occured";
           }
        }


public function expenseupdate($id,$data){
       //$this->FullName = $data['FullName'];
       //$this->AirlineName = $data['AirlineName'];
       $this->Bags = $data['Bags'];
      
       
       //$this->Normal_Vip = $data['Normal_Vip'];
       
       $result = $this->db->update('expense',$this,array('id' => $id,));
       if($result)
       {
           return "Data is updated successfully";
       }
       else
       {
           return "Error has occurred";
       }
   }










}


?>