<?php 
    require_once("../resource/config.php");
    if(isset($_POST['logout']))
    {
        unset($_SESSION['idLogin']);
    }

    redirect('index.php');

?>