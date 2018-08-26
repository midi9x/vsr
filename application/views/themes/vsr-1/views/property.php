<section class="headings">
    <div class="text-heading text-center">
        <div class="container">
            <h1><?=$property->property_name?></h1>
            <h2>
                <a href="<?=site_url()?>" title="Trang chủ">Trang chủ </a> &nbsp;/&nbsp; 
                <a href="<?=site_url() . PROPERTY_CATEGORY . $property->category_slug?>" title="<?=$property->category_name?>"><?=$property->category_name?> </a> &nbsp;/&nbsp;
                <a href="<?=site_url() . PROPERTY_TYPE . $property->type_slug?>" title="<?=$property->type_name?>"><?=$property->type_name?> </a> 
            </h2>
        </div>
    </div>
</section>
<!-- END SECTION HEADINGS -->

<!-- START SECTION PROPERTIES LISTING -->
<section class="blog details">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12 blog-pots">
                <!-- Block heading Start-->
                <div class="block-heading details">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-2">
                            <h4>
                            <span class="heading-icon">
                                <i class="fa fa-map-marker"></i>
                            </span>
                            <span class="hidden-sm-down"><?=$property->location_name?></span>
                        </h4>
                        </div>
                        <div class="col-lg-6 col-md-6 col-10 cod-pad">
                            <div class="sorting-options">
                                <h5><span>Giá:</span> <?=number_format($property->property_price)?> ₫</h5>
                                <h6 class="type"><span>Thể loại:</span> <?=$property->category_name?></h6>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Block heading end -->
                <div class="row">
                    <div class="col-md-12 mb-4">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <?php foreach ($images as $key => $image):?>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="<?=$key?>"<?=($key == 0) ? ' class="active"' : ''?>></li>
                                <?php endforeach;?>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <?php foreach ($images as $key => $image):?>
                                    <div class="carousel-item<?=($key == 0) ? ' active' : ''?>">
                                        <img class="d-block img-fluid" src="<?=$image['image_name']?>" alt="<?=$property->property_name?>">
                                    </div>
                                <?php endforeach;?>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <div class="blog-info details">
                            <!-- cars content -->
                            <div class="homes-content details-2 mb-5">
                                <!-- cars List -->
                                <ul class="homes-list clearfix info">
                                    <?php 
                                    if (isset($property->property_bedroom)) {
                                ?>
                                <li>
                                    <i class="fa fa-bed" aria-hidden="true"></i>
                                        <span>Phòng ngủ: <?=$property->property_bedroom?></span>
                                    </li>
                                    <?php }?>
                                    <?php 
                                        if (isset($property->property_bathroom)) {
                                    ?>
                                    <li>
                                        <i class="fa fa-bath" aria-hidden="true"></i>
                                        <span>Phòng tắm: <?=$property->property_bathroom?></span>
                                    </li>
                                    <?php }?>
                                    <?php 
                                        if (isset($property->property_acreage)) {
                                    ?>
                                    <li>
                                        <i class="fa fa-object-group" aria-hidden="true"></i>
                                        <span>Diện tích: <?=$property->property_acreage?>m²</span>
                                    </li>
                                    <?php }?>
                                    <?php 
                                        if (isset($property->property_facade)) {
                                    ?>
                                    <li>
                                        <i class="fas fa-warehouse" aria-hidden="true"></i>
                                        <span>Mặt tiền: <?=$property->property_facade?>m²</span>
                                    </li>
                                    <?php }?>
                                </ul>
                            </div>
                            <h5 class="mb-4">THÔNG TIN CHUNG</h5>
                            <?=$property->property_content?>
                        </div>
                    </div>
                </div>
                <!-- cars content -->
                <div class="homes-content details mb-5">
                    <!-- title -->
                    <h5 class="mb-4">Đặc điểm</h5>
                    <!-- cars List -->
                    <ul class="homes-list clearfix">
                        <?php foreach ($characteristics as $key => $characteristic):?>
                            <li>
                                <i class="fa fa-check-square" aria-hidden="true"></i>
                                <span><?=$characteristic['characteristic_name']?></span>
                            </li>
                        <?php endforeach;?>
                        
                    </ul>
                </div>
                <section class="leve-comments">
                    <h3 class="mb-4">Liên hệ</h3>
                    <div class="row">
                        <div class="col-md-12 data">
                            <?php echo form_open(site_url('lien-he-bat-dong-san'),array('id'=>'addContact')); ?>
                                <input type="hidden" name="property_id" value="<?=$property->property_id?>">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" name="contact_name" class="form-control" placeholder="Họ tên" required>
                                    </div>
                                </div>
                                <div class="row mr-0">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" name="contact_phone" class="form-control" placeholder="Điện thoại" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" name="contact_email" class="form-control" placeholder="Email" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" name="contact_address" class="form-control" placeholder="Địa chỉ" required>
                                    </div>
                                </div>
                                <div class="col-md-12 form-group">
                                    <textarea class="form-control" name="contact_message" rows="8" placeholder="Lời nhắn" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg">Gửi đi</button>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </section>
            </div>
            <?php $this->view('themes/' . active_clients_theme() . '/sidebar-property');?>
        </div>
    </div>
</section>