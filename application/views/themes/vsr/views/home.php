<!-- START SLIDER -->
<!-- START REVOLUTION SLIDER 5.0.7 fullwidth mode -->
<div id="rev_slider_home_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="news-gallery34" style="margin:0px auto;background-color:#ffffff;padding:0px;margin-top:0px;margin-bottom:0px;">
	<div id="rev_slider_home" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
		<ul>
			<!-- SLIDE 1 -->
			<li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/slider/slider-1.jpg');?>" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off">
				<!-- MAIN IMAGE -->
				<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/slider/slider-1.jpg');?>" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
				<!-- LAYERS -->
			</li>

			<!-- SLIDE 2 -->
			<li data-index="rs-2" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/slider/slider-2.jpg');?>" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off">
				<!-- MAIN IMAGE -->
				<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/slider/slider-2.jpg');?>" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
				<!-- LAYERS -->
			</li>

			<!-- SLIDE 3 -->
			<li data-index="rs-3" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/slider/slider-3.jpg');?>" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off">
				<!-- MAIN IMAGE -->
				<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/slider/slider-3.jpg');?>" alt="" data-bgposition="top 20%" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
				<!-- LAYERS -->
				
			</li>
		</ul>
		<div class="tp-bannertimer tp-bottom" style="height: 5px; background-color: #0098ef;"></div>
	</div>
</div>
<!-- END REVOLUTION SLIDER -->
<!-- END SECTION HEADINGS -->

<!-- START SECTION SEARCH AREA -->
<section class="main-search-field" id="tim-nha-dat">
	<div class="container">
		<h3>Tìm nhà đất</h3>
		<form method="GET" action="">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="at-col-default-mar">
						<select name="vi-tri">
							<option value="">Vị trí</option>
							<?php
								$locations = get_property_location();
								foreach ($locations as $key => $location) {
									echo '<option value="' . $location['location_id'] .'">' . $location['location_name'] .'</option>';
								}
							?>
						</select>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="at-col-default-mar">
						<select name="danh-muc">
							<option value="">Danh mục</option>
							<?php
								$cats = get_property_cat();
								foreach ($cats as $key => $cat) {
									echo '<option value="' . $cat['category_id'] .'">' . $cat['category_name'] .'</option>';
								}
							?>
						</select>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="at-col-default-mar">
						<div class="at-col-default-mar">
							<select name="the-loai">
								<option value="">Thể loại</option>
								<?php
									$types = get_property_type();
									foreach ($types as $key => $type) {
										echo '<option value="' . $type['type_id'] .'">' . $type['type_name'] .'</option>';
									}
								?>
							</select>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="at-col-default-mar">
						<select name="phong-ngu">
							<option value="">Phòng ngủ</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="at-col-default-mar no-mb">
						<select name="phong-tam">
							<option value="">Phòng tắm</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>
					</div>
				</div>
				<div class="col-lg-3 no-pds">
					<div class="at-col-default-mar no-mb">
						<input class="at-input" type="text" name="tu-khoa" placeholder="Từ khóa ...">
					</div>
				</div>
				<div class="col-lg-3 col-md-6 b-search__main-form label">
					<input type="hidden" name="from" id="from">
					<input type="hidden" name="to" id="to">
					<input type="text" class="slider_amount m-t-lg-30 m-t-xs-0 m-t-sm-10">
					<div class="slider-range"></div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="at-col-default-mar no-mb">
						<button class="btn btn-default hvr-bounce-to-right" type="submit">Tìm kiếm</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<!-- END SECTION SEARCH AREA -->

