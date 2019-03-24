<?php 
    function editUser($tbl,$fname,$username,$email,$c_id){
        include('connect.php');
 
        if($tbl=="tbl_sub_user"){
        
          $edit_user_query = 'UPDATE '.$tbl.' SET sub_user_name = :username WHERE sub_user_id = :id';
          $edit_user_set = $pdo->prepare($edit_user_query);
          $edit_user_set->execute(
            
              array(
                  ':username'=>$username,
                  ':id'=>$c_id,
              )
          );
        }else{
          $edit_user_query = 'UPDATE '.$tbl.' SET user_fname=:fname, user_name=:username,user_email=:email WHERE user_id = :id';
          $edit_user_set = $pdo->prepare($edit_user_query);
          $edit_user_set->execute(
            
              array(
                  ':fname'=>$fname,
                  ':username'=>$username,
                  ':email'=>$email,
                  ':id'=>$c_id
              )
          );

        }

        if($edit_user_set->rowCount()){
          $message = 'User Edited';
          return $message;
        }else{
          $message = 'User Edit Failed';
          return $message;
        }

    }