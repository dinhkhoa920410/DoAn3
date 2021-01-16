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
            $numberOfItemPerPage = 5;
            $currentPage = isset($_GET['page']) ? escape_string($_GET['page']) : 1;
            $showProductFrom = ($currentPage-1)*$numberOfItemPerPage;

            $queryStringAll = "SELECT * FROM news";
            $maxPage = getMaxPage($queryStringAll, $numberOfItemPerPage);
            
            $queryStringShowing = $queryStringAll." limit $showProductFrom, $numberOfItemPerPage";
            $queryString = "SELECT * FROM news limit $showProductFrom, $numberOfItemPerPage";
            $query = query($queryStringShowing);
                    
            while($row = fetch_array($query)):
                $newsID = $row['news_id'];
                $title = $row['news_title'];
                $shortDesc = $row['short_desc'];
                $image = $row['image'];
                $page = $row['page'];
        ?>
                <div class="news-element">
                    <a href="news/<?php echo $page.'?id='.$newsID?>">
                        <div class="container-horizontal">
                            <div class="col-md-3">
                                <img class="thumbnail-img" src="images/News_Thumbnail/<?php echo $image?>">
                            </div>
                            <div class="col-md-9">
                                <h4 class="news-title"><?php echo $title?></h4>
                                <p class="news-short-desc"><?php echo $shortDesc?></p>
                            </div>
                        </div>
                    </a>
                </div>
        <?php
            endwhile;
        ?>
        </div>
        <div class="pages">
            <a href="?<?php echo update_param('page',1) ?>"><div class="page-buttons"><div class="overlay">&lt;&lt;</div></div></a>
            <a href="?<?php echo update_param('page',($currentPage>1)?$currentPage-1:1) ?>"><div class="page-buttons"><div class="overlay">&lt;</div></div></a>
            <a href="?<?php echo update_param('page',$currentPage-2) ?>" <?php if($currentPage<=2){?>style="display:none"<?php }?>><div class="page-buttons"><div class="overlay"><?php echo $currentPage-2 ?></div></div></a>
            <a href="?<?php echo update_param('page',$currentPage-1) ?>" <?php if($currentPage<=1){?>style="display:none"<?php }?>><div class="page-buttons"><div class="overlay"><?php echo $currentPage-1 ?></div></div></a>
            <a href=""><div class="page-buttons current-page-buttons"><div class="overlay"><?php echo $currentPage ?></div></div></a>
            <a href="?<?php echo update_param('page',$currentPage+1) ?>" <?php if($currentPage+1>$maxPage){?>style="display:none"<?php }?>><div class="page-buttons"><div class="overlay"><?php echo $currentPage+1 ?></div></div></a>
            <a href="?<?php echo update_param('page',$currentPage+2) ?>" <?php if($currentPage+2>$maxPage){?>style="display:none"<?php }?>><div class="page-buttons"><div class="overlay"><?php echo $currentPage+2 ?></div></div></a>
            <a href="?<?php echo update_param('page',($currentPage<$maxPage)?$currentPage+1:$maxPage) ?>"><div class="page-buttons"><div class="overlay">&gt;</div></div></a>
            <a href="?<?php echo update_param('page',$maxPage) ?>"><div class="page-buttons"><div class="overlay">&gt;&gt;</div></div></a>
        </div>
    </div>
    <div class="col-md-2">
        <div class="vertical-ad-banner">
            <img src="images/banner-3.jpg">
            <img src="images/banner-3.jpg">
        </div>
    </div>
</div>