<!-- START SECTION BLOG -->
<section class="blog-section">
	<div class="container">
		<div class="section-title">
			<h3>VSR.VN</h3>
			<h2>TIN TƯ VẤN</h2>
		</div>
		<div class="news-wrap">
			<div class="row">
				<div class="col-xl-6 col-md-12 col-xs-12">
					<div class="news-item news-item-sm">
						<a href="blog-details.html" class="news-img-link">
							<div class="news-item-img">
								<img class="resp-img" src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/blog/b-1.jpg');?>" alt="blog image">
							</div>
						</a>
						<div class="news-item-text">
							<a href="blog-details.html"><h3>Tiêu đề bài viết</h3></a>
							<span class="date">06/06/2018 &nbsp;/&nbsp; By Admin</span>
							<div class="news-item-descr">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
							</div>
							<div class="news-item-bottom">
								<a href="blog-details.html" class="news-link">Đọc tiếp ...</a>
								<ul class="action-list">
									<li class="action-item"><i class="fa fa-eye"></i> <span>306</span></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="news-item news-item-sm mb">
						<a href="blog-details.html" class="news-img-link">
							<div class="news-item-img">
								<img class="resp-img" src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/blog/b-2.jpg');?>" alt="blog image">
							</div>
						</a>
						<div class="news-item-text">
							<a href="blog-details.html"><h3>Tiêu đề bài viết</h3></a>
							<span class="date">06/06/2018 &nbsp;/&nbsp; By Admin</span>
							<div class="news-item-descr">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
							</div>
							<div class="news-item-bottom">
								<a href="blog-details.html" class="news-link">Đọc tiếp ...</a>
								<ul class="action-list">
									<li class="action-item"><i class="fa fa-eye"></i> <span>306</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-md-12 col-xs-12">
					<div class="news-item news-item-sm">
						<a href="blog-details.html" class="news-img-link">
							<div class="news-item-img">
								<img class="resp-img" src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/blog/b-3.jpg');?>" alt="blog image">
							</div>
						</a>
						<div class="news-item-text">
							<a href="blog-details.html"><h3>Tiêu đề bài viết</h3></a>
							<span class="date">06/06/2018 &nbsp;/&nbsp; By Admin</span>
							<div class="news-item-descr">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
							</div>
							<div class="news-item-bottom">
								<a href="blog-details.html" class="news-link">Đọc tiếp ...</a>
								<ul class="action-list">
									<li class="action-item"><i class="fa fa-eye"></i> <span>306</span></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="news-item news-item-sm">
						<a href="blog-details.html" class="news-img-link">
							<div class="news-item-img">
								<img class="resp-img" src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/blog/b-4.jpg');?>" alt="blog image">
							</div>
						</a>
						<div class="news-item-text">
							<a href="blog-details.html"><h3>Tiêu đề bài viết</h3></a>
							<span class="date">06/06/2018 &nbsp;/&nbsp; By Admin</span>
							<div class="news-item-descr">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
							</div>
							<div class="news-item-bottom">
								<a href="blog-details.html" class="news-link">Đọc tiếp ...</a>
								<ul class="action-list">
									<li class="action-item"><i class="fa fa-eye"></i> <span>306</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END SECTION BLOG -->

