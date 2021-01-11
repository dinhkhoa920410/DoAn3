<?php require_once("../../resource/config.php"); ?>

<?php include("../../resource/templates/front/header.php") ?>


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
          <h3>NÔNG SẢN MỚI</h3>
          <div class="row">
            <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
                    <div class="MultiCarousel-inner">

                    <?php 
                        $query = query("SELECT * FROM products");
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
                            $rating = $row['product_rate'];
                    ?>
                        <div class="item">
                            <a href="item.php?id=<?php echo $row['product_id']?>">
                            <div class="pad15">
                                <!-- <p class="lead">Multi Item Carousel</p> -->
                                <img src="images/<?php echo $productIMG ?>" alt="">
                                <p class="p-name"><?php echo $productName ?></p>
                                <p><?php echo $originalPrice ?></p>
                                <p><?php echo $productPrice ?></p>
                                <p><?php echo $saleRate ?></p>
                            </div>
                            </a>
                        </div>

                        <?php endwhile ?>

                        <!-- <div class="item">
                            <div class="pad15">
                                <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>

                        <div class="item">
                            <div class="pad15">
                                <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div>

                        <div class="item">
                            <div class="pad15">
                              <img src="images/banana.jpg" alt="">
                                <p>₹ 1</p>
                                <p>₹ 6000</p>
                                <p>50% off</p>
                            </div>
                        </div> -->

                    </div>
                    <button class="btn btn-primary leftLst"><</button>
                    <button class="btn btn-primary rightLst">></button>
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
            <div class="col-md-3">
              <h3>KHUYẾN MÃI</h3>
              <img src="images/banner-3.jpg" alt="">
            </div>
            <div class="col-md-9">
              <div class="row">
                <h3>NÔNG SẢN BÁN CHẠY</h3>
                <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
                        <div class="MultiCarousel-inner">
                            <div class="item">
                                <div class="pad15">
                                    <!-- <p class="lead">Multi Item Carousel</p> -->
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                        </div>
                        <button class="btn btn-primary leftLst"><</button>
                        <button class="btn btn-primary rightLst">></button>
                </div>
              </div>
              <div class="row">
                <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
                        <div class="MultiCarousel-inner">
                            <div class="item">
                                <div class="pad15">
                                    <!-- <p class="lead">Multi Item Carousel</p> -->
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                            <div class="item">
                                <div class="pad15">
                                  <img src="images/banana.jpg" alt="">
                                    <p>₹ 1</p>
                                    <p>₹ 6000</p>
                                    <p>50% off</p>
                                </div>
                            </div>
    
                        </div>
                        <button class="btn btn-primary leftLst"><</button>
                        <button class="btn btn-primary rightLst">></button>
                </div>
              </div>
            </div>
          </div>
            
        </div>


      </div>
    </div>


<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>