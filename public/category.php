<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="container">
        <!-- Side Area -->
        <div class="side-area">
            <ul><h2>DANH MỤC</h2>
                <?php
                    $queryString = "SELECT * FROM categories";
                    $query = query($queryString);
                    while($row = fetch_array($query)) 
                    {
                        $categoryID = $row['cat_id'];
                        $categoryName = $row['cat_title'];
                ?>
                    <li><a href="category.php?<?php echo update_params('cat',$categoryID) ?>"><?php echo $categoryName ?></a></li>
                <?php } ?>
            </ul>
            <ul><h4>Loại nông sản</h4>
                <li>
                    <label><input type="radio" id="all-products" name="filter" value="allProducts" checked> Tất cả</label>
                </li>
                <li>
                   <label><input type="radio" id="new-products" name="filter" value="newProducts"> Nông sản mới</label>
                </li>
                <li>
                    <label><input type="radio" id="hot-products" name="filter" value="hotProducts"> Nông sản bán chạy</label>
                </li>
                <li>
                    <label><input type="radio" id="sale-products" name="filter" value="saleProducts"> Nông sản giảm giá sâu</label>
                </li>
            </ul>
        </div>

        <!-- Main Area -->
        <div class="main-area">
            <div class="directory">abc</div>
            <div class="products-list">
            <?php
                $currentPage = escape_string($_GET['page']);
                $numberOfItemPerPage = 10;
                $showProductFrom = ($currentPage-1)*$numberOfItemPerPage;
                $filterCatID = escape_string($_GET['cat']);
                // $filter = escape_string($_GET['filter']);
                $queryString = "SELECT * FROM products WHERE product_category_id = $filterCatID limit $showProductFrom, $numberOfItemPerPage";
                $query = query($queryString);
                while($row = fetch_array($query)) 
                {
                    $productID = $row['product_id'];
                    $isNew = $row['is_product_new'];
                    $isSale = $row['is_product_sale'];
                    $saleRate = 100 - $row['product_current_price']/$row['product_original_price']*100;
                    $productName = $row['product_title'];
                    $productPrice = $row['product_current_price'];
                    $originalPrice = $row['product_original_price'];
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
                        <img src="images/banana.jpg">
                        <div class="hide-on-hover">
                            <p class="product-name"><?php echo $productName ?></p>
                            <p class="product-price"><span class="current-price"><?php echo $productPrice ?></span> <span class="original-price"><?php echo $originalPrice ?></span> vnd/kg</p>
                            <p class="star-rate"><span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </p>
                        </div>
                    </a>
                </div>
            <?php
                }
            ?>
            </div>
            <div class="pages"></div>
        </div>
        <div class="clear-both"></div>
</div>
<!-- /.container -->

<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>