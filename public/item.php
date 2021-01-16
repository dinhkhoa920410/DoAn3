<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="container">

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
    ?>


    <div class="col-md-9">

        <!--Row For Image and Short Description-->

        <div class="row">

            <div class="col-md-7">
                <div class="img-container img-responsive">
                    <div class="item-header">
                        <div class="is-new" <?php if($isNew){?>style="visibility:visible"<?php }?>>
                            MỚI
                        </div>
                        <div class="sale-rate" <?php if($isSale){?>style="visibility:visible"<?php }?>>
                            -<?php echo $saleRate ?>%
                        </div>
                    </div>
                    <img class="img-responsive" src="images/<?php echo $row['product_image']; ?>" alt="">
                </div>
            </div>

            <div class="col-md-5">

                <div class="thumbnail">


                    <div class="caption-full">
                        <h3><?php echo $row['product_title']; ?></h3>
                        <hr>
                        

                        <div class="ratings">
                            <h2>
                                <span class="rate">
                                    <i class="star1 <?php if($rating>=1){?>active<?php }?>">★</i>
                                    <i class="star2 <?php if($rating>=2){?>active<?php }?>">★</i>
                                    <i class="star3 <?php if($rating>=3){?>active<?php }?>">★</i>
                                    <i class="star4 <?php if($rating>=4){?>active<?php }?>">★</i>
                                    <i class="star5 <?php if($rating>=5){?>active<?php }?>">★</i>
                                </span>
                                <?php echo $rating;?>
                            </h2>
                        </div>

                        <span class="current-price"><?php echo $productPrice; ?></span>
                        <span class="original-price"><?php echo $originalPrice; ?></span>
                        <span> VND</span>
                        <p><?php echo $shortDesc; ?></p>


                        <form action="cart.php" method="POST">
                            <div class="form-group">
                                <input name="id" style="display: none" value=<?php echo $productID?>>
                                <select name="number">
                                    <optgroup label="Số lượng">
                                        
                                        <?php if($productRemain <= 0){ ?>
                                            <option value=0>Hết hàng</option>
                                        <?php } ?>
                                        <?php for ($i = 1; $i <= $productRemain; $i++){?>
                                            <option value=<?php echo $i?>><?php echo $i?></option>
                                        <?php }?>
                                    </optgroup>
                                </select>
                                <input type="submit" class="btn btn-primary" value="ADDTOCART"
                                    <?php if($productRemain <= 0){?> disabled <?php } ?>>
                            </div>
                        </form>

                    </div>

                </div>

            </div>


        </div>
        <!--Row For Image and Short Description-->


        <hr>


        <!--Row for Tab Panel-->

        <div class="row">

            <div role="tabpanel">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                            data-toggle="tab">Reviews</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab"
                            data-toggle="tab">Description</a></li>
                </ul>
                <p id="test"></p>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="profile">
                        <div class="col-md-6  scroll-vertical">
                        <?php
                            $numberCommentsPerPage = 5;
                            $query = query("SELECT * FROM rating WHERE product_id = " . escape_string($_GET['id']));
                            while($row = fetch_array($query)):
                                $userID = $row['user_id'];
                                $star = $row['star'];
                                $comment = $row['comment'];
                                $dateTime = $row['datetime']
                        ?>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <h3><?php echo $userID ?></h3>
                                    <span class="rate">
                                        <i class="star1 <?php if($star>=1){?>active<?php }?>">★</i>
                                        <i class="star2 <?php if($star>=2){?>active<?php }?>">★</i>
                                        <i class="star3 <?php if($star>=3){?>active<?php }?>">★</i>
                                        <i class="star4 <?php if($star>=4){?>active<?php }?>">★</i>
                                        <i class="star5 <?php if($star>=5){?>active<?php }?>">★</i>
                                    </span>
                                    <?php echo $star ?>
                                    <span class="pull-right"><?php echo $dateTime ?></span>
                                    <p><?php echo $comment ?></p>
                                </div>
                            </div>
                        <?php 
                            endwhile;
                        ?>
                        </div>
                        <div class="col-md-6" >
                            <div id="rating"></div>
                            <h3>Rate the product</h3>
                            <form action="product_rating.php?<?php echo remove_param("star");?>#rating" class="form-inline" method="post">

                                <div>
                                    <?php
                                        if(isset($_GET["star"]))
                                            $commentStar = escape_string($_GET["star"]);
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
                                <div <?php if(!isset($_GET["star"])){?>style="display:none"<?php }?>>
                                    <br>
                                    <div class="form-group">
                                        <label for="">Name</label>
                                        <input type="text" class="form-control" name="userName">
                                    </div>
                                    <div class="form-group">
                                        <label for="">Email</label>
                                        <input type="test" class="form-control" name="userEmail">
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <textarea name="userComment" id="" cols="60" rows="10" class="form-control"></textarea>
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary" value="SUBMIT">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="home">
                        <p></p>
                        <p><?php echo $productDescription; ?></p>
                    </div>            
                </div>
            </div>
        </div>
        <!--Row for Tab Panel-->




    </div>
    <div class="col-md-9">

    </div>
</div>
<!-- /.container -->

<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>