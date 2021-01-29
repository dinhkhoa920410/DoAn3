<?php
    // unset($_SESSION['idLogin']);
    $isLoggedin = isset($_SESSION['idLogin']) ? $_SESSION['idLogin'] : false;
    $loggedinID = $isLoggedin ? $_SESSION['idLogin'] : "";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" 
    rel="stylesheet" id="bootstrap-css">
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" 
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" 
    crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/fontawesome.min.css">
    
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid">
        <div class="container">
              <div class="_header">
                <div class="row">
                    <div class="col-md-3 site-branding">
                        <a href="index.php">
                          <img src="images/logo.png" alt="Logo">
                        </a>
                    </div>
                    <div class="col-md-6 site-search">
                        
                        <form  method="GET" action="category.php">
                        
                            <!-- <label class="screen-reader-text" for="product-search-field">Tìm kiếm:</label> -->
                            <input type="search" id="product-search-field" class="search-field" placeholder="Nhập sản phẩm..." name="search">
                            <button type="submit" value="search_1"><i class="fas fa-search"></i></button>
                        </form>
                    </div>
                    <div class="col-md-3 sign-in">
                    <?php 
                        

                        // while($row = fetch_array($query)):
                        //     $userID = $row['user_id'];
                        //     $userName = $row['username'];

                        if($isLoggedin) {
                            $query = query("SELECT * FROM users where user_id = $loggedinID");
                            confirm($query);
                            $row = fetch_array($query);
                            $userID = $row['user_id'];
                            $userName = $row['username'];
                            // $username = escape_string($_POST['username']);    
                            // echo $_SESSION['idLogin'];
                            
                                echo "Xin chào $userName";?>
                                <form action="logout.php" method="POST">
                                    <button name="logout" class="sign-up-1" style="border: none;"> Đăng xuất </button>
                                    <!-- <a href="" name="logout" class="sign-up-1">Đăng xuất</a> -->
                                </form>
                            <!-- <a href="login.php" class="sign-up-1">Đăng xuất</a> -->
                        <?php    
                        } else { ?>
                            
                        <a href="login.php" class="sign-up-1">Đăng nhập</a>
                        <a href="signup.php" class="sign-up-2">Đăng ký</a>

                        <?php } ?>

                        
                      
                    </div>
                </div>
              </div>
            
            
              <nav class="container-fluid navbar-expand-lg navbar-light">
                <div class="row">
                    <div class="col-md-3">
                        <div class="dropdown">
                            <div class="dropbtn"><span><i class="fas fa-bars"></i></span>DANH MỤC NÔNG SẢN</div>
                            <div class="dropdown-content">

                            <?php 
                                $queryString = "SELECT product_category_id, cat_title, cat_id, COUNT(product_id) AS total FROM products JOIN categories 
                                ON categories.cat_id = products.product_category_id GROUP BY product_category_id ";
                                $query = query($queryString);

                                while($row = fetch_array($query)):
                                    $productCatID = $row['product_category_id'];
                                    $total = $row['total'];
                                    $categoryName = $row['cat_title'];
                                    $categoryID = $row['cat_id'];
                                    
                            ?>
                                <a href="category.php?cat=<?php echo $categoryID?>&page=1&filter=0"><?php echo $categoryName?> <span>(<?php echo $total?>)</span></a>

                                <?php endwhile ?>

                                
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6 navbar" style="text-align:center;">
                        <a href="index.php">Trang chủ</a>
                        <a href="category.php?cat=1&page=1&filter=0">Sản phẩm các loại</a>
                        <a href="news.php">Khuyến mãi</a>
                        <a href="contact.php">Liên hệ</a>
                    </div>


                    <div class="col-md-3 shopping-cart">
                        <button class="dropbtn"><span><i class="fas fa-shopping-cart"></i></span><a href="checkout.php" style="color: #554510; text-decoration: none;">GIỎ HÀNG</a></button>
                    </div>



                </div>
                
            </nav>

           