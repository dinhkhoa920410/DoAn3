<?php require_once("../resource/config.php"); ?>
<?php
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        if(isset($_POST["userName"]) && !empty($_POST["userName"]))
            $userName = $_POST["userName"];
        if(isset($_POST["userEmail"])  && !empty($_POST["userEmail"]))
            $userEmail = $_POST["userEmail"];
        if(isset($_POST["userComment"])  && !empty($_POST["userComment"]))
            $userComment = $_POST["userComment"];
        if(isset($_POST["commentstar"])  && !empty($_POST["commentstar"]))
            $commentstar = $_POST["commentstar"];
        if(isset($_GET["id"])  && !empty($_POST["id"]))
            $productID = escape_string($_GET["id"]);
        
        date_default_timezone_set("Asia/Bangkok");
        $datetime = date('Y-m-d H:i:s');
        $userID = 1;
        $queryString =    " INSERT INTO rating (product_id, user_id, star, comment, datetime)
                            VALUES ('$productID', '$userID', '$commentstar', '$userComment', '$datetime') ";
        if(query($queryString))
            redirect("item.php?id=".$productID);
    }
?>