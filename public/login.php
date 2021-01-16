<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="container">

    <header>
        <h1 class="text-center">Login</h1>
        <h2><?php display_message(); ?></h2>
        <div class="col-sm-4 col-sm-offset-5">
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

                <div class="form-group"><label for="">
                        username<input type="text" name="username" class="form-control"></label>
                </div>
                <div class="form-group"><label for="password">
                        Password<input type="text" name="password" class="form-control"></label>
                </div>

                <div class="form-group">
                    <input type="submit" name="submit" class="btn btn-primary">
                </div>
            </form>
        </div>


    </header>


</div>

</div>
<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>