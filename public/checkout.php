<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<?php include(TEMPLATE_FRONT . DS . "main-banner.php") ?>

<?php
    // unset($_SESSION['cart']);
    // unset($_SESSION['cart_count']);
    if(!$isLoggedin){
        redirect("login.php");
    }
?>
    <!-- Page Content -->
    <div class="container">

<div class="row">
      <!-- <h4 class = "text-center bg-warning"><?php display_message() ?></h4> -->
      <h3 style="color: #78a204; font-weight: 700;"><img src="images/logo_hinh.png" alt="" style="width:3%; margin-right: 8px;">THÔNG TIN GIỎ HÀNG</h3>

<form action="cart.php" method="post">
    <table class="table table-striped">
        <thead style="background-color: #f5dfc5;">
          <tr>
           <th>Tên sản phẩm</th>
           <th style="text-align: right; vertical-align: middle;">Giá tiền</th>
           <th style="text-align: center; vertical-align: middle;">Đơn vị tính</th>
           <th></th>
           <th style="text-align: center; width: 6%; vertical-align: middle;">Số lượng</th>
           <th></th>
           <th style="text-align: center; vertical-align: middle;">Tổng giá tiền</th>
           <th></th>
          </tr>
        </thead>
        <tbody>
            <?php
                $totalMoney = 0;
                $countTotal = 0;
                $arrCartProduct = isset($_SESSION["cart"]) ? $_SESSION["cart"] : [];
                $arrCartCount = isset($_SESSION["cart_count"]) ? $_SESSION["cart_count"] : [];

                for($i=0; $i<count($arrCartProduct); $i++){
                    debug_to_console($arrCartProduct[0]);
                    $id = $arrCartProduct[$i];
                    $number = $arrCartCount[$i];
                    
                    $query = query("SELECT product_title, product_current_price, product_remain, product_price_unit FROM product_info WHERE product_id = $id");
                    $row = fetch_array($query);
                    
                    $name = $row['product_title'];
                    $price = $row['product_current_price'];
                    $productRemain = $row['product_remain'];
                    $unit = $row['product_price_unit'];
                    $totalMoney += $price * $number;
                    $countTotal += $number;
            ?>
            <tr id="pid_<?php echo $id ?>">
                <td style="font-size: 16px; vertical-align: middle;"><?php echo $name ?></td>
                <td style="text-align: right; color: rgb(169, 83, 111); font-size: 18px; font-weight: 600; vertical-align: middle;"><?php echo $price ?>  &#8363;</td>
                <td style="text-align: center; vertical-align: middle;"><?php echo $unit ?></td>
                
                <td style="text-align: right;">
                <button name="remove" value="<?php echo $i?>" style="border: none; background-color: #cccccc; padding: 8px 12px 8px 12px; border-radius: 3px; margin-right: 8px;"><i class="fas fa-minus"></i></button>
                </td>
                <td style="text-align: center; vertical-align: middle;">
                <?php echo $number ?>
                </td>
                <td style="text-align: left;">
                <?php  
                    if($number > $productRemain - 1) {
                ?>
                        <button name="add" style="border: none; background-color: none; padding: 8px 12px 8px 12px; border-radius: 3px; margin-left: 8px; text-align: right;" value="<?php echo $i?>" disabled ><i class="fas fa-plus" style="color: #969696;"></i></button>
                <?php        
                    } else {
                ?>
                        <button name="add" style="border: none; background-color: #cccccc; padding: 8px 12px 8px 12px; border-radius: 3px; margin-left: 8px; text-align: right;" value="<?php echo $i?>"><i class="fas fa-plus"></i></button>
                <?php
                    }
                
                ?>
                </td>
                <td style="text-align: center; vertical-align: middle;"><?php echo ($price * $number) ?></td>
                
                
                
                <td>
                    <button name="delete" style="border: none; background-color: #da282d; padding: 8px 12px 8px 12px; border-radius: 3px; margin-left: 8px;" value="<?php echo $i?>"><i class="far fa-trash-alt" style="color: #fff;"></i></button>
                </td>
            </tr>
            <?php
                }
            ?>
        </tbody>
    </table>
</form>



<!--  ***********CART TOTALS*************-->
            
<div class="col-xs-4 pull-right ">
<h3>TỔNG THÀNH TIỀN</h3>

<table class="table table-bordered" cellspacing="0">

<tr class="cart-subtotal">
<th style="vertical-align: middle;">Tổng số lượng sản phẩm</th>
<td style="text-align: right;"><span class="amount"><?php echo $countTotal ?></span></td>
</tr>
<tr class="shipping">
<th style="vertical-align: middle;">Phí giao hàng</th>
<td style="text-align: right;">Miễn phí</td>
</tr>

<tr class="order-total">
<th style="vertical-align: middle;">Tổng giá tiền</th>
<td style="text-align: right; font-size: 24px; font-weight: 600; vertical-align: middle; background-color: #f5dfc5;"><strong><span class="amount" style="color: rgb(169, 83, 111);"><?php echo $totalMoney ?> &#8363;</span></strong> </td>
</tr>


</tbody>

</table>
<div style="text-align: right;">
        <input type="submit" class="btn" value="THANH TOÁN" style="padding: 8px 24px 8px 24px; border-radius: 24px; border: none; background-color: #f9c937;
        font-weight: 600; color: #554510; font-size: 16px; margin-top: 24px;" <?php if($totalMoney = 0){?> disabled <?php } ?>>
</div>

</div><!-- CART TOTALS-->


 </div><!--Main Content-->

            
    </div>

    <?php include(TEMPLATE_FRONT . DS . "footer.php") ?>