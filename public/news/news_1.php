<?php require_once("../../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="container-horizontal">
    <div class="col-md-2">
        <div class="vertical-ad-banner">
            <img src="../images/banner-3.jpg">
            <img src="../images/banner-3.jpg">
        </div>
    </div>
    <div class="col-md-8">
        <div class="news-title">Khuyến mãi lễ 30/4 & 1/5</div>
        <div class="news-date">Ngày đăng: 13/1/2021</div>
        <div class="news-content"></div>
        <div class="other-news">
            <p>TIN KHUYẾN MÃI KHÁC</p>
            <div class="other-news-list">
                <?php
                    $id = escape_string($_GET["id"]);
                    $queryString = "SELECT *
                                    FROM news
                                    WHERE news_id <> $id
                                    ORDER BY news_id
                                    LIMIT 0, 5";
                    
                    $query = query($queryString);

                    while($row = fetch_array($query)):
                        $id = $row['news_id'];
                        $title = $row['news_title'];
                        $page = $row['page'];
                        debug_to_console($title);
                ?>
                    <p><a class="other-news-element" href="<?php echo $page."?id=".$id?>"><?php echo $title?></a></p>
                <?php
                    endwhile;
                ?>
            </div>
        </div>
    </div>
</div>
    <div class="col-md-2">
        <div class="vertical-ad-banner">
            <img src="../images/banner-3.jpg">
            <img src="../images/banner-3.jpg">
        </div>
    </div>
</div>