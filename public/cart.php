<?php require_once("../resource/config.php"); ?>

<?php 
        // unset($_SESSION['idLogin']);
        $isLoggedin = isset($_SESSION['idLogin']);
        $loggedinID = $isLoggedin ? $_SESSION['idLogin'] : "";
        
        if(!$isLoggedin){
            redirect("login.php");
        }

        if(isset($_POST['id'])){
            $id = $_POST['id'];
            $number = $_POST['number'];
            addToCart($id, $number);
        }
        
        if(isset($_POST['delete'])){
            $roundToDelete = $_POST['delete'];
            deleteFromCart($roundToDelete);
        }

        redirect("checkout.php");
    // }


?>