<section id="main-content">
	<div class="container">
		<div class="row content">
			<div class="col-md-12">
				<h3 class="title float-left text-none">Dự án</h3>
				<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="<?php echo site_url('/') . PROJECT_SLUG ?>?location=1">Phú Quốc</a>
				<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="<?php echo site_url('/') . PROJECT_SLUG ?>?location=2">Vân Đồn</a>
				<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="<?php echo site_url('/') . PROJECT_SLUG ?>?location=3">Bắc Vân Phong</a>
			</div>
			<div class="col-md-9" id="primary">
				<div class="section-content">
					<div class="section">
						<div class="search">
							<form class="search-bds" action="">
								<div class="form-row">
									<div class="form-group col-md-3">
										<input type="text" name="q" class="form-control" placeholder="Nhập từ khóa" value="<?=isset($_GET['q']) ? $_GET['q'] : ''?>">
									</div>
									<div class="form-group col-md-3">
										<select class="form-control select2" name="category" id="category">
											<option value="">--Chọn danh mục--</option>
											<?php
												$cats = get_property_cat();
												foreach ($cats as $key => $cat) {
													$selected = (isset($_GET['category']) && $_GET['category'] == $cat['category_id']) ? ' selected' : '';
													echo '<option ' . $selected . ' value="' . $cat['category_id'] .'">' . $cat['category_name'] .'</option>';
												}
											?>
										</select>
									</div>
									<div class="form-group col-md-3">
										<select class="form-control select2" name="type" id="type">
											<option value="">--Chọn thể loại--</option>
											<?php
												$types = get_property_type();
												foreach ($types as $key => $type) {
													$selected = (isset($_GET['type']) && $_GET['type'] == $type['type_id']) ? ' selected' : '';
													$disabled = (isset($_GET['category']) && $_GET['category'] == $type['type_category_id']) ? '' : ' disabled';
													echo '<option category="' . $type['type_category_id'] . '" ' . $disabled . $selected . ' value="' . $type['type_id'] .'">' . $type['type_name'] .'</option>';
												}
											?>
										</select>
									</div>
									<div class="form-group col-md-3">
										<select class="form-control select2" name="location" id="location">
											<option value="">--Chọn khu--</option>
											<?php
												$locations = get_property_location();
												foreach ($locations as $key => $location) {
													$selected = (isset($_GET['location']) && $_GET['location'] == $location['location_id']) ? ' selected' : '';
													echo '<option ' . $selected . ' value="' . $location['location_id'] .'">' . $location['location_name'] .'</option>';
												}
											?>
										</select>
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-md-3">
										<select class="form-control select2" name="town" id="town">
											<option value="">--Chọn xã/thị trấn--</option>
											<?php
												$towns = get_property_town();
												foreach ($towns as $key => $town) {
													$selected = (isset($_GET['town']) && $_GET['town'] == $town['town_id']) ? ' selected' : '';
													$disabled = (isset($_GET['location']) && $_GET['location'] == $town['town_location_id']) ? '' : ' disabled';
													echo '<option location="' . $town['town_location_id'] . '" ' . $disabled . $selected . ' value="' . $town['town_id'] .'">' . $town['town_name'] .'</option>';
												}
											?>
										</select>
									</div>
									<div class="form-group col-md-3">
										<select class="form-control select-input" id="acreage">
											<option disabled selected class="d-none">--Chọn diện tích (m²)--</option>
										</select>
										<div class="row absolute mt-1 for-select" style="display: none;">
											<div class="col-6 pr-1">
												<input type="number" class="form-control" placeholder="Từ" id="acreage_from" name="acreage_from" value="<?=isset($_GET['acreage_from']) ? $_GET['acreage_from'] : ''?>">
											</div>
											<div class="col-6 pl-1">
												<input type="number" class="form-control" placeholder="Đến" id="acreage_to" name="acreage_to" value="<?=isset($_GET['acreage_to']) ? $_GET['acreage_to'] : ''?>">
											</div>
										</div>
									</div>
									<div class="form-group col-md-3">
										<select class="form-control select-input" id="price">
											<option disabled selected class="d-none">--Chọn mức giá (₫)--</option>
										</select>
										<div class="row absolute mt-1 for-select" style="display: none;">
											<div class="col-6 pr-1">
												<input type="number" class="form-control" placeholder="Từ" id="price_from" name="price_from" value="<?=isset($_GET['price_from']) ? $_GET['price_from'] : ''?>">
											</div>
											<div class="col-6 pl-1">
												<input type="number" class="form-control" placeholder="Đến" id="price_to" name="price_to" value="<?=isset($_GET['price_to']) ? $_GET['price_to'] : ''?>">
											</div>
										</div>
									</div>
									<div class="form-group col-md-3">
										<button type="submit" class="btn btn-primary btn-timkiem w-100">Tìm kiếm</button>
									</div>
								</div>
							</form>

						</div>

						<?php if (count($properties) > 0): ?>
							<div class="section-content">
								<div class="section bdstt">
									<?php foreach ($properties as $key => $property): ?>
										<div class="row mt-3">
											<div class="col-md-4 pr-md-0">
												<a href="<?php echo site_url('/') . PROJECT_SLUG . $property['property_slug']?>" title="<?php echo $property['property_name']?>">
													<img src="<?php echo $property['property_avatar']?>" alt="<?php echo $property['property_name']?>" class="w-100 cover">
												</a>
												<?php if ($property['property_status'] == 1): ?>
													<img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/dangban.png">
												<?php else: ?>
													<img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/daban.png">
												<?php endif; ?>
												<?php if ($property['property_stick'] == 1): ?>
													<img class="hot" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/hot-bds.png">
												<?php endif; ?>
											</div>
											<div class="col-md-8">
												<h4>
													<a href="<?php echo site_url('/') . PROJECT_SLUG . $property['property_slug']?>" title="<?php echo $property['property_name']?>">
														<?php echo $property['property_name']?>
													</a>
												</h4>
												<p class="info">
													<span class="float-left">
														<span class="category-icon">
															<i class="fa fa-map-marker-alt"></i>
														</span>
														<a href="<?php echo site_url('/') . PROJECT_SLUG?>?location=<?=$property['property_location_id']?>&town=<?=$property['property_town_id']?>" title="<?php echo $property['town_name'] . ', ' . $property['location_name']?>">
															<?php echo $property['town_name'] . ', ' . $property['location_name']?>
														</a>
													</span>
													<span class="float-right">
														<small class="text-muted">
															<span class="date"><?php echo date('d/m/Y', strtotime($property['property_created_at']))?></span>
															<span class="time"><?php echo date('h:i:s', strtotime($property['property_created_at']))?></span>
														</small>
													</span>
												</p>
												<div class="row align-items-top">
													<div class="col-md-8 align-bottom pr-md-0">
														<p class="description text-justify">
															<?php echo mb_substr(strip_tags($property['property_content']),0, 450); ?>...
														</p>
													</div>
													<div class="col-md-4 info-bds align-middle mb-3 text-right">
														<?php if (isset($property['property_price']) && $property['property_price'] != ''): ?>
															<div class="price">Từ <?php echo number_format($property['property_price']) ?>đ</div>
														<?php endif; ?>

														<?php if (isset($property['property_acreage']) && $property['property_acreage'] != ''): ?>
															<div class="area">Diện tích: <?php echo $property['property_acreage'] ?>m²</div>
														<?php endif; ?>

														<?php if (isset($property['property_socan']) && $property['property_socan'] != ''): ?>
															<div class="quyhoach">Số căn: <?php echo $property['property_socan'] ?> căn</div>
														<?php endif; ?>
													</div>
												</div>
											</div>
										</div>
									<?php endforeach; ?>
								</div>
							</div>
							<div class="text-center mt-3">
								<?php echo $links ?>
							</div>
						<?php else: ?>
							<div class="text-center my-3">
								Không tìm thấy dự án nào!
							</div>
						<?php endif; ?>
					</div>
				</div>
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-single');?>
		</div>
	</div>
</section>