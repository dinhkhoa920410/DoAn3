<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php include(TEMPLATE_FRONT . DS . "main-banner.php") ?>

         <!-- Contact Section -->

        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                <h3 style="color: #78a204; font-weight: 700;"><img src="images/logo_hinh.png" alt="" style="width:3%; margin-right: 8px;">THÔNG TIN LIÊN HỆ</h3>
                    <h3 class="section-subheading text-muted"></h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" name="sentMessage" id="contactForm" method="POST">
                    <?php
                            $usernameErr = $emailErr = $phoneErr = $messageErr = "";
                            $username = $email = $phone = $message = "";

                            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                                if(isset($_POST['name'])) {
                                    $username = escape_string($_POST['name']);
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

                                if(isset($_POST['message'])) {
                                    $message = escape_string($_POST['message']);
                                    if (!preg_match("/^[a-zA-Z-' ]*$/",$message)) {
                                        $messageErr = "Only letters and white space allowed";
                                    }
                                    
                                } else {
                                    $messageErr = "Name is required";
                                }

                                if(isset($_POST['phone'])) {
                                    $phone = escape_string($_POST['phone']);
                                } else {
                                    $phoneErr = "Password is required";
                                }

                                $queryString = "INSERT INTO contact_info (contact_name, contact_mail, contact_cmt, contact_phone) VALUES ('$username', '$email', '$message', '$phone');";
                                $query = query($queryString);

                                redirect ('index.php'); 
                            }
                    ?>

                        <div class="row">
                            <!-- <div class="col-md-6"> -->
                                <div class="form-group">
                                    <b>Họ và tên</b><input type="text" class="form-control" placeholder="" name="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <b>Email</b><input type="email" class="form-control" placeholder="" name="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <b>Số điện thoại</b><input type="tel" class="form-control" placeholder="" name="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            <!-- </div> -->
                            <!-- <div class="col-md-6"> -->
                                <div class="form-group">
                                    <b>Ý kiến của bạn</b><textarea class="form-control" placeholder="" name="message" required data-validation-required-message="Please enter a message." rows="8" cols="50"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            <!-- </div> -->
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl" style="padding: 8px 24px 8px 24px; border-radius: 24px; border: none; background-color: #f9c937; font-weight: 600; color: #554510; font-size: 16px; margin-top: 24px;">NHẤN GỬI</button>
                            </div>
                        </div>
                    </form>
                    
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>

    </div>
    <!-- /.container -->
    <?php include(TEMPLATE_FRONT . DS . "footer.php") ?>