<!-- START SECTION FEATURED PROPERTIES -->
<section class="featured portfolio">
	<div class="container">
		<div class="row">
			<div class="section-title col-md-5">
				<h3>VSR.VN</h3>
				<h2>Dự án</h2>
			</div>
		</div>
		<div class="row portfolio-items">
			<div class="item col-lg-4 col-md-6 col-xs-12 landscapes sale">
				<div class="project-single">
					<div class="project-inner project-head">
						<div class="project-bottom">
							<h4><a href="properties-details.html">XEM CHI TIẾT</a></h4>
						</div>
						<div class="button-effect">
							<a href="properties-details.html" class="btn"><i class="fa fa-link"></i></a>
							<a href="https://www.youtube.com/watch?v=2xHQqYRcrx4" class="btn popup-video popup-youtube"><i class="fas fa-video"></i></a>
							<a class="img-poppu btn" href="images/feature-properties/fp-1.jpg');?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
						</div>
						<div class="homes">
							<!-- homes img -->
							<a href="properties-details.html" class="homes-img">
								<div class="homes-tag button alt featured">Hot</div>
								<div class="homes-tag button alt sale">Rao bán</div>
								<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/feature-properties/fp-1.jpg');?>" alt="home-1" class="img-responsive">
							</a>
						</div>
					</div>
					<!-- homes content -->
					<div class="homes-content">
						<!-- homes address -->
						<h3>Đây là tên nhà đất</h3>
						<p class="homes-address mb-3">
							<a href="properties-details.html">
								<i class="fa fa-map-marker"></i><span>Địa chỉ Ha Noi Viet Nam</span>
							</a>
						</p>
						<!-- homes List -->
						<ul class="homes-list clearfix">
							<li>
								<i class="fa fa-bed" aria-hidden="true"></i>
								<span>6 phòng ngủ</span>
							</li>
							<li>
								<i class="fa fa-bath" aria-hidden="true"></i>
								<span>3 phòng tắm</span>
							</li>
							<li>
								<i class="fa fa-object-group" aria-hidden="true"></i>
								<span>70m²</span>
							</li>
							<li>
								<i class="fas fa-warehouse" aria-hidden="true"></i>
								<span>30m² mặt tiền</span>
							</li>
						</ul>
						<!-- Price -->
						<div class="price-properties">
							<h3 class="title mt-3">
                            <a href="properties-details.html">4,000,000,000 ₫</a>
                            </h3>
						</div>
						<div class="footer">
							<a href="agent-details.html">
								<i class="fa fa-user"></i> Người đăng
							</a>
							<span>
                            <i class="fa fa-calendar"></i> 06/06/2018
                        </span>
						</div>
					</div>
				</div>
			</div>
			<div class="item col-lg-4 col-md-6 col-xs-12 people rent">
				<div class="project-single">
					<div class="project-inner project-head">
						<div class="project-bottom">
							<h4><a href="properties-details.html">XEM CHI TIẾT</a></h4>
						</div>
						<div class="button-effect">
							<a href="properties-details.html" class="btn"><i class="fa fa-link"></i></a>
							<a href="https://www.youtube.com/watch?v=2xHQqYRcrx4" class="btn popup-video popup-youtube"><i class="fas fa-video"></i></a>
							<a class="img-poppu btn" href="images/feature-properties/fp-2.jpg');?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
						</div>
						<div class="homes">
							<!-- homes img -->
							<a href="properties-details.html" class="homes-img">
								<div class="homes-tag button sale rent">Cho thuê</div>
								<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/feature-properties/fp-2.jpg');?>" alt="home-1" class="img-responsive">
							</a>
						</div>
					</div>
					<!-- homes content -->
					<div class="homes-content">
						<!-- homes address -->
						<h3>Đây là tên nhà đất</h3>
						<p class="homes-address mb-3">
							<a href="properties-details.html">
								<i class="fa fa-map-marker"></i><span>Địa chỉ Ha Noi Viet Nam</span>
							</a>
						</p>
						<!-- homes List -->
						<ul class="homes-list clearfix">
							<li>
								<i class="fa fa-bed" aria-hidden="true"></i>
								<span>6 phòng ngủ</span>
							</li>
							<li>
								<i class="fa fa-bath" aria-hidden="true"></i>
								<span>3 phòng tắm</span>
							</li>
							<li>
								<i class="fa fa-object-group" aria-hidden="true"></i>
								<span>70m²</span>
							</li>
							<li>
								<i class="fas fa-warehouse" aria-hidden="true"></i>
								<span>30m² mặt tiền</span>
							</li>
						</ul>
						<!-- Price -->
						<div class="price-properties">
							<h3 class="title mt-3">
                            <a href="properties-details.html">4,000,000,000 ₫</a>
                            </h3>
						</div>
						<div class="footer">
							<a href="agent-details.html">
								<i class="fa fa-user"></i> Người đăng
							</a>
							<span>
                            <i class="fa fa-calendar"></i> 06/06/2018
                        </span>
						</div>
					</div>
				</div>
			</div>
			<div class="item col-lg-4 col-md-6 col-xs-12 people landscapes sale">
				<div class="project-single">
					<div class="project-inner project-head">
						<div class="project-bottom">
							<h4><a href="properties-details.html">XEM CHI TIẾT</a></h4>
						</div>
						<div class="button-effect">
							<a href="properties-details.html" class="btn"><i class="fa fa-link"></i></a>
							<a href="https://www.youtube.com/watch?v=2xHQqYRcrx4" class="btn popup-video popup-youtube"><i class="fas fa-video"></i></a>
							<a class="img-poppu btn" href="images/feature-properties/fp-3.jpg');?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
						</div>
						<div class="homes">
							<!-- homes img -->
							<a href="properties-details.html" class="homes-img">
								<div class="homes-tag button alt featured">Hot</div>
								<div class="homes-tag button alt sale">Rao bán</div>
								<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/feature-properties/fp-3.jpg');?>" alt="home-1" class="img-responsive">
							</a>
						</div>
					</div>
					<!-- homes content -->
					<div class="homes-content">
						<!-- homes address -->
						<h3>Đây là tên nhà đất</h3>
						<p class="homes-address mb-3">
							<a href="properties-details.html">
								<i class="fa fa-map-marker"></i><span>Địa chỉ Ha Noi Viet Nam</span>
							</a>
						</p>
						<!-- homes List -->
						<ul class="homes-list clearfix">
							<li>
								<i class="fa fa-bed" aria-hidden="true"></i>
								<span>6 phòng ngủ</span>
							</li>
							<li>
								<i class="fa fa-bath" aria-hidden="true"></i>
								<span>3 phòng tắm</span>
							</li>
							<li>
								<i class="fa fa-object-group" aria-hidden="true"></i>
								<span>70m²</span>
							</li>
							<li>
								<i class="fas fa-warehouse" aria-hidden="true"></i>
								<span>30m² mặt tiền</span>
							</li>
						</ul>
						<!-- Price -->
						<div class="price-properties">
							<h3 class="title mt-3">
                            <a href="properties-details.html">4,000,000,000 ₫</a>
                            </h3>
						</div>
						<div class="footer">
							<a href="agent-details.html">
								<i class="fa fa-user"></i> Người đăng
							</a>
							<span>
                            <i class="fa fa-calendar"></i> 06/06/2018
                        </span>
						</div>
					</div>
				</div>
			</div>
			<div class="item col-lg-4 col-md-6 col-xs-12 people landscapes rent no-pb">
				<div class="project-single no-mb">
					<div class="project-inner project-head">
						<div class="project-bottom">
							<h4><a href="properties-details.html">XEM CHI TIẾT</a></h4>
						</div>
						<div class="button-effect">
							<a href="properties-details.html" class="btn"><i class="fa fa-link"></i></a>
							<a href="https://www.youtube.com/watch?v=2xHQqYRcrx4" class="btn popup-video popup-youtube"><i class="fas fa-video"></i></a>
							<a class="img-poppu btn" href="images/feature-properties/fp-4.jpg');?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
						</div>
						<div class="homes">
							<!-- homes img -->
							<a href="properties-details.html" class="homes-img">
								<div class="homes-tag button alt featured">Hot</div>
								<div class="homes-tag button sale rent">Cho thuê</div>
								<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/feature-properties/fp-4.jpg');?>" alt="home-1" class="img-responsive">
							</a>
						</div>
					</div>
					<!-- homes content -->
					<div class="homes-content">
						<!-- homes address -->
						<h3>Đây là tên nhà đất</h3>
						<p class="homes-address mb-3">
							<a href="properties-details.html">
								<i class="fa fa-map-marker"></i><span>Địa chỉ Ha Noi Viet Nam</span>
							</a>
						</p>
						<!-- homes List -->
						<ul class="homes-list clearfix">
							<li>
								<i class="fa fa-bed" aria-hidden="true"></i>
								<span>6 phòng ngủ</span>
							</li>
							<li>
								<i class="fa fa-bath" aria-hidden="true"></i>
								<span>3 phòng tắm</span>
							</li>
							<li>
								<i class="fa fa-object-group" aria-hidden="true"></i>
								<span>70m²</span>
							</li>
							<li>
								<i class="fas fa-warehouse" aria-hidden="true"></i>
								<span>30m² mặt tiền</span>
							</li>
						</ul>
						<!-- Price -->
						<div class="price-properties">
							<h3 class="title mt-3">
                            <a href="properties-details.html">4,000,000,000 ₫</a>
                            </h3>
						</div>
						<div class="footer">
							<a href="agent-details.html">
								<i class="fa fa-user"></i> Người đăng
							</a>
							<span>
                            <i class="fa fa-calendar"></i> 06/06/2018
                        </span>
						</div>
					</div>
				</div>
			</div>
			<div class="item col-lg-4 col-md-6 col-xs-12 people sale no-pb">
				<div class="project-single no-mb">
					<div class="project-inner project-head">
						<div class="project-bottom">
							<h4><a href="properties-details.html">XEM CHI TIẾT</a></h4>
						</div>
						<div class="button-effect">
							<a href="properties-details.html" class="btn"><i class="fa fa-link"></i></a>
							<a href="https://www.youtube.com/watch?v=2xHQqYRcrx4" class="btn popup-video popup-youtube"><i class="fas fa-video"></i></a>
							<a class="img-poppu btn" href="images/feature-properties/fp-5.jpg');?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
						</div>
						<div class="homes">
							<!-- homes img -->
							<a href="properties-details.html" class="homes-img">
								<div class="homes-tag button alt featured">Hot</div>
								<div class="homes-tag button alt sale">Rao bán</div>
								<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/feature-properties/fp-5.jpg');?>" alt="home-1" class="img-responsive">
							</a>
						</div>
					</div>
					<!-- homes content -->
					<div class="homes-content">
						<!-- homes address -->
						<h3>Đây là tên nhà đất</h3>
						<p class="homes-address mb-3">
							<a href="properties-details.html">
								<i class="fa fa-map-marker"></i><span>Địa chỉ Ha Noi Viet Nam</span>
							</a>
						</p>
						<!-- homes List -->
						<ul class="homes-list clearfix">
							<li>
								<i class="fa fa-bed" aria-hidden="true"></i>
								<span>6 phòng ngủ</span>
							</li>
							<li>
								<i class="fa fa-bath" aria-hidden="true"></i>
								<span>3 phòng tắm</span>
							</li>
							<li>
								<i class="fa fa-object-group" aria-hidden="true"></i>
								<span>70m²</span>
							</li>
							<li>
								<i class="fas fa-warehouse" aria-hidden="true"></i>
								<span>30m² mặt tiền</span>
							</li>
						</ul>
						<!-- Price -->
						<div class="price-properties">
							<h3 class="title mt-3">
                            <a href="properties-details.html">4,000,000,000 ₫</a>
                            </h3>
						</div>
						<div class="footer">
							<a href="agent-details.html">
								<i class="fa fa-user"></i> Người đăng
							</a>
							<span>
                            <i class="fa fa-calendar"></i> 06/06/2018
                        </span>
						</div>
					</div>
				</div>
			</div>
			<div class="item col-lg-4 col-md-6 it2 col-xs-12 web rent no-pb">
				<div class="project-single no-mb last">
					<div class="project-inner project-head">
						<div class="project-bottom">
							<h4><a href="properties-details.html">XEM CHI TIẾT</a></h4>
						</div>
						<div class="button-effect">
							<a href="properties-details.html" class="btn"><i class="fa fa-link"></i></a>
							<a href="https://www.youtube.com/watch?v=2xHQqYRcrx4" class="btn popup-video popup-youtube"><i class="fas fa-video"></i></a>
							<a class="img-poppu btn" href="images/feature-properties/fp-6.jpg');?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
						</div>
						<div class="homes">
							<!-- homes img -->
							<a href="properties-details.html" class="homes-img">
								<div class="homes-tag button alt featured">Hot</div>
								<div class="homes-tag button sale rent">Cho thuê</div>
								<img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/feature-properties/fp-6.jpg');?>" alt="home-1" class="img-responsive">
							</a>
						</div>
					</div>
					<!-- homes content -->
					<div class="homes-content">
						<!-- homes address -->
						<h3>Đây là tên nhà đất</h3>
						<p class="homes-address mb-3">
							<a href="properties-details.html">
								<i class="fa fa-map-marker"></i><span>Địa chỉ Ha Noi Viet Nam</span>
							</a>
						</p>
						<!-- homes List -->
						<ul class="homes-list clearfix">
							<li>
								<i class="fa fa-bed" aria-hidden="true"></i>
								<span>6 phòng ngủ</span>
							</li>
							<li>
								<i class="fa fa-bath" aria-hidden="true"></i>
								<span>3 phòng tắm</span>
							</li>
							<li>
								<i class="fa fa-object-group" aria-hidden="true"></i>
								<span>70m²</span>
							</li>
							<li>
								<i class="fas fa-warehouse" aria-hidden="true"></i>
								<span>30m² mặt tiền</span>
							</li>
						</ul>
						<!-- Price -->
						<div class="price-properties">
							<h3 class="title mt-3">
                            <a href="properties-details.html">4,000,000,000 ₫</a>
                            </h3>
						</div>
						<div class="footer">
							<a href="agent-details.html">
								<i class="fa fa-user"></i> Người đăng
							</a>
							<span>
                            <i class="fa fa-calendar"></i> 06/06/2018
                        </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END SECTION FEATURED PROPERTIES -->

