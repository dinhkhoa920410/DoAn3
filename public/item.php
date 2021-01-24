<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php include(TEMPLATE_FRONT . DS . "main-banner.php") ?>

<!-- Page Content -->
<!-- <div class="container"> -->

    <!-- Side Navigation -->

    <?php 
        $query = query("SELECT * FROM product_info WHERE product_id = " . escape_string($_GET['id']));
        confirm($query);
        $row = fetch_array($query);
        $productID = $row['product_id'];
        $isNew = $row['is_product_new'];
        $isSale = $row['is_product_sale'];
        $saleRate = round(100 - $row['product_current_price']/$row['product_original_price']*100);
        $productName = $row['product_title'];
        $productPrice = $row['product_current_price'];
        $originalPrice = $row['product_original_price'];
        $productIMG = $row['product_image'];
        $rating = $row['product_star'];
        $shortDesc = $row['short_desc'];
        $productDescription = $row['product_description'];
        $productRemain = $row['product_remain'];
        $unit = $row['product_price_unit'];

    ?>

<div class="row">
        <div class="col-md-3">
            <div class="img-container img-responsive">
                <div class="item-header">
                <div class="is-new" <?php if($isNew){?>style="visibility:visible; font-size:18px; font-weight:500;"<?php }?>>
                                    MỚI
                                </div>
                                <div class="sale-rate" <?php if($isSale){?>style="visibility:visible; font-size:18px; font-weight:600;"<?php }?>>
                                    -<?php echo $saleRate ?>%
                                </div>
                    </div>
                    <img class="img-responsive" src="images/<?php echo $row['product_image']; ?>" alt="">
            </div>
        </div>

    <div class="col-md-6">
        <div class="thumbnail" style="border: none;">


            <div class="caption-full" style="padding: 24px;">
                    <h3 style="margin-top: 0; margin-bottom: 0;"><?php echo $row['product_title']; ?></h3>
    

                <div class="ratings" style="padding-left: 0;">
                    <h3>
                        <span class="rate">
                            <i class="star1 <?php if($rating>=1){?>active<?php }?>">★</i>
                            <i class="star2 <?php if($rating>=2){?>active<?php }?>">★</i>
                            <i class="star3 <?php if($rating>=3){?>active<?php }?>">★</i>
                            <i class="star4 <?php if($rating>=4){?>active<?php }?>">★</i>
                            <i class="star5 <?php if($rating>=5){?>active<?php }?>">★</i>
                        </span>
                        <!-- <?php echo $rating;?> -->
                    </h3>
                </div>

                <span class="current-price"><?php echo $productPrice ?></span>
                <span class="original-price"><?php echo $originalPrice ?></span> &#8363;/<?php echo $unit ?></p>
                <p style="font-size: 16px;"><?php echo $shortDesc; ?></p>


                <form action="cart.php" method="POST">
                    <div class="form-group">
                        <div class="col-md-6" style="padding-left: 0; margin: 0px 0 24px 0;">
                        <input name="id" style="display: none" value=<?php echo $productID?>>
                        <h4>Số lượng:</h4>
                        <select name="number" style="width: 30%; height: 32px;">
                            <!-- <optgroup label=""> -->
                                
                                <?php if($productRemain <= 0){ ?>
                                    <option value=0>Hết hàng</option>
                                <?php } ?>
                                <?php for ($i = 1; $i <= $productRemain; $i++){?>
                                    <option value=<?php echo $i?>><?php echo $i?></option>
                                <?php }?>
                            <!-- </optgroup> -->
                        </select>
                        </div>

                        <div class="col-md-6" style="text-align: right; margin: 32px 0 24px 0;">
                        <input type="submit" class="btn" value="MUA NGAY" style="padding: 8px 24px 8px 24px; border-radius: 24px; border: none; background-color: #f9c937;
                        font-weight: 600; color: #554510; font-size: 16px;" <?php if($productRemain <= 0){?> disabled <?php } ?> >
                            
                        </div>
                    </div>
                </form>

            </div>

        </div>

    </div>
    <div class="col-md-3">
        <h3 style="color: #78a204; font-weight: 700;"><img src="images/logo_hinh.png" alt="" style="width:15%; margin-right: 8px;">NHÀ CUNG CẤP</h3>
        <?php 
        $query = query("SELECT * FROM supplier JOIN categories ON supplier.cat_id = categories.cat_id");
        confirm($query);

        $row = fetch_array($query);
        $supplierName = $row['supplier_name'];
        $supplierShort = $row['supplier_short_desc'];
        $supplierAddress = $row['supplier_address'];
        $supplierPhone = $row['supplier_phone'];

    ?>
        <h3 style="text-align: center; margin-top: 16px;"><?php echo $supplierName ?></h3>
        <p style="font-size: 16px; line-height: 1.5em; text-align: justify; margin-top: 16px;"><?php echo $supplierShort ?></p>
        <p style="font-weight: 600; line-height: 1.5em; font-size: 16px;">Địa chỉ: <span><?php echo $supplierAddress;?></span></p>
        <p style="font-weight: 600; line-height: 1.5em; font-size: 16px;">Số điện thoại: <span><?php echo $supplierPhone;?></span></p>
    </div>
