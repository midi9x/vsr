<aside class="col-lg-3 col-md-12 car">
	<div class="widget">
		<!-- Search Fields -->
			<form method="GET" action="<?=site_url() . SEARCH_SLUG . PROPERTY_SLUG ?>" id="formSearch">
			<div class="main-search-field mt-0 pt-0">
				<h5 class="title">Tìm nhà đất</h5>
				<div class="at-col-default-mar">
					<select name="vi-tri">
							<option value="">Vị trí</option>
						<?php
							$locations = get_property_location();
							foreach ($locations as $key => $location) {
								$selected = (isset($_GET['vi-tri']) && $_GET['vi-tri'] == $location['location_id']) ? ' selected' : '';
								echo '<option ' . $selected . ' value="' . $location['location_id'] .'">' . $location['location_name'] .'</option>';
							}
						?>
					</select>
				</div>
				<div class="at-col-default-mar">
					<select name="danh-muc">
						<option value="">Danh mục</option>
						<?php
							$cats = get_property_cat();
							foreach ($cats as $key => $cat) {
								$selected = (isset($_GET['danh-muc']) && $_GET['danh-muc'] == $cat['category_id']) ? ' selected' : '';
								echo '<option ' . $selected . ' value="' . $cat['category_id'] .'">' . $cat['category_name'] .'</option>';
							}
						?>
					</select>
				</div>
				<div class="at-col-default-mar">
					<div class="at-col-default-mar">
						<select name="the-loai">
							<option value="">Thể loại</option>
							<?php
								$types = get_property_type();
								foreach ($types as $key => $type) {
									$selected = (isset($_GET['the-loai']) && $_GET['the-loai'] == $type['type_id']) ? ' selected' : '';
									echo '<option ' . $selected . ' value="' . $type['type_id'] .'">' . $type['type_name'] .'</option>';
								}
							?>
						</select>
					</div>
				</div>
				<div class="at-col-default-mar">
					<select name="phong-ngu">
						<option value="">Phòng ngủ</option>
						<option value="1" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 1) ? ' selected' : ''?>>1</option>
						<option value="2" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 2) ? ' selected' : ''?>>2</option>
						<option value="3" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 3) ? ' selected' : ''?>>3</option>
						<option value="4" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 4) ? ' selected' : ''?>>4</option>
						<option value="5" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 5) ? ' selected' : ''?>>5</option>
						<option value="6" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 6) ? ' selected' : ''?>>6</option>
						<option value="7" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 7) ? ' selected' : ''?>>7</option>
						<option value="8" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 8) ? ' selected' : ''?>>8</option>
						<option value="9" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 9) ? ' selected' : ''?>>9</option>
						<option value="10" <?=(isset($_GET['phong-ngu']) && $_GET['phong-ngu'] == 10) ? ' selected' : ''?>>10</option>
					</select>
				</div>
				<div class="at-col-default-mar">
					<select name="phong-tam">
						<option value="">Phòng tắm</option>
						<option value="1" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 1) ? ' selected' : ''?>>1</option>
						<option value="2" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 2) ? ' selected' : ''?>>2</option>
						<option value="3" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 3) ? ' selected' : ''?>>3</option>
						<option value="4" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 4) ? ' selected' : ''?>>4</option>
						<option value="5" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 5) ? ' selected' : ''?>>5</option>
						<option value="6" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 6) ? ' selected' : ''?>>6</option>
						<option value="7" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 7) ? ' selected' : ''?>>7</option>
						<option value="8" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 8) ? ' selected' : ''?>>8</option>
						<option value="9" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 9) ? ' selected' : ''?>>9</option>
						<option value="10" <?=(isset($_GET['phong-tam']) && $_GET['phong-tam'] == 10) ? ' selected' : ''?>>10</option>
					</select>
				</div>
				<div class="col-lg-12 no-pds mb-4">
					<div class="at-col-default-mar">
						<input class="at-input" type="text" value="<?=isset($_GET['tu-khoa']) ? $_GET['tu-khoa'] : ''?>" name="tu-khoa" placeholder="Từ khóa ...">
					</div>
				</div>
			</div>
			<!-- Price Fields -->
			<div class="main-search-field-2">
				<div class="range-slider">
					<input type="hidden" name="from" id="from" value="<?=isset($_GET['from']) ? $_GET['from'] : ''?>">
					<input type="hidden" name="to" id="to" value="<?=isset($_GET['to']) ? $_GET['to'] : ''?>">
					<input type="text" disabled class="slider_amount m-t-lg-30 m-t-xs-0 m-t-sm-10">
					<div class="slider-range"></div>
				</div>
			</div>
			<div class="col-lg-12 no-pds">
				<div class="at-col-default-mar">
					<button class="btn btn-default hvr-bounce-to-right" type="submit">Tìm kiếm</button>
				</div>
			</div>
		</form>
		<div class="recent-post py-5">
			<h5 class="font-weight-bold mb-4">Nhà đất mới đăng</h5>
			<?php
                $properties = get_property_new();
                $count = count($properties);
                foreach ($properties as $key => $property) {
            ?>
                <div class="recent-main <?=($key == 0 || $key == $count - 1) ? '' : 'my-4'?>">
                    <div class="recent-img">
                        <a href="<?php echo site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>"><img src="<?php echo $property['property_avatar']?>" alt="<?=$property['property_name']?>"></a>
                    </div>
                    <div class="info-img">
                        <a href="<?php echo site_url() . PROPERTY_SLUG . $property['property_slug']?>/" title="<?=$property['property_name']?>"><h6><?=$property['property_name']?></h6></a>
                        <p><?=number_format($property['property_price'])?> ₫</p>
                    </div>
                </div>
            <?php } ?>
		</div>
	</div>
</aside>