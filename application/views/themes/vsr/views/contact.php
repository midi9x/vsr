<section id="main-content">
	<div class="container">
		<div class="row content">
			<div class="col-md-12">
				<h3 class="title">Liên hệ</h3>
				<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="350" id="gmap_canvas" src="https://maps.google.com/maps?q=T%C3%B2a%20nh%C3%A0%20An%20Ph%C3%BA%2C%20S%E1%BB%91%2024%20Ho%C3%A0ng%20Qu%E1%BB%91c%20Vi%E1%BB%87t%2C%20Ngh%C4%A9a%20%C4%90%C3%B4%2C%20C%E1%BA%A7u%20Gi%E1%BA%A5y%2C%20H%C3%A0%20N%E1%BB%99i&t=&z=16&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:350px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:350px;width:100%;}</style></div>
			</div>
			<div class="page-content">
				<div class="row mx-0">
					<div class="col-md-6 my-3">
						<h4 class="title">Liên hệ trực tiếp <span class="arrow-right "></span></h4>
						<div class="content">
							<div class="item">
								<i class="fa fa-map-marker-alt"></i> VPGD Hà Nội 1: Tầng 11, Tòa Nhà An Phú Building, Số 24 Hoàng Quốc Việt, Phường Nghĩa Đô, Quận Cầu Giấy, Hà Nội.
							</div>
							<div class="item">
								<i class="fa fa-map-marker-alt"></i> VPGD Hà Nội 2: Tầng 1 tòa nha cung tri thức thành phố, Số 1 Tôn Thất Thuyết, Hà Nội.
							</div>
							<div class="item">
								<i class="fa fa-map-marker-alt"></i> VPGD Phú Quốc: 98B Trần Hưng Đạo, thị trấn Dương Đông, Phú Quốc, Tiền Giang.
							</div>
							<div class="item">
								<i class="fa fa-phone-volume"></i> Hotline: 0243.200.3363
							</div>
							<div class="item">
								<i class="fa fa-envelope"></i> Email: contact@vsr.com.vn
							</div>
						</div>
					</div>
					<div class="col-md-6 my-3">
						<h4 class="title">Biểu mẫu online <span class="arrow-right "></span></h4>
						<?php echo form_open(site_url('add_contact')); ?>
							<input type="hidden" name="type" value="<?php echo CONTACT_TYPE_PAGE; ?>">
							<div class="form-group">
								<input type="text" name="contact_name" class="form-control" placeholder="Họ và tên" required>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<input type="text" name="contact_phone" class="form-control" placeholder="Số điện thoại" required>
								</div>
								<div class="form-group col-md-6">
									<input type="email" name="contact_email" class="form-control" placeholder="Email" required>
								</div>
							</div>
							<div class="form-group">
								<textarea rows="3" name="contact_content" class="form-control" placeholder="Lời nhắn của bạn ..." required></textarea>
							</div>
							<button type="submit" class="btn btn-primary btn-lienhe float-right">Gửi thư</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>