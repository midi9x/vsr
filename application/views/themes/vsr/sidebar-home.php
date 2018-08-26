<div class="col-md-3 pl-md-0" id="secondary">
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
			Gửi thông tin<br>
			Để nhận tư vấn miễn phí
		</div>

		<?php echo form_open(site_url('add_contact')); ?>
			<input type="hidden" name="type" value="<?php echo CONTACT_TYPE_INFO; ?>">
			<input type="text" class="form-control mb-2" name="contact_name" placeholder="Họ tên" required>
			<input type="number" class="form-control mb-3" name="contact_phone" placeholder="Điện thoại" required>
			<button class="btn btn-primary btn-dang-ky w-100">Đăng ký</button>
		<?php echo form_close(); ?>

	</div>
	<?php if (get_option('active_banner_3') == 1):?>
		<div class="banner mb-3">
			<a href="<?=get_option('url_banner_2')?>" target="_blank">
				<img src="<?=get_option('image_banner_2')?>" class="w-100">
			</a>
		</div>
	<?php endif;?>
	<?php if (get_option('active_banner_3') == 1):?>
		<div class="banner mb-3">
			<a href="<?=get_option('url_banner_3')?>" target="_blank">
				<img src="<?=get_option('image_banner_3')?>" class="w-100">
			</a>
		</div>
	<?php endif;?>
</div>