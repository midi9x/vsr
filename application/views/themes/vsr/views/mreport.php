<section id="main-content">
	<div class="container">
		<div class="row content">
			<div class="col-md-12">
				<h3 class="title text-none"><?php echo $mreport->subject ?></h3>
			</div>
			<div class="col-md-9" id="primary">
				<div class="section-content">
					<div class="section">
						<div class="thumb">
							<img src="<?php echo $mreport->avatar ?>" class="w-100" alt="<?php echo $mreport->subject ?>">
						</div>
						<div class="post-info mt-3 mb-2">
							<small class="text-muted">
								<span class="date">
									Đăng bởi: <?=$mreport->author?> | 
									<?php echo date('d/m/Y', strtotime($mreport->datecreated)) ?>
								</span>
								<span class="time"> <?php echo date('h:i:s', strtotime($mreport->datecreated)) ?></span>
							</small>
							<div class="fb-like" data-href="<?php echo site_url() . MREPORTS_SLUG . $mreport->slug?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
							<div class="zalo-share-button" data-href="<?php echo site_url() . MREPORTS_SLUG . $mreport->slug?>" data-oaid="3622065111560619881" data-layout="1" data-color="blue" data-customize=false></div>
							<g:plusone class="x" size="medium"></g:plusone>
						</div>

						<div>
							<?php echo $mreport->description ?>
						</div>
						<h3 class="title text-none">Báo cáo thị trường liên quan</h3>
						<div class="section-content">
							<div class="section">
								<?php foreach ($related as $relate) { ?>
								<div class="row mt-3">
									<div class="col-md-4">
										<a href="<?php echo site_url('/') . MREPORTS_SLUG . $relate['slug'];?>" title="<?php echo $relate['subject'];?>">
											<img src="<?php echo $relate['avatar'];?>" class="w-100" alt="<?php echo $relate['subject'];?>">
										</a>
									</div>
									<div class="col-md-8">
										<h4>
											<a href="<?php echo site_url('/') . MREPORTS_SLUG . $relate['slug'];?>" title="<?php echo $relate['subject'];?>">
												<?php echo $relate['subject'];?>
											</a>
										</h4>
										<p class="info">
											<span class="float-left">
												<span class="category-icon">
													<i class="fa fa-folder-open"></i>
												</span>
												<a href="<?php echo site_url('/') . MREPORTS_GROUP_SLUG . $relate['group_slug']?>" title="<?php echo $relate['group_name']?>">
													<?php echo $relate['group_name']?>
												</a>
											</span>
											<span class="float-right">
												<small class="text-muted">
													<span class="date">
														<?php echo date('d/m/Y', strtotime($relate['datecreated'])); ?>
													</span>
													<span class="time">
														<?php echo date('h:i:s', strtotime($relate['datecreated'])); ?>
													</span>
												</small>
											</span>
										</p>
										<p class="description">
											<?php echo mb_substr(strip_tags ($relate['description']),0, 300); ?>...
										</p>
									</div>
								</div>
								<?php } ?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-single');?>
		</div>
	</div>
</section>