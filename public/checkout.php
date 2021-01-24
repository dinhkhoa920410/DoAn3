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
      <h1>Checkout</h1>

<form action="cart.php" method="post">
    <table class="table table-striped">
        <thead>
          <tr>
           <th>Product</th>
           <th>Price</th>
           <th>Quantity</th>
     
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
                    
                    $query = query("SELECT product_title, product_current_price FROM product_info WHERE product_id = $id");
                    $row = fetch_array($query);
                    
                    $name = $row['product_title'];
                    $price = $row['product_current_price'];
                    $totalMoney += $price * $number;
                    $countTotal += $number;
            ?>
            <tr id="pid_<?php echo $id ?>">
                <td><?php echo $name ?></td>
                <td><?php echo $price ?></td>
                <td><?php echo $number ?></td>
                <td>
                    <button name="delete" value="<?php echo $i?>">Delete</button>
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
<h2>Cart Totals</h2>

<table class="table table-bordered" cellspacing="0">

<tr class="cart-subtotal">
<th>Items:</th>
<td><span class="amount"><?php echo $countTotal ?></span></td>
</tr>
<tr class="shipping">
<th>Shipping and Handling</th>
<td>Free Shipping</td>
</tr>

<tr class="order-total">
<th>Order Total</th>
<td><strong><span class="amount"><?php echo $totalMoney ?></span></strong> </td>
</tr>


</tbody>

</table>

</div><!-- CART TOTALS-->


 </div><!--Main Content-->

            
    </div>

    <?php include(TEMPLATE_FRONT . DS . "footer.php") ?>