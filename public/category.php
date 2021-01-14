<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="container-horizontal">
        <!-- Side Area -->
        <div class="side-area">
            <ul><h2>DANH MỤC</h2>
                <?php
                    $queryString = "SELECT * FROM categories";
                    $query = query($queryString);
                    
                    while($row = fetch_array($query)):
                        $categoryID = $row['cat_id'];
                        $categoryName = $row['cat_title'];
                ?>
                    <li><a href="?<?php echo update_param('cat',$categoryID) ?>"><?php echo $categoryName ?></a></li>
                <?php endwhile; ?>
            </ul>

            <?php 
                $currentFilter = $currentPage = escape_string($_GET['filter']);;
            ?>
            <ul class="filters"><h4>Bộ lọc</h4>
            
                <li>
                    <a href="?<?php echo update_param('filter', 0)?>"><div class="filter-element"><input type="radio" name="filter" <?php if($currentFilter==0){?> checked<?php }?>> Tất cả</div></a>
                </li>
                <li>
                    <a href="?<?php echo update_param('filter', 1)?>"><div class="filter-element"><input type="radio" name="filter" <?php if($currentFilter==1){?> checked<?php }?>> Mới</div></a>
                </li>
                <li>
                    <a href="?<?php echo update_param('filter', 2)?>"><div class="filter-element"><input type="radio" name="filter" <?php if($currentFilter==2){?> checked<?php }?>> Bán chạy</div></a>
                </li>
                <li>
                    <a href="?<?php echo update_param('filter', 3)?>"><div class="filter-element"><input type="radio" name="filter" <?php if($currentFilter==3){?> checked<?php }?>> Khuyến mãi</div></a>
                </li>
            </ul>
        </div>

        <!-- Main Area -->
        <div class="main-area">
            <div class="directory">abc</div>
            <div class="products-list">
            <?php
                $numberOfItemPerPage = 10;
                $currentPage = escape_string($_GET['page']);
                
                
                $showProductFrom = ($currentPage-1)*$numberOfItemPerPage;
                
                if(!isset($_GET['search'])){
                    $filterCatID = escape_string($_GET['cat']);
                    $queryStringAll = "SELECT * FROM products WHERE product_category_id = $filterCatID";
                }
                else{
                    $txtSearch = escape_string($_GET['search']);
                    $queryStringAll = "SELECT * FROM products WHERE product_title LIKE '%$txtSearch%'";
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
                $queryStringShowing = $queryStringAll." limit $showProductFrom, $numberOfItemPerPage";
                $query = query($queryStringShowing);
                
                while($row = fetch_array($query)):
                    $productID = $row['product_id'];
                    $isNew = $row['is_product_new'];
                    $isSale = $row['is_product_sale'];
                    $saleRate = 100 - $row['product_current_price']/$row['product_original_price']*100;
                    $productName = $row['product_title'];
                    $productPrice = $row['product_current_price'];
                    $originalPrice = $row['product_original_price'];
                    $productIMG = $row['product_image'];
                    $rating = $row['product_rate'];
            ?>
                <div class="items">
                    <a href="item.php?id=<?php echo $row['product_id'] ?>">
                        <div class="item-header">
                            <div class="is-new" <?php if($isNew){?>style="visibility:visible"<?php }?>>
                                <h5>MỚI</h5>
                            </div>
                            <div class="sale-rate" <?php if($isSale){?>style="visibility:visible"<?php }?>>
                                -<?php echo $saleRate ?>%
                            </div>
                        </div>
                        <img src="images/<?php echo $productIMG ?>">
                        <div class="hide-on-hover">
                            <p class="product-name"><?php echo $productName ?></p>
                            <p class="product-price">
                                <span class="current-price"><?php echo $productPrice ?></span>
                                <span class="original-price"><?php echo $originalPrice ?></span> vnd/kg</p>
                            <p class="star-rate"><span class="star1">☆</span><span class="star2">☆</span><span class="star3">☆</span><span class="star4">☆</span><span class="star5">☆</span></p>
                        </div>
                    </a>
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