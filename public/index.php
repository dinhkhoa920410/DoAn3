<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php include(TEMPLATE_FRONT . DS . "main-banner.php") ?>

<?php
    if($isLoggedin){
        debug_to_console("KHOA");
    }
?>

<div class="sub_info">
          <div class="row">
              <div class="col-md-3 sub_main">
                <div class="row">
                  <div class="col-md-2 _sub-icon">
                    <img src="images/an_toan_icon.png" alt="">
                  </div>
                  <div class="col-md-10">
                    <h5>An toàn sức khỏe</h5>
                    <p>An toàn thực phẩm là yếu tố quan trọng</p>
                  </div>
                </div>
              </div> 

              <div class="col-md-3 sub_main">
                  <div class="row">
                    <div class="col-md-2 _sub-icon">
                      <img src="images/khong_bao_quan.png" alt="">
                    </div>
                    <div class="col-md-10">
                      <h5>Không phẩm màu, chất bảo quản</h5>
                      <p>An toàn thực phẩm là yếu tố quan trọng</p>
                    </div>
                  </div>
              </div>
          
              <div class="col-md-3 sub_main">
                <div class="row">
                  <div class="col-md-2 _sub-icon-1">
                    <img src="images/mien_phi_van_chuyen.png" alt="">
                  </div>
                  <div class="col-md-10">
                    <h5>Giao hàng toàn quốc</h5>
                    <p>Nhận giao hàng nhanh chóng, tiện lợi</p>
                  </div>
                </div>
            </div>
          
            <div class="col-md-3">
              <div class="row">
                <div class="col-md-2 _sub-icon">
                  <img src="images/ho_tro_tu_van.png" alt="">
                </div>
                <div class="col-md-10">
                  <h5>Hỗ trợ tư vấn 24/24</h5>
                  <p>Liên hệ: 0901 234 567 (Anh B)</p>
                </div>
              </div>
          </div>

          </div>
        </div>

        <div class="product-slider">
          <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 subtitle">
              <img src="images/logo_hinh.png" alt="">
              <h3>NÔNG SẢN MỚI</h3>
            </div>
            <div class="col-md-4"></div>
          </div>
          <!-- <div class="subtitle">
            <img src="images/logo_hinh.png" alt="">
            <h3>NÔNG SẢN MỚI</h3>
          </div> -->
          
          <div class="row">
            <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
                    <div class="MultiCarousel-inner">

                    <?php 
                        $query = query("SELECT * FROM products WHERE is_product_new = 1");
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
                              <div class="sale-rate" <?php if($isSale){?>style="visibility:visible"<?php }?>>
                                  <h4>-<?php echo number_format($saleRate) ?>%</h4> 
                              </div>
                            </div>
                          </div>
                            <a href="item.php?id=<?php echo $row['product_id']?>">
                            <div class="pad15">
                                <img src="images/<?php echo $productIMG ?>" alt="">
                                <p class="p-name"><?php echo $productName ?></p>
                                
                            </div>
                            </a>
                            <p class="product-price">
                                <span class="current-price"><?php echo $productPrice ?></span>
                                <span class="original-price"><?php echo $originalPrice ?></span> &#8363;/<?php echo $unit ?></p>
                                <p class="star-rate"><span class="star1">☆</span><span class="star2">☆</span><span class="star3">☆</span><span class="star4">☆</span><span class="star5">☆</span></p>
                        </div>

                        <?php endwhile ?>

                    </div>
                    <button class="btn btn-primary leftLst"><i class="fas fa-chevron-left"></i></button>
                    <button class="btn btn-primary rightLst"><i class="fas fa-chevron-right"></i></button>
            </div>
          </div>
        </div>


        
        <div class="ads">
          <div class="row">
            <div class="col-md-6">
              <img src="images/banner-1.jpg" alt="">
            </div>
            <div class="col-md-6">
              <img src="images/banner-2.jpg" alt="">
            </div>
          </div>
        </div>

        <div class="product-sale">
          <div class="row">
            <div class="col-md-2">
              <!-- <h3>KHUYẾN MÃI</h3> -->
              <img src="images/banner-3.jpg" alt="" style="margin-bottom: 24px">
              <img src="images/banner-3.jpg" alt="">
            </div>
            <div class="col-md-10">
              <div class="row">
              <img src="images/logo_hinh.png" alt="" style="width: 48px;">
                <h3>NÔNG SẢN GIẢM SÂU</h3>
                <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000" style="margin-top: 24px;">
                        <div class="MultiCarousel-inner">
                        <?php

                        $query = query("SELECT * FROM products WHERE is_product_sale = 1 HAVING product_current_price/product_original_price < 0.65 ");
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
                            <a href="item.php?id=<?php echo $row['product_id']?>">
                            <div class="pad15">
                                <img src="images/<?php echo $productIMG ?>" alt="">
                                <p class="p-name"><?php echo $productName ?></p>
                                
                            </div>
                            </a>
                            <p class="product-price">
                                <span class="current-price"><?php echo $productPrice ?></span>
                                <span class="original-price"><?php echo $originalPrice ?></span> &#8363;/<?php echo $unit ?></p>
                                <p class="star-rate"><span class="star1">☆</span><span class="star2">☆</span><span class="star3">☆</span><span class="star4">☆</span><span class="star5">☆</span></p>
                        </div>

                        <?php endwhile ?>

                        </div>
                        <button class="btn btn-primary leftLst"><i class="fas fa-chevron-left"></i></button>
                    <button class="btn btn-primary rightLst"><i class="fas fa-chevron-right"></i></button>
                </div>
              </div>


              <div class="row" style="margin-top: 24px;">
              <img src="images/logo_hinh.png" alt="" style="width: 48px;">
                <h3>NÔNG SẢN BÁN CHẠY</h3>
                <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000" style="margin-top: 24px;">
                        <div class="MultiCarousel-inner">
                        <?php 
                        $query = query("SELECT * FROM products JOIN rating ON products.product_id = rating.product_id WHERE rating.star >= 4");
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
                              <div class="sale-rate" <?php if($isSale){?>style="visibility:visible"<?php }?>>
                                  <h4>-<?php echo number_format($saleRate) ?>%</h4> 
                              </div>
                            </div>
                          </div>
                            <a href="item.php?id=<?php echo $row['product_id']?>">
                            <div class="pad15">
                                <img src="images/<?php echo $productIMG ?>" alt="">
                                <p class="p-name"><?php echo $productName ?></p>
                                
                            </div>
                            </a>
                            <p class="product-price">
                                <span class="current-price"><?php echo $productPrice ?></span>
                                <span class="original-price"><?php echo $originalPrice ?></span> &#8363;/<?php echo $unit ?></p>
                                <p class="star-rate"><span class="star1">☆</span><span class="star2">☆</span><span class="star3">☆</span><span class="star4">☆</span><span class="star5">☆</span></p>
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


        <div style="background-color: #f9c937; margin-top: 64px;">
            <div class="row">
                <div class="col-md-6" style="padding-left:0;">
                    <h4>ĐĂNG KÝ NHẬN BẢN TIN TỪ ĐẶC SẢN VÙNG MIỀN</h4>
                    <p>Khi có thông tin khuyến mãi hệ thống sẽ gửi danh sách nông sản được khuyến mãi đến bạn qua mail này</p>
                </div>
                <div class="col-md-6 email-subribe">
                    <form method="GET" action="">
                            <!-- <label class="screen-reader-text" for="product-search-field">Tìm kiếm:</label> -->
                            <input type="search" id="product-search-field" class="search-field" placeholder="Nhập sản phẩm...">
                            <button type="submit" value="search"><i class="fas fa-search"></i></button>
                    </form>
                </div>
            </div>
        </div>

      </div>
    </div>


<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>