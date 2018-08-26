<div class="col-md-3 pl-md-0 news-sidebar" id="secondary">
	<?php if (get_option('active_banner_1') == 1):?>
		<div class="banner mb-3">
			<a href="<?=get_option('url_banner_1')?>" target="_blank">
				<img src="<?=get_option('image_banner_1')?>" class="w-100">
			</a>
		</div>
	<?php endif;?>
	<div class="form mb-3">
		<div class="subscribe-text-left mb-2">
			<i class="fa fa-envelope"></i>
		</div>
		<div class="subscribe-text-right text-uppercase mb-2">
			Nhận tin từ VSR
		</div>

		<?php echo form_open(site_url('add_contact')); ?>
			<input type="hidden" name="type" value="<?php echo CONTACT_TYPE_PROPERTY; ?>">
			<input type="text" class="form-control mb-2" name="contact_name" required placeholder="Họ tên">
			<input type="number" class="form-control mb-2" name="contact_phone" required placeholder="Điện thoại">
			<input type="email" class="form-control mb-2" name="contact_email" required placeholder="Email">
			<label>Loại hình bạn quan tâm</label>
			<div class="mb-2 of-auto">
				<div class="form-check new">
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="contact_property[]" value="Đất nền"> Đất nền

					</label>
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="contact_property[]" value="Đất dự án"> Đất dự án
					</label>
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="contact_property[]" value="Đất mặt phố"> Đất mặt phố
					</label>
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="contact_property[]" value="Đất công"> Đất công
					</label>
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="contact_property[]" value="Đất mặt biển"> Đất mặt biển
					</label>
					<label class="form-check-label">
						<input class="form-check-input" type="checkbox" name="contact_property[]" value="Đất khác"> Đất khác
					</label>
				</div>
			</div>
			<button class="btn btn-primary btn-dang-ky w-100">Đăng ký</button>
		<?php echo form_close(); ?>
	</div>
	<h3 class="title text-none mt-3">Dự án hot</h3>
	<div class="section-content">
		<div class="section">
			<?php
				$properties = get_property_hot();
				foreach ($properties as $key => $property):
			?>
				<div class="item border-bottom my-2">
					<div class="row">
						<div class="col-md-4 pr-md-1">
							<a href="<?php echo site_url('/') . PROJECT_SLUG . $property['property_slug']?>" title="<?php echo $property['property_name']?>">
								<img src="<?php echo $property['property_avatar']?>" alt="<?php echo $property['property_name']?>" class="w-100">
							</a>
						</div>
						<div class="col-md-8 pl-md-0">
							<h4>
								<a href="<?php echo site_url('/') . PROJECT_SLUG . $property['property_slug']?>" title="<?php echo $property['property_name']?>">
									<?php echo $property['property_name']?>
								</a>
							</h4>
							<p class="info">
								<span class="float-left">
									<span class="category-icon icon-2">
										<i class="fa fa-map-marker-alt"></i>
									</span>
									<a class="category-name" href="<?php echo site_url('/') . PROJECT_SLUG?>?location=<?=$property['property_location_id']?>" title="<?php echo $property['location_name']?>">
										<?php echo $property['location_name']?>
									</a>
								</span>
								<span class="float-right">
									<small class="text-muted">
										<span class="date"><?php echo date('d/m/Y', strtotime($property['property_created_at']))?></span>
										<span class="time"><?php echo date('h:i:s', strtotime($property['property_created_at']))?></span>
									</small>
								</span>
							</p>
							<p class="description">
								<?php echo mb_substr(strip_tags($property['property_content']),0, 100); ?>...
							</p>
						</div>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</div>

	<h3 class="title text-none mt-3">Tư vấn Bất động sản</h3>
	<div class="section-content">
		<div class="section">
			<?php
				$advices = get_advice_new();
				foreach ($advices as $key => $advice):
			?>
				<div class="item border-bottom my-2">
					<div class="row">
						<div class="col-md-8 pr-md-0">
							<h4>
								<a href="<?php echo site_url('/') . ADVICES_SLUG . $advice['slug']?>" title="<?php echo $advice['subject']?>"><?php echo $advice['subject']?></a>
							</h4>
							<p class="info">
								<span class="float-left">
									<span class="category-icon">
										<i class="fa fa-folder-open"></i>
									</span>
									<a class="category-name" href="<?php echo site_url('/') . ADVICES_GROUP_SLUG . $advice['group_slug']?>" title="<?php echo $advice['group_name']?>">
										<?php echo $advice['group_name']?>
									</a>
								</span>
								<span class="float-right">
									<small class="text-muted">
										<span class="date">
											<?php echo date('d/m/Y', strtotime($advice['datecreated'])); ?>
										</span>
										<span class="time">
											<?php echo date('h:i:s', strtotime($advice['datecreated'])); ?>
										</span>
									</small>
								</span>
							</p>
							<p class="description"><?php echo mb_substr(strip_tags ($advice['description']),0, 80); ?>...</p>
						</div>
						<div class="col-md-4 pl-md-1">
							<a href="<?php echo site_url('/') . ADVICES_SLUG . $advice['slug']?>" title="<?php echo $advice['subject']?>">
								<img src="<?php echo $advice['avatar']?>" class="w-100">
							</a>
						</div>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</div>
</div>