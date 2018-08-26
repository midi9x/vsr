<section id="main-content">
    <div class="container">
        <div class="row content">
            <div class="col-md-12">
                <h3 class="title text-none"><?=$property->property_name?></h3>
            </div>
            <div class="col-md-9" id="primary">
                <div class="section-content">
                    <div class="section">
                        <div class="slide">
                            <div id="slideSP" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <?php foreach ($images as $key => $image) { ?>
                                        <li data-target="#slideSP" data-slide-to="<?=$key?>" <?=$key == 0 ? ' class="active"' : ''?>>
                                            <img class="d-block w-100 h-100 object-cover" src="<?=$image['image_name']?>">
                                        </li>
                                    <?php } ?>
                                </ol>
                                <div class="carousel-inner">
                                    <?php foreach ($images as $key => $image) { ?>
                                        <div class="carousel-item <?=$key == 0 ? ' active' : ''?>">
                                            <img class="d-block w-100 h-100 object-cover
                                            " src="<?=$image['image_name']?>">
                                        </div>
                                    <?php } ?>
                                </div>
                                <a class="carousel-control-prev" href="#slideSP" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#slideSP" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>

                        <div class="row text-center bds-info mx-0 mt-3">
                            <?php
                                $property_price = $property->property_price;
                                $property_acreage = $property->property_acreage;
                                $category_name = $property->category_name;
                                $type_name = $property->type_name;
                                $location_name = $property->location_name;
                                $town_name = $property->town_name;
                                $count = 6;
                                $number = 8;
                                $property_quyhoach = $property->property_quyhoach;
                                if ($property_quyhoach) $count = $count + 1;
                                $property_socan = $property->property_socan;
                                if ($property_socan) $count = $count + 1;
                                $property_solo = $property->property_solo;
                                if ($property_solo) $count = $count + 1;
                                $property_facade = $property->property_facade;
                                if ($property_facade) $count = $count + 1;
                                $property_bedroom = $property->property_bedroom;
                                if ($property_bedroom) $count = $count + 1;
                                $property_bathroom = $property->property_bathroom;
                                if ($property_bathroom) $count = $count + 1;

                                if ($count > 8 ) $number = 12;

                                $remaining = $number - $count;
                            ?>
                            <div class="col-md-3 item">
                                <span>Giá: </span>
                                <span class="info"><?php echo number_format($property_price)?>đ</span>
                            </div>
                            <div class="col-md-3 item">
                                <span>Diện tích: </span>
                                <span class="info"><?php echo $property_acreage?>m²</span>
                            </div>
                            <div class="col-md-3 item">
                                <span>Danh mục: </span>
                                <span class="info"><?php echo $category_name?> </span>
                            </div>
                            <div class="col-md-3 item">
                                <span>Thể loại: </span>
                                <span class="info"><?php echo $type_name?> </span>
                            </div>
                            <div class="col-md-3 item">
                                <span>Khu: </span>
                                <span class="info"><?php echo $location_name?> </span>
                            </div>
                            <div class="col-md-3 item">
                                <span>Xã/thị trấn: </span>
                                <span class="info"><?php echo $town_name?> </span>
                            </div>
                            <?php if ($property_quyhoach): ?>
                                <div class="col-md-3 item">
                                    <span>Quy hoạch: </span>
                                    <span class="info"><?php echo $property_quyhoach?></span>
                                </div>
                            <?php endif; ?>
                            <?php if ($property_socan): ?>
                                <div class="col-md-3 item">
                                    <span>Số căn: </span>
                                    <span class="info"><?php echo $property_socan?></span>
                                </div>
                            <?php endif; ?>
                            <?php if ($property_solo): ?>
                                <div class="col-md-3 item">
                                    <span>Số lô: </span>
                                    <span class="info"><?php echo $property_solo?></span>
                                </div>
                            <?php endif; ?>
                            <?php if ($property_facade): ?>
                                <div class="col-md-3 item">
                                    <span>Mặt tiền: </span>
                                    <span class="info"><?php echo $property_facade?></span>
                                </div>
                            <?php endif; ?>
                            <?php if ($property_bedroom): ?>
                                <div class="col-md-3 item">
                                    <span>Phòng ngủ: </span>
                                    <span class="info"><?php echo $property_bedroom?></span>
                                </div>
                            <?php endif; ?>
                            <?php if ($property_bathroom): ?>
                                <div class="col-md-3 item">
                                    <span>Phòng tắm: </span>
                                    <span class="info"><?php echo $property_bathroom?></span>
                                </div>
                            <?php endif; ?>
                            <?php for ($i = 0; $i < $remaining; $i++): ?>
                                <div class="col-md-3 item">
                                    &ensp;
                                </div>
                            <?php endfor; ?>
                        </div>

                        <div class="post-info mt-3 mb-3">
                            <small class="text-muted"><span class="date">Đăng bởi: <?php echo $property->author?> | <?php echo date('d/m/Y', strtotime($property->property_created_at))?></span> <span class="time"><?php echo date('h:i:s', strtotime($property->property_created_at))?></span></small>
                            <div class="fb-like" data-href="<?php echo site_url('/') . PROJECT_SLUG . $property->property_slug?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                            <div class="zalo-share-button" data-href="<?php echo site_url('/') . PROJECT_SLUG . $property->property_slug?>" data-oaid="3622065111560619881" data-layout="1" data-color="blue" data-customize=false></div>
                            <g:plusone class="x" size="medium"></g:plusone>
                        </div>

                        <div class="relative">
                            <h3 class="title text-none">Thông tin chi tiết</h3>
                            <?php if(count($characteristics) >0): ?>
                                <div class="dacdiem w-md-50">
                                    <h3 class="title text-none no-bg">Đăc điểm khác</h3>
                                    <?php foreach ($characteristics as $key => $characteristic):?>
                                    <div class="item">
                                        <i class="far fa-check-square"></i> <?=$characteristic['characteristic_name']?>
                                    </div>
                                    <?php endforeach;?>
                                </div>
                            <?php endif;?>

                            <?php echo $property->property_content; ?>
                        </div>

                        <?php if($property->property_matbang != ''): ?>
                            <h3 class="title text-none mt-3">Mặt bằng dự án</h3>
                            <div class="mb-3">
                                <?=nl2br($property->property_matbang)?>
                            </div>
                        <?php endif;?>


                        <?php if($property->property_canhonen != ''): ?>
                            <h3 class="title text-none mt-3">Căn hộ, nền</h3>
                            <div class="mb-3">
                                <?=nl2br($property->property_canhonen)?>
                            </div>
                        <?php endif;?>

                        <?php if($property->property_tienich != ''): ?>
                            <h3 class="title text-none mt-3">Tiện ích</h3>
                            <div class="mb-3">
                                <?=nl2br($property->property_tienich)?>
                            </div>
                        <?php endif;?>


                        <?php if($property->vitri_google != ''): ?>
                            <h3 class="title text-none mt-3">Vị trí dự án</h3>
                            <div class="mb-3">
                                <?=nl2br($property->vitri_google)?>
                            </div>
                        <?php endif;?>

                        <h3 class="title text-none mt-3">Liên hệ ngay với chúng tôi</h3>
                        <?php echo form_open(site_url('lien-he-bat-dong-san'),array('id'=>'addContact', 'class' => 'mb-3')); ?>
                            <input type="hidden" name="property_id" value="<?=$property->property_id?>">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Họ và tên" name="contact_phone" required>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="number" class="form-control" placeholder="Số điện thoại" name="contact_phone" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" placeholder="Email" name="contact_email" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea rows="3" class="form-control" placeholder="Lời nhắn của bạn ..." name="contact_message" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lienhe float-right">Gửi thư</button>
                        <?php echo form_close(); ?>

                        <h3 class="title text-none mt-3 clear-sm-about">Dự án tương tự</h3>
                        <div class="section-content">
                            <div class="section bdstt">
                                <?php foreach ($relateds as $key => $related):?>
                                <div class="row mt-3">
                                    <div class="col-md-4">
                                        <a href="<?php echo site_url('/') . PROJECT_SLUG . $related['property_slug']?>" title="<?php echo $related['property_name']?>">
                                            <img src="<?php echo $related['property_avatar']?>" alt="<?php echo $related['property_name']?>" class="w-100 cover">
                                        </a>
                                        <?php if ($related['property_status'] == 1): ?>
                                            <img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/dangban.png">
                                        <?php else: ?>
                                            <img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/daban.png">
                                        <?php endif; ?>
                                        <?php if ($related['property_stick'] == 1): ?>
                                            <img class="hot" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/hot-bds.png">
                                        <?php endif; ?>
                                    </div>
                                    <div class="col-md-8">
                                        <h4>
                                            <a href="<?php echo site_url('/') . PROJECT_SLUG . $related['property_slug']?>" title="<?php echo $related['property_name']?>"><?php echo $related['property_name']?></a>
                                        </h4>
                                        <p class="info">
                                            <span class="float-left">
                                                <span class="category-icon">
                                                    <i class="fa fa-map-marker-alt"></i>
                                                </span>
                                                <a href="<?php echo site_url('/') . PROJECT_SLUG?>?location=<?=$related['property_location_id']?>&town=<?=$related['property_town_id']?>" title="<?php echo $related['town_name'] . ', ' . $related['location_name']?>">
                                                    <?php echo $related['town_name'] . ', ' . $related['location_name']?>
                                                </a>
                                            </span>
                                            <span class="float-right">
                                                <small class="text-muted">
                                                    <span class="date"><?php echo date('d/m/Y', strtotime($related['property_created_at']))?></span>
                                                    <span class="time"><?php echo date('h:i:s', strtotime($related['property_created_at']))?></span>
                                                </small>
                                            </span>
                                        </p>
                                        <p class="description">
                                            <?php echo mb_substr(strip_tags($related['property_content']),0, 450); ?>...
                                        </p>
                                        <div class="row text-center mx-0">
                                            <div class="col-md-4 info-item mb-1 br">
                                                Giá: <?php echo number_format($related['property_price'])?>đ
                                            </div>
                                            <div class="col-md-4 info-item mb-1">
                                                Diện tích: <?php echo $related['property_acreage']?>m²
                                            </div>
                                            <?php if ($related['property_socan'] != ''): ?>
                                                <div class="col-md-4 info-item mb-1 bl">
                                                    Số căn: <?php echo $related['property_socan']?>
                                                </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach;?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php $this->view('themes/' . active_clients_theme() . '/sidebar-single');?>
        </div>
    </div>
</section>