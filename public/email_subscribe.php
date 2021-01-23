<?php require_once("../resource/config.php"); ?>

<?php 
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        if(isset($_POST["email-subcribe"])) {
            $email = escape_string($_POST["email-subcribe"]);
            // echo $email; 
            
            if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $emailErr = "Invalid email format";
                // echo $emailErr;
            }
            $queryString = "INSERT INTO subscriber (sub_email) VALUES ('$email');";
            $query = query($queryString);
        } 
    }


    

    redirect("index.php");
?>