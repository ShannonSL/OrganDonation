<?php 

    if (isset($_GET['allusers'])) {
        include('connect.php');
$id = $_GET['allusers'];
       
$query = 'SELECT * FROM tbl_user';

       
        $getAllUsers = $pdo->prepare($query);
        $getAllUsers->execute();

        $users = array();

        while($user = $getAllUsers->fetch(PDO::FETCH_ASSOC)) {
            $currentuser =  array();
            $currentuser['id'] = $user['user_id'];
            $currentuser['username'] = $user['user_name'];
            
            $users[] = $currentuser;
        }

        echo json_encode($users);
    }

    if (isset($_GET['mainuser'])) {
        include('connect.php');
        $id = $_GET['mainuser'];
       
        $query = 'SELECT * FROM tbl_user WHERE user_id = :id';
       
        $getMainUser = $pdo->prepare($query);
        $getMainUser->execute(
            array(
                ':id'=>$id
            )
        );
        
        $currentuser =  array();
        while($user = $getMainUser->fetch(PDO::FETCH_ASSOC)) {
            
            $currentuser['userfname'] = $user['user_fname'];
            $currentuser['email'] = $user['user_email'];
            $currentuser['username'] = $user['user_name'];
            $currentuser['pass'] = $user['user_pass'];
      
        }

        echo json_encode($currentuser);
    }
    

    
?>