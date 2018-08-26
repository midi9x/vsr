<aside class="col-lg-3 col-md-12">
    <div class="widget">
        <h5 class="font-weight-bold mb-4">Tìm kiếm luật đặc khu</h5>
        <form method="GET" action="<?=site_url() . SEARCH_SLUG . LAWS_SLUG ?>">
            <div class="input-group">
                <input type="text" class="form-control" name="q" value="<?=isset($_GET['q']) ? $_GET['q']  : ''?>" placeholder="Nhập từ khóa cần tìm ...">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="submmit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </span>
            </div>
        </form>
        <div class="recent-post py-5">
            <h5 class="font-weight-bold">Danh mục luật đặc khu</h5>
            <ul>
                <?php
                    $groups = get_laws_groups();
                    foreach ($groups as $key => $group) {
                        echo '<li><a href="' . site_url() . LAWS_GROUP_SLUG . $group["group_slug"] . '" title="' . $group["name"] . '">
                            <i class="fa fa-caret-right" aria-hidden="true"></i>' . $group["name"] . '
                        </a></li>';
                    }
                ?>
            </ul>
        </div>
        <div class="recent-post pt-5">
            <h5 class="font-weight-bold mb-4">Bài viết mới</h5>
            <?php
                $laws = get_laws_new();
                $count = count($laws);
                foreach ($laws as $key => $law) {
            ?>
                <div class="recent-main <?=($key == 0 || $key == $count - 1) ? '' : 'my-4'?>">
                    <div class="recent-img">
                        <a href="<?php echo site_url() . LAWS_SLUG . $law['slug']?>/" title="<?=$law['subject']?>"><img src="<?php echo $law['avatar']?>" alt="<?=$law['subject']?>"></a>
                    </div>
                    <div class="info-img">
                        <a href="<?php echo site_url() . LAWS_SLUG . $law['slug']?>/" title="<?=$law['subject']?>"><h6><?=$law['subject']?></h6></a>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</aside>     