<footer>
	<div class="subscribe">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-1">
					<div class="subscribe-text-left">
						<i class="fa fa-envelope"></i>
					</div>
					<div class="subscribe-text-right">
						Đăng ký nhận bản tin VSR<br>
						Đừng bỏ lỡ những cơ hội đầu tư hấp dẫn nhất
					</div>
				</div>
				<div class="col-md-6">
					<?php echo form_open(site_url('add_contact'), ['class' => 'form-inline']); ?>
						<input type="hidden" name="type" value="<?php echo CONTACT_TYPE_EMAIL; ?>">
						<input type="email" name="contact_email" placeholder="Nhập địa chỉ email của bạn" class="form-control mb-2 mr-sm-2 input-subscribe" required>
						<button type="submit" class="btn btn-primary mb-2 btn-subscribe">Đăng ký</button>
					<?php echo form_close(); ?>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-widget">
		<div class="container">
			<div class="row">
				<div class="col-md-3 widget">
					<h3>Hỗ trợ khách hàng</h3>
					<ul>
						<li><a href="<?=site_url('/')?>clients/register">Đăng ký thành viên</a></li>
						<li><a href="<?=site_url('/') . SEARCH_SLUG ?>">Tìm kiếm bất động sản</a></li>
						<li><a href="<?=site_url('/') . ADVICES_SLUG ?>">Thông tin tư vấn</a></li>
					</ul>
				</div>
				<div class="col-md-3 widget">
					<h3>Về VSR</h3>
					<ul>
						<li><a href="<?=site_url('/')?>gioi-thieu">Giới thiệu</a></li>
						<li><a href="<?=site_url('/')?>tuyen-dung">Tuyển dụng</a></li>
						<li><a href="<?=site_url('/')?>chinh-sach-bao-mat">Chính sách bảo mật</a></li>
					</ul>
				</div>
				<div class="col-md-3 widget">
					<?php
						$footer_doitac = get_option('footer_doitac');
						$footer_doitac = json_decode($footer_doitac);
					?>
					<h3>Đối tác tin cậy</h3>
					<div class="row doitac">
						<?php foreach ($footer_doitac as $key => $doitac):?>
							<div class="col-4 mb-3">
								<img src="<?php echo $doitac;?>" class="w-100">
							</div>
						<?php endforeach;?>
					</div>
				</div>
				<div class="col-md-3 widget">
					<h3>Kết nối với chúng tôi</h3>
					<ul>
						<li><a href="<?=get_option('footer_facebook')?>" title="Facebook">Facebook</a></li>
						<li><a href="<?=get_option('footer_google')?>" title="Google+">Google+</a></li>
						<li><a href="<?=get_option('footer_youtube')?>" title="Youtube">Youtube</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="footer-copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					Bản quyền thuộc về VSR. Cấm sao chép nội dung dưới mọi hình thức nếu không có sự chấp thuận bằng văn bản từ VSR.
				</div>
			</div>
		</div>
	</div> -->
</footer>