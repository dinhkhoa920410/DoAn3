<?php require_once("../resource/config.php"); ?>

<?php include(TEMPLATE_FRONT . DS . "header.php") ?>

<!-- Page Content -->
<div class="container-horizontal">
    <div class="col-md-2">
        <div class="vertical-ad-banner">
            <img src="images/banner-3.jpg">
            <img src="images/banner-3.jpg">
        </div>
    </div>
    <div class="col-md-8">
        <div class="news-list">
        <?php 
            $queryString = "SELECT * FROM news";
            $query = query($queryString);
                    
            while($row = fetch_array($query)):
                $title = $row['news_title'];
                $shortDesc = $row['short_desc'];
                $image = $row['image'];
                $page = $row['page'];
        ?>
                <div class="news-element">
                    <a href="news/<?php echo $page?>">
                        <div class="container-horizontal">
                            <div class="col-md-3">
                                <img class="thumbnail-img" src="images/News_Thumbnail/<?php echo $image?>">
                            </div>
                            <div class="col-md-9">
                                <h3 class="news-title"><?php echo $title?></h3>
                                <p class="news-short-desc"><?php echo $shortDesc?></p>
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
            <img src="images/banner-3.jpg">
            <img src="images/banner-3.jpg">
        </div>
    </div>
</div>