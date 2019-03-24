<?php 
	require_once('config.php');
    
        $fname = trim($_POST['firstname']);
        $username = trim($_POST['username']);
		$email = trim($_POST['email']);

        //Validation
     
        if (isset($_GET['sub'])) {
            if(empty($username)){
                $result = 'Please fill the required fields!';
            }else{
                $c_id = $_GET['sub'];
                $tbl = "tbl_sub_user";
                $result = editUser($tbl,null,$username,null,$c_id);
            }
    
        }
        
        if (isset($_GET['main'])){
            if(empty($username) || empty($fname)|| empty($email)){
                $result = 'Please fill the required fields!';
            }else{
            $c_id = $_GET['main'];
            $tbl = "tbl_user";
         $result = editUser($tbl,$fname,$username,$email,$c_id);
            }
        }

    	echo json_encode($result);

?>
