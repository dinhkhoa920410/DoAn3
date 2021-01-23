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
                        <h3 style="font-weight: 700;">ĐĂNG NHẬP</h3>
                    </div>
                </div>
            
                <div>
                <form class="" action="" method="post" enctype="multipart/form-data">

<?php 
    if(isset($_POST['submit'])) {
        $username = escape_string($_POST['username']);
        $password = escape_string($_POST['password']);

        $query = query("SELECT * FROM users WHERE username = '{$username}' AND password = '{$password}' ");
        confirm($query);
        
        if(mysqli_num_rows($query) == 0) {
            set_message("Your password or Username are wrong");
            redirect("login.php");
        } else {
            $row = fetch_array($query);
            $userID = $row['user_id'];
            set_message("Welcome to Admin {$username}");
            
            $_SESSION["idLogin"] = $userID;
            redirect("index.php");
        }

    }
?>

<div class="form-group"><label for="" style="width:100%; margin-top: 40px; padding: 0 40px 0 40px;">
        Tên đăng nhập<input type="text" name="username" class="form-control"></label>
</div>
<div class="form-group"><label for="password" style="width:100%; padding: 0 40px 0 40px;">
        Mật khẩu<input type="password" name="password" class="form-control"></label>
</div>

<div class="form-group" style="text-align:center; margin-top: 40px;">
    <button type="submit" name="submit" value="ĐĂNG NHẬP" style="padding: 8px 24px 8px 24px; border-radius: 24px; border: none; background-color: #f9c937;
    font-weight: 600; color: #554510; font-size: 16px;">ĐĂNG NHẬP</button>
</div>

<p style="text-align: center; font-size: 16px">Bạn chưa có tài khoản ? <a href="" class="sign-up-2">Đăng ký</a> </p>
</form>
                </div>
        

                
    
    
    


            </div>
            <div class="col-md-4"></div>
        </div>
    

    </header>


</div>

</div>
<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>