<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php include(TEMPLATE_FRONT . DS . "main-banner.php") ?>

<!-- Page Content -->
<div class="container-horizontal">
        <!-- Side Area -->
        <div class="side-area">
            <ul><h3 style="font-weight: 700; color: #78a204;"> <img src="images/logo_hinh.png" alt="" style="width:15%;"> DANH MỤC</h3>
                <?php
                    $queryString = "SELECT product_category_id, cat_title, cat_id, COUNT(product_id) AS total FROM products JOIN categories 
                    ON categories.cat_id = products.product_category_id GROUP BY product_category_id ";
                    $query = query($queryString);
                    
                    while($row = fetch_array($query)):
                        $productCatID = $row['product_category_id'];
                        $total = $row['total'];
                        $categoryName = $row['cat_title'];
                        $categoryID = $row['cat_id']
                ?>
                    <li class="danh_muc" style="padding-bottom: 16px;"><a href="?cat=<?php echo $categoryID ?>"><?php echo $categoryName ?></a><span style="margin-left: 8px;">(<?php echo $total?>)</span></li>
                <?php endwhile; ?>
            </ul>

            <?php 
                $currentFilter = isset($_GET['filter']) ? escape_string($_GET['filter']) : 0;
            ?>
            <ul class="filters"><h3 style="font-weight: 700; color: #78a204;"><img src="images/logo_hinh.png" alt="" style="width:15%; margin-right: 8px;">BỘ LỌC</h3>
            
                <li style="padding-left: 16px;">
                    <a href="?<?php echo update_param('filter', 0)?>"><div class="filter-element" style="padding: 0;"><input type="radio" name="filter" <?php if($currentFilter==0){?> checked<?php }?>> Tất cả</div></a>
                </li>
                <li>
                    <a href="?<?php echo update_param('filter', 1)?>"><div class="filter-element"><input type="radio" name="filter" <?php if($currentFilter==1){?> checked<?php }?>> Mới</div></a>
                </li>
                <li>
                    <a href="?<?php echo update_param('filter', 2)?>"><div class="filter-element"><input type="radio" name="filter" <?php if($currentFilter==2){?> checked<?php }?>> Bán chạy</div></a>
                </li>
                <li style="border-bottom: none;">
                    <a href="?<?php echo update_param('filter', 3)?>"><div class="filter-element" style="padding-left:16px;"><input type="radio" name="filter" <?php if($currentFilter==3){?> checked<?php }?>> Khuyến mãi</div></a>
                </li>
            </ul>
        </div>

        <!-- Main Area -->
        <div class="main-area">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page" style="font-size: 16px;">Danh mục nông sản</li>
                </ol>
            </nav>
            <div class="products-list">
            <?php
                $numberOfItemPerPage = 10;
                $currentPage = isset($_GET['page']) ? escape_string($_GET['page']) : 1;
                
                
                $showProductFrom = ($currentPage-1)*$numberOfItemPerPage;
                
                if(!isset($_GET['search'])){
                    $filterCatID = escape_string($_GET['cat']);
                    $queryStringAll = "SELECT * FROM product_info WHERE product_category_id = $filterCatID";
                }
                else{
                    $txtSearch = escape_string($_GET['search']);
                    $queryStringAll = "SELECT * FROM product_info WHERE product_title LIKE '%$txtSearch%'";
                }

                switch($currentFilter){
                    case(1):
                        $queryStringAll = $queryStringAll." AND is_product_new = true";break;
                    case(2):
                        $queryStringAll = $queryStringAll." AND is_product_new = true";break;
                    case(3):
                        $queryStringAll = $queryStringAll." AND is_product_sale = true";break;
                }
                $maxPage = getMaxPage($queryStringAll, $numberOfItemPerPage);
                $queryStringShowing = $queryStringAll." LIMIT $showProductFrom, $numberOfItemPerPage";
                $query = query($queryStringShowing);
                
                while($row = fetch_array($query)):
                    $productID = $row['product_id'];
                    $isNew = $row['is_product_new'];
                    $isSale = $row['is_product_sale'];
                    $saleRate = round(100 - $row['product_current_price']/$row['product_original_price']*100);
                    $productName = $row['product_title'];
                    $productPrice = $row['product_current_price'];
                    $originalPrice = $row['product_original_price'];
                    $productIMG = $row['product_image'];
                    $rating = $row['product_star'] ? $row['product_star'] : 0;
                    $unit = $row['product_price_unit']
            ?>
                <div class="items">
                        

                        <a href="item.php?id=<?php echo $row['product_id']?>&cat=<?php echo $row['product_category_id']?>&star=0">
                        <div class="image-container">
                            <div class="item-header">
                                <div class="is-new" <?php if($isNew){?>style="visibility:visible; font-size:18px; font-weight:500;"<?php }?>>
                                    MỚI
                                </div>
                                <div class="sale-rate" <?php if($isSale){?>style="visibility:visible; font-size:18px; font-weight:600;"<?php }?>>
                                    -<?php echo $saleRate ?>%
                                </div>
                            </div>
                            <img src="images/<?php echo $productIMG ?>">
                            <p class="product-name"><?php echo $productName ?></p>
                        </div>
                        </a>
                        <div class="hide-on-hover" style="margin: 0;">
                            
                            <p class="product-price" style="padding-left: 0;">
                                <span class="current-price"><?php echo $productPrice ?></span>
                                <span class="original-price"><?php if($isSale) echo $originalPrice; ?></span>&#8363;/<?php echo $unit?></p>
                            <p class="star-rate" style="padding-left: 0;">
                                <span class="rate">
                                    <i class="star1 <?php if($rating>=1){?>active<?php }?>">★</i>
                                    <i class="star2 <?php if($rating>=2){?>active<?php }?>">★</i>
                                    <i class="star3 <?php if($rating>=3){?>active<?php }?>">★</i>
                                    <i class="star4 <?php if($rating>=4){?>active<?php }?>">★</i>
                                    <i class="star5 <?php if($rating>=5){?>active<?php }?>">★</i>
                                </span>
                                <!-- <?php echo $rating;?> -->
                            </p>
                        </div>
                </div>

                
            <?php
                endwhile;
            ?>
            </div>
            <div class="pages">
                <a href="?<?php echo update_param('page',1) ?>">
                    <div class="page-buttons">
                        <div class="overlay">&lt;&lt;</div>
                    </div>
                </a>
                <a href="?<?php echo update_param('page',($currentPage>1)?$currentPage-1:1) ?>">
                    <div class="page-buttons">
                        <div class="overlay">&lt;</div>
                    </div>
                </a>
                <a href="?<?php echo update_param('page',$currentPage-2) ?>" <?php if($currentPage<=2){?>style="display:none"<?php }?>>
                    <div class="page-buttons">
                        <div class="overlay"><?php echo $currentPage-2 ?></div>
                    </div>
                </a>
                <a href="?<?php echo update_param('page',$currentPage-1) ?>" <?php if($currentPage<=1){?>style="display:none"<?php }?>>
                    <div class="page-buttons">
                        <div class="overlay"><?php echo $currentPage-1 ?></div>
                    </div>
                </a>
                <a href="">
                    <div class="page-buttons current-page-buttons">
                        <div class="overlay"><?php echo $currentPage ?></div>
                    </div>
                </a>
                <a href="?<?php echo update_param('page',$currentPage+1) ?>" <?php if($currentPage+1>$maxPage){?>style="display:none"<?php }?>>
                    <div class="page-buttons">
                        <div class="overlay"><?php echo $currentPage+1 ?></div>
                    </div>
                </a>
                <a href="?<?php echo update_param('page',$currentPage+2) ?>" <?php if($currentPage+2>$maxPage){?>style="display:none"<?php }?>><div class="page-buttons"><div class="overlay"><?php echo $currentPage+2 ?></div></div></a>
                <a href="?<?php echo update_param('page',($currentPage<$maxPage)?$currentPage+1:$maxPage) ?>"><div class="page-buttons"><div class="overlay">&gt;</div></div></a>
                <a href="?<?php echo update_param('page',$maxPage) ?>"><div class="page-buttons"><div class="overlay">&gt;&gt;</div></div></a>
            </div>
        </div>
</div>
<!-- /.container -->

<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>