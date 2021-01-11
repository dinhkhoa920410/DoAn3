<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="banner">
    <img src="images/banner.jpg">
</div>
<div class="container">
    <div class="col-md-2">
        <div class="vertical-ad-banner">
            <img src="images/banana.jpg">
            <img src="images/banana.jpg">
        </div>
    </div>
    <div class="col-md-8">
        <div class="news-list">
        <?php 
            $queryString = "SELECT * FROM news";
            $query = query($queryString);
                    
            while($row = fetch_array($query)):
                $title = $row['news_title'];
                $shortDesc = $row['news_short_desc'];
                $image = $row['thumbnail_image'];
                $page = $row['page'];
        ?>
                <div class="news-element">
                    <a href="">
                        <div class="container">
                            <div class="col-md-3">
                                <img class="thumbnail-img" src="images/news_thumbnail.jpg">
                            </div>
                            <div class="col-md-9">
                                <h3 class="news-title">dsadas</h3>
                                <p class="news-short-desc">asdasldkasdl</p>
                            </div>
                        </div>
                    </a>
                </div>
        <?php
            endwhile;
        ?>
        </div>
    </div>
    <div class="col-md-2">
        <div class="vertical-ad-banner">
            <img src="images/banana.jpg">
            <img src="images/banana.jpg">
        </div>
    </div>
</div>