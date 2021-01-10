<?php require_once("../resource/config.php"); ?>

<?php 

    if(isset($_GET['add'])) {

        $query = query("SELECT * FROM products WHERE product_id =" . escape_string($_GET['add']) . " ");
        confirm($query);

        while($row = fetch_array($query)) {

            if($row['product_quantity'] != $_SESSION['product_' . $_GET['add']]) {
                
                $_SESSION['product_' . $_GET['add']] += 1;
                redirect("checkout.php");
            } else {
                set_message("We only have " . $row['product_quantity'] . " " . "Available");
                redirect("checkout.php?add=");
            }

        }

        // $_SESSION['tao_thich'] = escape_string($_GET['add']);
        // redirect("checkout.php");

        // $_SESSION['product_' . $_GET['add']] += 1;
        // redirect("index.php");

    }


?>