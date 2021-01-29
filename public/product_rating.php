<?php require_once("../resource/config.php"); ?>
<?php
    $isLoggedin = isset($_SESSION['idLogin']);
    $loggedinID = $isLoggedin ? $_SESSION['idLogin'] : "";
    if(!$isLoggedin){
        redirect("login.php");
    }else {
        if($_SERVER["REQUEST_METHOD"] == "POST"){
            if(isset($_POST["userName"]) && !empty($_POST["userName"]))
                $userName = $_POST["userName"];
                
            if(isset($_POST["userEmail"])  && !empty($_POST["userEmail"]))
                $userEmail = $_POST["userEmail"];
            if(isset($_POST["userComment"])  && !empty($_POST["userComment"]))
                $userComment = $_POST["userComment"];
            if(isset($_POST["commentstar"])  && !empty($_POST["commentstar"]))
                $commentstar = $_POST["commentstar"];
            if(isset($_GET["id"])  && !empty($_GET["id"]))
                $productID = escape_string($_GET["id"]);
            if(isset($_GET["cat"])  && !empty($_GET["cat"]))
                $productCAT = escape_string($_GET["cat"]);
            if(isset($_GET["star"])  && !empty($_GET["star"]))
                $productSTAR = escape_string($_GET["star"]);
            date_default_timezone_set("Asia/Bangkok");
            $datetime = date('Y-m-d H:i:s');
            $userID = $_SESSION['idLogin'];
            
            $queryString =    " INSERT INTO rating (product_id, user_id, star, comment, datetime)
                                VALUES ('$productID', '$userID', '$commentstar', '$userComment', '$datetime') ";
            if(query($queryString))
                redirect("item.php?id=".$productID."&cat=".$productCAT."&star=".$productSTAR);

            
        }
    }

    
?>