<section class="blog-section">
	<div class="container">
		<div class="row">
			<div class="section-title col-md-5">
				<h3>VSR.VN</h3>
				<h2>Tin tức</h2>
			</div>
		</div>
		<div class="row">
			<div class="item col-lg-4 col-md-6 col-xs-12">
				<div class="tin-tuc">
					<div class="tin-tuc-1">
						<a href="#">
							<img class="img-responsive" src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/blog/b-1.jpg');?>" title="">
						</a>
						<div class="pd-15px">
							<h4>
								<a href="#">
									Đây là tiêu đề bài viết đây là tiêu đề bài viết
								</a>
							</h4>
							<p class="mb-0 border-bt pb-15px">Here are many variations of passages of Lorem Ipsum available..</p>
						</div>
					</div>
					<div class="pd-15px pt-0">
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item col-lg-4 col-md-6 col-xs-12">
				<div class="tin-tuc">
					<div class="tin-tuc-1">
						<a href="#">
							<img class="img-responsive" src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/blog/b-1.jpg');?>" title="">
						</a>
						<div class="pd-15px">
							<h4>
								<a href="#">
									Đây là tiêu đề bài viết đây là tiêu đề bài viết
								</a>
							</h4>
							<p class="mb-0 border-bt pb-15px">Here are many variations of passages of Lorem Ipsum available..</p>
						</div>
					</div>
					<div class="pd-15px pt-0">
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item col-lg-4 col-md-6 col-xs-12">
				<div class="tin-tuc">
					<div class="tin-tuc-1">
						<a href="#">
							<img class="img-responsive" src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/blog/b-1.jpg');?>" title="">
						</a>
						<div class="pd-15px">
							<h4>
								<a href="#">
									Đây là tiêu đề bài viết đây là tiêu đề bài viết
								</a>
							</h4>
							<p class="mb-0 border-bt pb-15px">Here are many variations of passages of Lorem Ipsum available..</p>
						</div>
					</div>
					<div class="pd-15px pt-0">
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
						<div class="tin-tuc-2">
							<a href="#">Đây là tiêu đề bài viết đây là tiêu đề bài viết</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>