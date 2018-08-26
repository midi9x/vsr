<section class="headings">
	<div class="text-heading text-center">
		<div class="container">
			<h1>
				<?php
					if (isset($isLocation)) {
						echo (isset($properties[0]['location_name'])) ? 'Nhà đất ' . $properties[0]['location_name'] : 'Danh sách nhà đất';
					} elseif(isset($isSearch)) {
						echo 'Tìm kiếm nhà đất';
					} elseif(isset($isCategory)) {
						echo isset($properties[0]['category_name']) ? $properties[0]['category_name'] : 'Danh sách nhà đất';
					} elseif(isset($isType)) {
						echo isset($properties[0]['type_name']) ? $properties[0]['type_name'] : 'Danh sách nhà đất';
					} else {
						echo 'Danh sách nhà đất';
					}
				?>
			</h1>
			<h2>
				<a title="Trang chủ" href="<?=site_url()?>">Trang chủ </a> &nbsp;/&nbsp; 
				<a title="Danh sách nhà đất" href="<?=site_url() . PROPERTY_SLUG ?>">Danh sách nhà đất</a>
			</h2>
		</div>
	</div>
</section>
<!-- END SECTION HEADINGS -->

<!-- START SECTION PROPERTIES LISTING -->
<section class="properties-right list featured portfolio blog">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-12 blog-pots">
				<?php
					if (count($properties) > 0):
				?>
				<!-- Block heading Start-->
				<div class="block-heading">
					<div class="row">
						<div class="col-lg-6 col-md-5 col-2">
							<h4>
                            <span class="heading-icon">
                            <i class="fa fa-th-list"></i>
                            </span>
                            <span class="hidden-sm-down">Danh sách nhà đất</span>
                        </h4>
						</div>
						<div class="col-lg-6 col-md-7 col-10 cod-pad">
							<div class="sorting-options">
								<select class="sorting" id="sort-property">
									<option value="">Lọc danh sách</option>
									<option value="1" <?=(isset($_GET['sort']) && $_GET['sort'] == 1) ? ' selected' : ''?>>Giá: Từ cao xuống thấp</option>
									<option value="2" <?=(isset($_GET['sort']) && $_GET['sort'] == 2) ? ' selected' : ''?>>Giá: Từ thấp đến cao</option>
								</select>
								<a href="#" id="view-list" class="change-view-btn active-view-btn"><i class="fa fa-th-list"></i></a>
								<a href="#" id="view-grid" class="change-view-btn lde"><i class="fa fa-th-large"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!-- Block heading end -->
				<div id="project-list">
					<div class="row" >
						<?php foreach ($properties as $key => $property): ?>
							<div class="item col-lg-5 col-md-12 col-xs-12 landscapes sale pr-0 pb-0 my-22 ft">
								<div class="project-single mb-0 bb-0">
									<div class="project-inner project-head">
										<div class="project-bottom">
											<h4><a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>">Xem chi tiết</a></h4>
										</div>
										<div class="button-effect">
											<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>" class="btn"><i class="fa fa-link"></i></a>
											<a class="img-poppu btn" href="<?php echo $property['property_avatar']?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
										</div>
										<div class="homes">
											<!-- homes img -->
											<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>" class="homes-img">
												<?php
													if ($key <= PER_PAGE) {
												?>
												<div class="homes-tag button alt featured"><?=($property['property_stick'] == 1) ? 'HOT' : 'NEW' ?></div>
												<?php } ?>
												<div class="homes-tag button alt sale <?=($property['property_category_id'] == 2) ? 'rent' : '' ?>"><?=$property['category_name']?></div>
												<div class="homes-price"><?=$property['type_name']?></div>
												<img src="<?php echo $property['property_avatar']?>" alt="<?php echo $property['property_name']?>" class="img-responsive">
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-7 col-md-12 homes-content pb-0 my-22 ft mb-44">
								<h3><a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>"><?php echo $property['property_name']?></a></h3>
								<p class="homes-address mb-3">
									<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>">
										<i class="fa fa-map-marker"></i><span><?php echo $property['location_name']?></span>
									</a>
								</p>
								<ul class="homes-list clearfix">
									<?php 
										if (isset($property['property_bedroom'])) {
									?>
									<li>
										<i class="fa fa-bed" aria-hidden="true"></i>
										<span>Phòng ngủ: <?=$property['property_bedroom']?></span>
									</li>
									<?php }?>
									<?php 
										if (isset($property['property_bathroom'])) {
									?>
									<li>
										<i class="fa fa-bath" aria-hidden="true"></i>
										<span>Phòng tắm: <?=$property['property_bathroom']?></span>
									</li>
									<?php }?>
									<?php 
										if (isset($property['property_acreage'])) {
									?>
									<li>
										<i class="fa fa-object-group" aria-hidden="true"></i>
										<span>Diện tích: <?=$property['property_acreage']?>m²</span>
									</li>
									<?php }?>
									<?php 
										if (isset($property['property_facade'])) {
									?>
									<li>
										<i class="fas fa-warehouse" aria-hidden="true"></i>
										<span>Mặt tiền: <?=$property['property_facade']?>m²</span>
									</li>
									<?php }?>
								</ul>
								<div class="price-properties">
									<h3 class="title mt-3">
										<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>"><?=number_format($property['property_price'])?> ₫</a>
									</h3>
									<div class="compare">
										<a href="#" title="Thêm vào danh sách yêu thích" class="add-wishlist" data-id="<?=$property['property_id']?>">
											<i class="fa fa-heart-o"></i>
										</a>
									</div>
								</div>
								<div class="footer">
									<i class="fa fa-user"></i> Admin
									<span>
										<i class="fa fa-calendar"></i> <?php echo date('d/m/Y', strtotime($property['property_created_at']))?>
									</span>
								</div>
							</div>
						<?php endforeach;?>
					</div>
				</div>
				<div class="hidden" id="project-grid">
					<div class="row">
						<?php foreach ($properties as $key => $property): ?>
							<div class="item col-lg-6 col-md-6 col-xs-12">
								<div class="project-single">
									<div class="project-inner project-head">
										<div class="project-bottom">
											<h4><a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>">Xem chi tiết</a></h4>
										</div>
										<div class="button-effect">
											<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>" class="btn"><i class="fa fa-link"></i></a>
											<a class="img-poppu btn" href="<?php echo $property['property_avatar']?>" data-rel="lightcase:myCollection:slideshow"><i class="fa fa-photo"></i></a>
										</div>
										<div class="homes">
											<!-- homes img -->
											<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>" class="homes-img">
												<?php
													if ($key <= PER_PAGE) {
												?>
												<div class="homes-tag button alt featured"><?=($property['property_stick'] == 1) ? 'HOT' : 'NEW' ?></div>
												<?php } ?>
												<div class="homes-tag button alt sale <?=($property['property_category_id'] == 2) ? 'rent' : '' ?>"><?=$property['category_name']?></div>
												<div class="homes-price"><?=$property['type_name']?></div>
												<img src="<?php echo $property['property_avatar']?>" alt="<?php echo $property['property_name']?>" class="img-responsive">
											</a>
										</div>
									</div>
									<!-- homes content -->
									<div class="homes-content">
										<!-- homes address -->
										<h3><a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>"><?php echo $property['property_name']?></a></h3>
										<p class="homes-address mb-3">
											<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>">
												<i class="fa fa-map-marker"></i><span><?php echo $property['location_name']?></span>
											</a>
										</p>
										<!-- homes List -->
										<ul class="homes-list clearfix">
											<?php 
												if (isset($property['property_bedroom'])) {
											?>
											<li>
												<i class="fa fa-bed" aria-hidden="true"></i>
												<span>Phòng ngủ: <?=$property['property_bedroom']?></span>
											</li>
											<?php }?>
											<?php 
												if (isset($property['property_bathroom'])) {
											?>
											<li>
												<i class="fa fa-bath" aria-hidden="true"></i>
												<span>Phòng tắm: <?=$property['property_bathroom']?></span>
											</li>
											<?php }?>
											<?php 
												if (isset($property['property_acreage'])) {
											?>
											<li>
												<i class="fa fa-object-group" aria-hidden="true"></i>
												<span>Diện tích: <?=$property['property_acreage']?>m²</span>
											</li>
											<?php }?>
											<?php 
												if (isset($property['property_facade'])) {
											?>
											<li>
												<i class="fas fa-warehouse" aria-hidden="true"></i>
												<span>Mặt tiền: <?=$property['property_facade']?>m²</span>
											</li>
											<?php }?>
										</ul>
										<!-- Price -->
										<div class="price-properties">
											<h3 class="title mt-3">
												<a href="<?=site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>"><?=number_format($property['property_price'])?> ₫</a>
											</h3>
											<div class="compare">
												<a href="#" title="Thêm vào danh sách yêu thích" class="add-wishlist" data-id="<?=$property['property_id']?>">
													<i class="fa fa-heart-o"></i>
												</a>
											</div>
										</div>
										<div class="footer">
											<i class="fa fa-user"></i> Admin
											<span>
												<i class="fa fa-calendar"></i> <?php echo date('d/m/Y', strtotime($property['property_created_at']))?>
											</span>
										</div>
									</div>
								</div>
							</div>
						<?php endforeach;?>
					</div>
				</div>
				<?php 
					echo $links;
				?>
				<?php else: ?>
					Không có bài viết nào!
				<?php endif; ?>
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-property');?>
		</div>
	</div>
</section>