</div>

<div class="row">
    <div class="col-md-9">
    <div role="tabpanel">

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
            data-toggle="tab">Đánh giá sản phẩm</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab"
            data-toggle="tab">Mô tả sản phẩm</a></li>
</ul>
<p id="test"></p>
<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="profile">
        <div class="col-md-6  scroll-vertical">
        <?php
            $numberCommentsPerPage = 5;
            $query = query("SELECT * FROM rating JOIN users ON rating.user_id = users.user_id WHERE product_id = " . escape_string($_GET['id']));
            while($row = fetch_array($query)):
                $userID = $row['user_id'];
                $star = $row['star'];
                $comment = $row['comment'];
                $dateTime = $row['datetime'];
                $userName = $row['username'];
        ?>
            
            <div class="row" style="margin-top: 16px;">
                <div class="col-md-12" style="margin-left=0; background-color: rgb(245, 245, 245);">
                    <h3><?php echo $userName ?></h3>
                    <span class="rate">
                        <i class="star1 <?php if($star>=1){?>active<?php }?>">★</i>
                        <i class="star2 <?php if($star>=2){?>active<?php }?>">★</i>
                        <i class="star3 <?php if($star>=3){?>active<?php }?>">★</i>
                        <i class="star4 <?php if($star>=4){?>active<?php }?>">★</i>
                        <i class="star5 <?php if($star>=5){?>active<?php }?>">★</i>
                    </span>
                    <!-- <?php echo $star ?> -->
                    <span class="pull-right"><?php echo $dateTime ?></span>
                    <p style="margin-top: 16px;"><?php echo $comment ?></p>
                </div>
            </div>
        <?php 
            endwhile;
        ?>
        </div>
        <div class="col-md-6">
            <div id="rating"></div>
            <h4><i style="color:#969696;">Vui lòng đăng nhập khi đánh giá sản phẩm</i></h4>
            <form action="product_rating.php?<?php echo remove_param("star");?>#rating" class="form-inline" method="POST">
            <div>
                    <?php
                        if(isset($_GET['star']))
                            $commentStar = escape_string($_GET['star']);
                    ?>
                    <span class="rate">
                        <a class="star1 <?php if($commentStar>=1){?>active<?php }?>" href="?<?php echo update_param("star",1)?>#rating">★</a>
                        <a class="star2 <?php if($commentStar>=2){?>active<?php }?>" href="?<?php echo update_param("star",2)?>#rating">★</a>
                        <a class="star3 <?php if($commentStar>=3){?>active<?php }?>" href="?<?php echo update_param("star",3)?>#rating">★</a>
                        <a class="star4 <?php if($commentStar>=4){?>active<?php }?>" href="?<?php echo update_param("star",4)?>#rating">★</a>
                        <a class="star5 <?php if($commentStar>=5){?>active<?php }?>" href="?<?php echo update_param("star",5)?>#rating">★</a>
                    </span>
                    <input type="text" style="display: none" name="commentstar" value="<?php echo $commentStar?>">
                </div>

                <!-- <div <?php if(!isset($_GET["star"])){?>style="display:none"<?php }?>> -->
                <br>
                    <div class="form-group">
                        <label for="">Tên</label>
                        <input type="text" class="form-control" name="userName" style="margin-left: 4px;">
                    </div>
                    <div class="form-group" style="margin-left: 24px;">
                        <label for="">Email</label>
                        <input type="test" class="form-control" name="userEmail" style="margin-left: 4px;">
                    </div>
                    <br><br>
                    <div class="form-group">
                        <label for="">Bình luận</label>
                        <textarea name="userComment" id="" cols="70" rows="10" class="form-control"></textarea>
                    </div>
                    <br><br>
                    <div class="form-group">
                        
                        <input type="submit" class="btn" value="NHẤN GỬI" style="padding: 8px 24px 8px 24px; border-radius: 24px; border: none; background-color: #f9c937;
                        font-weight: 600; color: #554510; font-size: 16px;">
                    </div>
                
            </form>
        </div>
    </div>
    <div role="tabpanel" class="tab-pane" id="home">
        <p></p>
        <p><?php echo $productDescription; ?></p>
    </div>  

    <div class="row">
              
    <h3 style="color: #78a204; font-weight: 700;"><img src="images/logo_hinh.png" alt="" style="width:5%; margin-right: 8px;">NÔNG SẢN TƯƠNG TỰ</h3>
                <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000" style="margin-top: 24px;">
                        <div class="MultiCarousel-inner">
                        <?php

                        $query = query("SELECT * FROM product_info WHERE is_product_sale = 1 HAVING product_current_price/product_original_price < 0.65 ");
                        confirm($query);

                        while($row = fetch_array($query)):
                            $productID = $row['product_id'];
                            $isNew = $row['is_product_new'];
                            $isSale = $row['is_product_sale'];
                            $saleRate = 100 - $row['product_current_price']/$row['product_original_price']*100;
                            $productName = $row['product_title'];
                            $productPrice = $row['product_current_price'];
                            $originalPrice = $row['product_original_price'];
                            $productIMG = $row['product_image'];
                            $rating = $row['product_star'] ? $row['product_star'] : 0;
                            $unit = $row['product_price_unit'];

                    ?>
                    <div class="item">
                          <div class="row">
                            <div class="col-md-6 item-right">
                              <div class="is-new" <?php if($isNew){?>style="visibility:visible"<?php }?>>
                                  <h5>MỚI</h5>
                              </div>
                            </div>
                            <div class="col-md-6 item-left">
                              <div class="sale-rate" <?php if($saleRate){?>style="visibility:visible"<?php }?>>
                                  <h4>-<?php echo number_format($saleRate) ?>%</h4> 
                              </div>
                            </div>
                          </div>
                            <a href="item.php?id=<?php echo $row['product_id']?>&star=0">
                            <div class="pad15">
                                <img src="images/<?php echo $productIMG ?>" alt="">
                                <p class="p-name"><?php echo $productName ?></p>
                                
                            </div>
                            </a>
                            <p class="product-price">
                                <span class="current-price"><?php echo $productPrice ?></span>
                                <span class="original-price"><?php echo $originalPrice ?></span> &#8363;/<?php echo $unit ?></p>
                                <p class="star-rate">
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

                        <?php endwhile ?>

                        </div>
                        <button class="btn btn-primary leftLst"><i class="fas fa-chevron-left"></i></button>
                    <button class="btn btn-primary rightLst"><i class="fas fa-chevron-right"></i></button>
                </div>
              </div>

</div>
</div>
    </div>


    <div class="col-md-3">
    <h3 style="color: #78a204; font-weight: 700;"><img src="images/logo_hinh.png" alt="" style="width:15%; margin-right: 8px;">NÔNG SẢN KHÁC</h3>


    </div>
</div>



<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>