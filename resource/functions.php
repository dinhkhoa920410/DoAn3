<?php 

// helper functions

function set_message($msg){
    if(!empty($msg)) {
        $_SESSION['message'] = $msg;
    } else {

        $msg = "";   

    }
}

function display_message() {
    if(isset($_SESSION['message'])) {
        echo $_SESSION['message'];
        unset($_SESSION['message']);
    }
}

function redirect($location){
    header("Location: $location");
}

function query($sql) {
    global $connection;
    return mysqli_query($connection, $sql);
}

function confirm($result){
    global $connection;
    if(!$result) {
        die("QUERY FAILED" . mysqli_error($connection));
    }
}

function escape_string($string){
    global $connection;
    return mysqli_real_escape_string($connection, $string);
}

function fetch_array($result){
    return mysqli_fetch_array($result);
}












function update_param($key, $value){
    $params           = array_merge($_GET, array($key => $value));
    $new_query_string = http_build_query($params);

    return $new_query_string;
}

function remove_param($key) {
    $params = $_GET;
    unset($params[$key]);
    $new_query_string = http_build_query($params);
    return $new_query_string;
}

function debug_to_console($data) {
    $output = $data;
    if (is_array($output))
        $output = implode(',', $output);

    echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
}

function getMaxPage($queryString, $numberOfItemPerPage){
    $query = query($queryString);
    $maxPage = ceil(mysqli_num_rows($query)/$numberOfItemPerPage);

    return $maxPage;
}

function onClickFilter($filterIndex){
    header("Location: ?"+update_param('filter', $filterIndex));
}

function addToCart($product_id, $number){
    if(!isset($_SESSION["cart"])){
        $arrCartProduct = [$product_id];
        $arrCartCount = [$number];
    }
    else{
        $arrCartProduct = $_SESSION["cart"];
        $arrCartCount = $_SESSION["cart_count"];

        $isDupe = false;
        for($i = 0; $i<count($arrCartProduct); $i++){
            if($arrCartProduct[$i] == $product_id){
                $arrCartCount[$i] += $number;
                $isDupe = true;
            }
        }
        if(!$isDupe){
            array_push($arrCartProduct, $product_id);
            array_push($arrCartCount, $number);
        }
    }
    
    $_SESSION["cart"] = $arrCartProduct;
    $_SESSION["cart_count"] = $arrCartCount;
}

function deleteFromCart($round){
    if(isset($_SESSION["cart"])){
        $arrCartProduct = $_SESSION["cart"];
        $arrCartCount = $_SESSION["cart_count"];

        unset($arrCartProduct[$round]);
        unset($arrCartCount[$round]);
        $arrCartProduct = array_values($arrCartProduct);
        $arrCartCount = array_values($arrCartCount);
        $_SESSION["cart"] = $arrCartProduct;
        $_SESSION["cart_count"] = $arrCartCount;
    }
}

function removeFromCart($round){
    if(isset($_SESSION["cart"])){
        $arrCartProduct = $_SESSION["cart"];
        $arrCartCount = $_SESSION["cart_count"];
        if($arrCartCount[$round] > 1) {
            $arrCartCount[$round]--;
            $arrCartCount = array_values($arrCartCount);
            $_SESSION["cart_count"] = $arrCartCount;
        } else deleteFromCart($round);
}
}

function addFromCart($round){
    if(isset($_SESSION["cart"])){
        $arrCartProduct = $_SESSION["cart"];
        $arrCartCount = $_SESSION["cart_count"];
        $arrCartCount[$round]++;
        $arrCartCount = array_values($arrCartCount);
        $_SESSION["cart_count"] = $arrCartCount;
}
}


?>

