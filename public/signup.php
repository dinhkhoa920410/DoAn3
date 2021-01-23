<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php include(TEMPLATE_FRONT . DS . "main-banner.php") ?>
<!-- Page Content -->
<div class="container">

    <header>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div>
                    <div class="col-md-2" style="text-align: right; padding-top: 8px; padding-right: 0;">
                        <img src="images/logo_hinh.png" alt="" style="width: 48px;">
                    </div>
                    <div class="col-md-10" style="text-align: left; color: #78a204; font-weight: 800;">
                        <h3 style="font-weight: 700;">ĐĂNG KÝ</h3>
                    </div>
                </div>
            
                <div>
                <form class="" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" enctype="multipart/form-data">

<?php
$usernameErr = $emailErr = $passwordErr = "";
$username = $email = $password = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST['username'])) {
        $username = escape_string($_POST['username']);
        if (!preg_match("/^[a-zA-Z-' ]*$/",$username)) {
            $usernameErr = "Only letters and white space allowed";
        }
        
    } else {
        $usernameErr = "Name is required";
    }

    if(isset($_POST['email'])) {
        $email = escape_string($_POST['email']);
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $emailErr = "Invalid email format";
          }
    } else {
        $emailErr = "Email is required";
    }

    if(isset($_POST['password'])) {
        $password = escape_string($_POST['password']);
    } else {
        $passwordErr = "Password is required";
    }

    $queryString = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password');";
    $query = query($queryString);

    redirect ('login.php'); 
}



?>

<div class="form-group"><label for="" style="width:100%; margin-top: 40px; padding: 0 40px 0 40px;">
        Tên đăng nhập<input type="text" name="username" class="form-control"></label><span style="color: color: #FF0000;"><?php echo $usernameErr;?></span>
</div>
<div class="form-group"><label for="" style="width:100%; padding: 0 40px 0 40px;">
        Email<input type="text" name="email" class="form-control"></label><span style="color: color: #FF0000;"><?php echo $emailErr;?></span>
</div>
<div class="form-group"><label for="password" style="width:100%; padding: 0 40px 0 40px;">
        Mật khẩu<input type="password" name="password" class="form-control"></label><span style="color: color: #FF0000;"><?php echo $passwordErr;?></span>
</div>

<div class="form-group" style="text-align:center; margin-top: 40px;">
    <button type="submit" name="submit" value="ĐĂNG NHẬP" style="padding: 8px 24px 8px 24px; border-radius: 24px; border: none; background-color: #f9c937;
    font-weight: 600; color: #554510; font-size: 16px;">ĐĂNG KÝ</button>
</div>

<!-- <p style="text-align: center; font-size: 16px">Bạn chưa có tài khoản ? <a href="" class="sign-up-2">Đăng ký</a> </p> -->
</form>
                </div>
        

                
    
    
    


            </div>
            <div class="col-md-4"></div>
        </div>
    

    </header>


</div>

</div>
<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>