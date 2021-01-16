<?php
    $isLoggedin = isset($_SESSION['idLogin']);
    $loggedinID = $isLoggedin ? $_SESSION['idLogin'] : "";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" 
    crossorigin="anonymous"> -->

    <link href="css/bootstrap.min.css" 
    rel="stylesheet" id="bootstrap-css">

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" 
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" 
    crossorigin="anonymous"/>
    
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    <!-- <link href="css/style.css" rel="stylesheet"> -->
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
                        <form method="GET" action="">
                            <!-- <label class="screen-reader-text" for="product-search-field">Tìm kiếm:</label> -->
                            <input type="search" id="product-search-field" class="search-field" placeholder="Nhập sản phẩm...">
                            <button type="submit" value="search"><i class="fas fa-search"></i></button>
                        </form>
                    </div>
                    <div class="col-md-3 sign-in">
                      <a href="login.php" class="sign-up-1">Đăng nhập</a>
                      <a href="" class="sign-up-2">Đăng ký</a>
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


                    <div class="col-md-6 navbar">
                        <a href="index.php">Trang chủ</a>
                        <a href="news.php">Khuyến mãi</a>
                        <a href="">Sản phẩm các loại</a>
                        <a href="">Liên hệ</a>
                    </div>


                    <div class="col-md-3 shopping-cart">
                        <button class="dropbtn"><span><i class="fas fa-shopping-cart"></i></span>GIỎ HÀNG</button>
                    </div>



                </div>
                
            </nav>

           