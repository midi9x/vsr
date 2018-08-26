<section id="main-content">
	<div class="container">
		<div class="row content">
			<div class="col-md-12">
				<h3 class="title float-left text-none">
					<?php
						if (isset($is_group) && count($advices) > 0):
							echo $advices[0]['group_name'];
						elseif(isset($is_location) && count($advices) > 0):
							echo 'Tin tư vấn ' . $advices[0]['location_name'];;
						else:
							echo 'Tin tư vấn';
						endif;
					?>
				</h3>
				<?php foreach ($locations as $location) { ?>
					<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="<?php echo site_url('/') . ADVICES_LOCATION_SLUG . $location['location_slug']?>"><?php echo $location['location_name'];?></a>
				<?php } ?>
			</div>
			<div class="col-md-9" id="primary">
				<div class="section-content">
					<div class="section">
						<?php if (count($advices) > 0): ?>
							<div class="featured-post">
								<div class="thumb relative">
									<a href="<?php echo site_url('/') . ADVICES_SLUG . $advices[0]['slug']?>" title="<?php echo $advices[0]['subject']?>">
										<img src="<?php echo $advices[0]['avatar']?>" class="w-100">
									</a>
									<span class="hot"><img src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/hot.png"></span>
								</div>
								<div class="info">
									<span class="float-left">
										<h4>
											<a href="<?php echo site_url('/') . ADVICES_SLUG . $advices[0]['slug']?>" title="<?php echo $advices[0]['subject']?>">
												<?php echo $advices[0]['subject']?>
											</a>
										</h4>
									</span>
									<span class="float-right">
										<small class="text-muted">
											<span class="date">
												<?php echo date('d/m/Y', strtotime($advices[0]['datecreated'])); ?>
											</span>
											<span class="time">
												<?php echo date('h:i:s', strtotime($advices[0]['datecreated'])); ?>
											</span>
										</small>
									</span>
								</div>
								<p class="description">
									<?php echo mb_substr(strip_tags ($advices[0]['description']),0, 500); ?>...
								</p>
							</div>

							<h3 class="title mt-3">Mới nhất</h3>
							<div class="section-content">
								<div class="section">
									<?php foreach ($advices as $key => $advice) { ?>
										<?php if ($key == 0) continue; ?>
										<div class="row mt-3">
											<div class="col-md-4">
												<a href="<?php echo site_url('/') . ADVICES_SLUG . $advice['slug']?>" title="<?php echo $advice['subject']?>">
													<img src="<?php echo $advice['avatar']?>" class="w-100 cover" alt="<?php echo $advice['subject']?>">
												</a>
											</div>
											<div class="col-md-8">
												<h4>
													<a href="<?php echo site_url('/') . ADVICES_SLUG . $advice['slug']?>" title="<?php echo $advice['subject']?>">
														<?php echo $advice['subject']?>
													</a>
												</h4>
												<p class="info">
													<span class="float-left">
														<span class="category-icon">
															<i class="fa fa-folder-open"></i>
														</span>
														<a href="<?php echo site_url('/') . ADVICES_GROUP_SLUG . $advice['group_slug']?>" title="<?php echo $advice['group_name']?>">
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
												<p class="description">
													<?php echo mb_substr(strip_tags ($advice['description']),0, 300); ?>...
												</p>
											</div>
										</div>
									<?php } ?>
								</div>
							</div>
							<div class="text-center mt-3">
								<?php echo $links; ?>
							</div>
						<?php else: ?>
							<div class="error-details mt-3">
			                    Xin lỗi, Không có bài viết nào được tìm thấy!
			                </div>
						<?php endif?>
					</div>
				</div>
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-single');?>
		</div>
	</div>
</section>