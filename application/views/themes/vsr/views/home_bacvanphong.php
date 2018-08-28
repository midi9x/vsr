<section id="main-content">
	<div class="container">
		<div class="row content">
			<div class="col-md-9" id="primary">
				<?php
					if (empty($news) && empty($advices) && empty($mreports) && empty($products) && empty($projects)) {
						echo '<div class="error-details mt-3 text-center"> Xin lỗi, Không có bài viết nào được tìm thấy!</div>';
					}
				?>
				<?php if (count($news) > 0): ?>
					<div class="row">
						<div class="col-md-6 col-lg-6">
							<!-- artigo em destaque -->
							<div class="featured-article">
								<a href="<?php echo site_url('/') . NEWS_SLUG . $news[0]['slug'];?>" title="<?php echo $news[0]['subject']?>">
									<img src="<?php echo $news[0]['avatar']?>" alt="<?php echo $news[0]['subject']?>" class="thumb" style="width: 100%">
								</a>
								<img src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/tieudiem.png" class="tieudiem">
								<div class="block-title">
									<h2><a href="<?php echo site_url('/') . NEWS_SLUG . $news[0]['slug'];?>" title="<?php echo $news[0]['subject']?>"><?php echo $news[0]['subject']?></a></h2>
									<small class="text-muted">
										<span class="date"><?php echo date('d/m/Y', strtotime($news[0]['datecreated']))?></span>
										<span class="time"><?php echo date('h:i:s', strtotime($news[0]['datecreated']))?></span>
									</small>
									<p>
										<?php echo mb_substr(strip_tags($news[0]['description']),0, 500); ?>...
									</p>
								</div>
							</div>
							<!-- /.featured-article -->
						</div>
						<div class="col-md-6 col-lg-6 pl-md-0">
							<h3 class="title">Thế giới bất động sản 7 ngày qua</h3>
							<div class="list-group news">
								<?php foreach ($news as $key => $new): ?>
									<?php if ($key == 0) continue; ?>
									<div class="list-group-item flex-column align-items-start">
										<h5 class="mb-1">
											<a href="<?php echo site_url('/') . NEWS_SLUG . $new['slug'];?>" title="<?php echo $new['subject']?>"><?php echo $new['subject']?></a>
										</h5>
										<p class="mb-1">
											<?php echo mb_substr(strip_tags($new['description']),0, 150); ?>...
											<small class="text-muted float-right">
												<span class="date"><?php echo date('d/m/Y', strtotime($new['datecreated']))?></span>
												<span class="time"><?php echo date('h:i:s', strtotime($new['datecreated']))?></span>
											</small>
										</p>
									</div>
								<?php endforeach;?>
							</div>
						</div>
					</div>
				<?php endif;?>
				<div class="section-content">
					<?php if (count($advices) > 0): ?>
						<div class="section">
							<nav class="navbar navbar-expand-md navbar-dark bg-dark section-menu">
								<a class="navbar-brand d-block d-md-none" href="<?php echo site_url('/') . ADVICES_SLUG?>" title="Tư vấn đầu tư">Tư vấn đầu tư</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-1" aria-controls="menu-1" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="menu-1">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item active">
											<a class="nav-link" href="<?php echo site_url('/') . ADVICES_SLUG?>" title="Tư vấn đầu tư">Tư vấn đầu tư</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . ADVICES_LOCATION_SLUG . PHU_QUOC_SLUG?>" title="Tư vấn đầu tư Phú Quốc">Tư vấn đầu tư Phú Quốc</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . ADVICES_LOCATION_SLUG . VAN_DON_SLUG?>" title="Tư vấn đầu tư Vân Đồn">Tư vấn đầu tư Vân Đồn</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . ADVICES_LOCATION_SLUG . BAC_VAN_PHONG_SLUG?>" title="Tư vấn đầu tư Bắc Vân Phong">Tư vấn đầu tư Bắc Vân Phong</a>
										</li>
									</ul>
								</div>
							</nav>
							<div class="row mt-3">
								<div class="col-md-4">
									<a href="<?php echo site_url('/') . ADVICES_SLUG . $advices[0]['slug']?>" title="<?php echo $advices[0]['subject']?>">
										<img src="<?php echo $advices[0]['avatar']?>" alt="<?php echo $advices[0]['subject']?>" class="w-100 cover">
									</a>
								</div>
								<div class="col-md-8">
									<h4>
										<a href="<?php echo site_url('/') . ADVICES_SLUG . $advices[0]['slug']?>" title="<?php echo $advices[0]['subject']?>">
											<?php echo $advices[0]['subject']?>
										</a>
									</h4>
									<p class="info">
										<span class="float-left">
											<span class="category-icon">
												<i class="fa fa-folder-open"></i>
											</span>
											<a href="<?php echo site_url('/') . ADVICES_GROUP_SLUG . $advices[0]['group_slug']?>" title="<?php echo $advices[0]['group_name']?>">
												<?php echo $advices[0]['group_name']?>
											</a>
										</span>
										<span class="float-right">
											<small class="text-muted">
												<span class="date"><?php echo date('d/m/Y', strtotime($advices[0]['datecreated']))?></span>
												<span class="time"><?php echo date('h:i:s', strtotime($advices[0]['datecreated']))?></span>
											</small>
										</span>
									</p>
									<p class="description">
										<?php echo mb_substr(strip_tags($advices[0]['description']),0, 500); ?>...
									</p>
								</div>
							</div>
							<ul class="list-group list-group-flush">
								<?php foreach ($advices as $key => $advice): ?>
									<?php if ($key == 0) continue; ?>
									<li class="list-group-item">
										<h5>
											<a href="<?php echo site_url('/') . ADVICES_SLUG . $advice['slug']?>" title="<?php echo $advice['subject']?>">
												<img class="list" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/list.png"> <?php echo $advice['subject']?>
											</a>
										</h5>
									</li>
								<?php endforeach;?>
							</ul>
							<span class="float-right my-2"><a class="read-more" href="<?php echo site_url('/') . ADVICES_LOCATION_SLUG ?>bac-van-phong" title="Xem tiếp">Xem tiếp ...</a></span>
						</div>
					<?php endif;?>

					<?php if (count($mreports) > 0): ?>
						<div class="section">
							<nav class="navbar navbar-expand-md navbar-dark bg-dark section-menu">
								<a class="navbar-brand d-block d-md-none" href="<?php echo site_url('/') . MREPORTS_SLUG?>" title="Báo cáo thị trường">Báo cáo thị trường</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-2" aria-controls="menu-2" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="menu-2">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item active">
											<a class="nav-link" href="<?php echo site_url('/') . MREPORTS_SLUG?>" title="Báo cáo thị trường">Báo cáo thị trường</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . MREPORTS_LOCATION_SLUG . PHU_QUOC_SLUG?>" title="Báo cáo thị trường Phú Quốc">Thị trường Phú Quốc</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . MREPORTS_LOCATION_SLUG . VAN_DON_SLUG?>" title="Báo cáo thị trường Vân Đồn">Thị trường Vân Đồn</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . MREPORTS_LOCATION_SLUG . BAC_VAN_PHONG_SLUG?>" title="Báo cáo thị trường Bắc Vân Phong">Thị trường Bắc Vân Phong</a>
										</li>
									</ul>
								</div>
							</nav>
							<div class="row mt-3">
								<div class="col-md-4">
									<a href="<?php echo site_url('/') . MREPORTS_SLUG . $mreports[0]['slug']?>" title="<?php echo $mreports[0]['subject']?>">
										<img src="<?php echo $mreports[0]['avatar']?>" alt="<?php echo $mreports[0]['subject']?>" class="w-100 cover">
									</a>
								</div>
								<div class="col-md-8">
									<h4>
										<a href="<?php echo site_url('/') . MREPORTS_SLUG . $mreports[0]['slug']?>" title="<?php echo $mreports[0]['subject']?>">
											<?php echo $mreports[0]['subject']?>
										</a>
									</h4>
									<p class="info">
										<span class="float-left">
											<span class="category-icon">
												<i class="fa fa-folder-open"></i>
											</span>
											<a href="<?php echo site_url('/') . MREPORTS_GROUP_SLUG . $mreports[0]['group_slug']?>" title="<?php echo $mreports[0]['group_name']?>">
												<?php echo $mreports[0]['group_name']?>
											</a>
										</span>
										<span class="float-right">
											<small class="text-muted">
												<span class="date"><?php echo date('d/m/Y', strtotime($mreports[0]['datecreated']))?></span>
												<span class="time"><?php echo date('h:i:s', strtotime($mreports[0]['datecreated']))?></span>
											</small>
										</span>
									</p>
									<p class="description">
										<?php echo mb_substr(strip_tags($mreports[0]['description']),0, 500); ?>...
									</p>
								</div>
							</div>
							<ul class="list-group list-group-flush">
								<?php foreach ($mreports as $key => $mreport): ?>
									<?php if ($key == 0) continue; ?>
									<li class="list-group-item">
										<h5>
											<a href="<?php echo site_url('/') . MREPORTS_SLUG . $mreport['slug']?>" title="<?php echo $mreport['subject']?>">
												<img class="list" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/list.png"> <?php echo $mreport['subject']?>
											</a>
										</h5>
									</li>
								<?php endforeach;?>
							</ul>
							<span class="float-right my-2"><a class="read-more" href="<?php echo site_url('/') . MREPORTS_LOCATION_SLUG?>bac-van-phong" title="Xem tiếp">Xem tiếp ...</a></span>
						</div>
					<?php endif;?>

					<?php if (count($products) > 0): ?>
						<div class="section bdstt">
							<nav class="navbar navbar-expand-md navbar-dark bg-dark section-menu">
								<a class="navbar-brand d-block d-md-none" href="<?php echo site_url('/') . PRODUCT_SLUG?>">Sản phẩm</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-3" aria-controls="menu-3" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="menu-3">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item active">
											<a class="nav-link" href="<?php echo site_url('/') . PRODUCT_SLUG?>">Sản phẩm</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . PRODUCT_SLUG?>?location=1">Phú Quốc</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . PRODUCT_SLUG?>?location=2">Vân Đồn</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . PRODUCT_SLUG?>?location=3">Bắc Vân Phong</a>
										</li>

									</ul>
								</div>
							</nav>
							<?php foreach ($products as $key => $product): ?>
								<div class="row mt-3">
									<div class="col-md-4 pr-md-0">
										<a href="<?php echo site_url('/') . PRODUCT_SLUG . $product['property_slug']?>" title="<?php echo $product['property_name']?>">
											<img src="<?php echo $product['property_avatar']?>" alt="<?php echo $product['property_name']?>" class="w-100 cover">
										</a>
										<?php if ($product['property_status'] == 1): ?>
											<img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/dangban.png">
										<?php else: ?>
											<img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/daban.png">
										<?php endif; ?>
										<?php if ($product['property_stick'] == 1): ?>
                                            <img class="hot" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/hot-bds.png">
                                        <?php endif; ?>
									</div>
									<div class="col-md-8">
										<h4>
											<a href="<?php echo site_url('/') . PRODUCT_SLUG . $product['property_slug']?>" title="<?php echo $product['property_name']?>">
												<?php echo $product['property_name']?>
											</a>
										</h4>
										<p class="info">
											<span class="float-left">
												<span class="category-icon">
													<i class="fa fa-map-marker-alt"></i>
												</span>
												<a href="<?php echo site_url('/') . PRODUCT_SLUG?>?location=<?=$product['property_location_id']?>&town=<?=$product['property_town_id']?>" title="<?php echo $product['town_name'] . ', ' . $product['location_name']?>">
													<?php echo $product['town_name'] . ', ' . $product['location_name']?>
												</a>
											</span>
											<span class="float-right">
												<small class="text-muted">
													<span class="date"><?php echo date('d/m/Y', strtotime($product['property_created_at']))?></span>
													<span class="time"><?php echo date('h:i:s', strtotime($product['property_created_at']))?></span>
												</small>
											</span>
										</p>
										<div class="row align-items-top">
											<div class="col-md-8 align-bottom pr-md-0">
												<p class="description text-justify">
													<?php echo mb_substr(strip_tags($product['property_content']),0, 450); ?>...
												</p>
											</div>
											<div class="col-md-4 info-bds align-middle mb-3 text-right">
												<?php if (isset($product['property_price']) && $product['property_price'] != ''): ?>
													<div class="price"><?php echo number_format($product['property_price']) ?>đ</div>
												<?php endif; ?>

												<?php if (isset($product['property_acreage']) && $product['property_acreage'] != ''): ?>
													<div class="area">Diện tích: <?php echo $product['property_acreage'] ?>m²</div>
												<?php endif; ?>

												<?php if (isset($product['property_quyhoach']) && $product['property_quyhoach'] != ''): ?>
													<div class="quyhoach">Quy hoạch: <?php echo $product['property_quyhoach'] ?></div>
												<?php endif; ?>
											</div>
										</div>
									</div>
								</div>
							<?php endforeach; ?>

							<span class="float-right my-2"><a class="read-more" href="<?php echo site_url('/') . PRODUCT_SLUG?>?location=3">Xem tiếp ...</a></span>
						</div>
					<?php endif;?>

					<?php if (count($projects) > 0): ?>
						<div class="section bdstt">
							<nav class="navbar navbar-expand-md navbar-dark bg-dark section-menu">
								<a class="navbar-brand d-block d-md-none" href="<?php echo site_url('/') . PROJECT_SLUG?>">Dự án</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu-4" aria-controls="menu-4" aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="menu-4">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item active">
											<a class="nav-link" href="<?php echo site_url('/') . PROJECT_SLUG?>">Dự án</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . PROJECT_SLUG?>?location=1">Phú Quốc</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . PROJECT_SLUG?>?location=2">Vân Đồn</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="<?php echo site_url('/') . PROJECT_SLUG?>?location=3">Bắc Vân Phong</a>
										</li>

									</ul>
								</div>
							</nav>
							<?php foreach ($projects as $key => $project): ?>
								<div class="row mt-3">
									<div class="col-md-4 pr-md-0">
										<a href="<?php echo site_url('/') . PROJECT_SLUG . $project['property_slug']?>" title="<?php echo $project['property_name']?>">
											<img src="<?php echo $project['property_avatar']?>" alt="<?php echo $project['property_name']?>" class="w-100 cover">
										</a>
										<?php if ($project['property_status'] == 1): ?>
											<img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/dangban.png">
										<?php else: ?>
											<img class="status" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/daban.png">
										<?php endif; ?>
										<?php if ($project['property_stick'] == 1): ?>
                                            <img class="hot" src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/hot-bds.png">
                                        <?php endif; ?>
									</div>
									<div class="col-md-8">
										<h4>
											<a href="<?php echo site_url('/') . PROJECT_SLUG . $project['property_slug']?>" title="<?php echo $project['property_name']?>">
												<?php echo $project['property_name']?>
											</a>
										</h4>
										<p class="info">
											<span class="float-left">
												<span class="category-icon">
													<i class="fa fa-map-marker-alt"></i>
												</span>
												<a href="<?php echo site_url('/') . PROJECT_SLUG?>?location=<?=$project['property_location_id']?>&town=<?=$project['property_town_id']?>" title="<?php echo $project['town_name'] . ', ' . $project['location_name']?>">
													<?php echo $project['town_name'] . ', ' . $project['location_name']?>
												</a>
											</span>
											<span class="float-right">
												<small class="text-muted">
													<span class="date"><?php echo date('d/m/Y', strtotime($project['property_created_at']))?></span>
													<span class="time"><?php echo date('h:i:s', strtotime($project['property_created_at']))?></span>
												</small>
											</span>
										</p>
										<div class="row align-items-top">
											<div class="col-md-8 align-bottom pr-md-0">
												<p class="description text-justify">
													<?php echo mb_substr(strip_tags($project['property_content']),0, 450); ?>...
												</p>
											</div>
											<div class="col-md-4 info-bds align-middle mb-3 text-right">
												<?php if (isset($project['property_price']) && $project['property_price'] != ''): ?>
													<div class="price">Từ <?php echo number_format($project['property_price']) ?>đ</div>
												<?php endif; ?>

												<?php if (isset($project['property_acreage'])  && $project['property_acreage'] != ''): ?>
													<div class="area">Diện tích: <?php echo $project['property_acreage'] ?>m²</div>
												<?php endif; ?>

												<?php if (isset($project['property_socan']) && $project['property_socan'] != ''): ?>
													<div class="quyhoach">Số căn: <?php echo $project['property_socan'] ?> căn</div>
												<?php endif; ?>
											</div>
										</div>
									</div>
								</div>
							<?php endforeach; ?>

							<span class="float-right my-2"><a class="read-more" href="<?php echo site_url('/') . PROJECT_SLUG?>?location=3">Xem tiếp ...</a></span>
						</div>
					<?php endif;?>
				</div>
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-home');?>
		</div>
	</div>
</section>