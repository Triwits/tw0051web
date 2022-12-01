<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_model extends CI_Model {



public function getUserData($login,$pass){
      $data= $this->db->where('email',$login)->where('password',$pass)->get('porter_reg');
       return $data;
   }

 public function passengerData()
       {
         $json = file_get_contents('php://input');

        $data = json_decode($json);
         $inputs=$data->dataToSubmit;
           $insertData=array(
              'FullName'=>$inputs->FullName,
                'AirlineName'=>$inputs->AirlineName,
               // 'Bags'=>$inputs->Bags,
               // 'Normal_Vip'=>$inputs->Normal_Vip,
               'contact'=>$inputs->contact,
               'email'=>$inputs->email,
               // 'flight_no'=>$inputs->flight_no
               );
               $this->db->insert('expense',$insertData);
             $getResult=array(
                'result'=>'insert',
                'operation'=>"Successfully inserted",
                'data'=>$data,
                'status'=>400,
                );
       //}
  return $getResult;
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