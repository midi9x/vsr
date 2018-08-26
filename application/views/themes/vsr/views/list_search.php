<section id="main-content">
	<div class="container">
		<div class="row content">
			<div class="col-md-12">
				<h3 class="title float-left text-none">Tìm kiếm<?=isset($_GET['q']) ? ': ' . $_GET['q'] : ''?></h3>
			</div>
			<div class="col-md-9" id="primary">
				<div class="section-content">
					<div class="col-md-12">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="product-tab" data-toggle="tab" href="#product" role="tab" aria-controls="product" aria-selected="true">Sản phẩm</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="project-tab" data-toggle="tab" href="#project" role="tab" aria-controls="project" aria-selected="false">Dự án</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="news-tab" data-toggle="tab" href="#news" role="tab" aria-controls="news" aria-selected="false">Tin tức</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="advice-tab" data-toggle="tab" href="#advice" role="tab" aria-controls="advice" aria-selected="false">Tin tư vấn</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="mreport-tab" data-toggle="tab" href="#mreport" role="tab" aria-controls="mreport" aria-selected="false">Báo cáo thị trường</a>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="product" role="tabpanel" aria-labelledby="product-tab">
								<div class="section">
									<?php if (count($products) > 0): ?>
										<div class="section-content">
											<div class="section bdstt">
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
																		<div class="area">Diện tích: <?php echo number_format($product['property_acreage']) ?>m²</div>
																	<?php endif; ?>

																	<?php if (isset($product['property_quyhoach']) && $product['property_quyhoach'] != ''): ?>
																		<div class="quyhoach">Quy hoạch: <?php echo $product['property_quyhoach'] ?></div>
																	<?php endif; ?>
																</div>
															</div>
														</div>
													</div>
												<?php endforeach; ?>
											</div>
										</div>
									<?php else: ?>
										<div class="text-center my-3">
											Không tìm thấy sản phẩm nào!
										</div>
									<?php endif; ?>
								</div>
							</div>
							<div class="tab-pane fade" id="project" role="tabpanel" aria-labelledby="project-tab">
								<div class="section">
									<?php if (count($projects) > 0): ?>
										<div class="section-content">
											<div class="section bdstt">
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

																	<?php if (isset($project['property_acreage']) && $project['property_acreage'] != ''): ?>
																		<div class="area">Diện tích: <?php echo number_format($project['property_acreage']) ?>m²</div>
																	<?php endif; ?>

																	<?php if (isset($project['property_socan']) && $project['property_socan'] != ''): ?>
																		<div class="quyhoach">Số căn: <?php echo $project['property_socan'] ?></div>
																	<?php endif; ?>
																</div>
															</div>
														</div>
													</div>
												<?php endforeach; ?>
											</div>
										</div>
									<?php else: ?>
										<div class="text-center my-3">
											Không tìm thấy dự án nào!
										</div>
									<?php endif; ?>
								</div>
							</div>
							<div class="tab-pane fade" id="news" role="tabpanel" aria-labelledby="news-tab">
								<?php if (count($news) > 0): ?>
									<div class="section">
										<?php foreach ($news as $key => $new) { ?>
											<div class="row mt-3">
												<div class="col-md-4">
													<a href="<?php echo site_url('/') . NEWS_SLUG . $new['slug']?>" title="<?php echo $new['subject']?>">
														<img src="<?php echo $new['avatar']?>" class="w-100">
													</a>
												</div>
												<div class="col-md-8">
													<h4>
														<a href="<?php echo site_url('/') . NEWS_SLUG . $new['slug']?>" title="<?php echo $new['subject']?>">
															<?php echo $new['subject']?>
														</a>
													</h4>
													<p class="info">
														<span class="float-left">
															<span class="category-icon">
																<i class="fa fa-folder-open"></i>
															</span>
															<a href="<?php echo site_url('/') . NEWS_GROUP_SLUG . $new['group_slug']?>" title="<?php echo $new['group_name']?>">
																<?php echo $new['group_name']?>
															</a>
														</span>
														<span class="float-right">
															<small class="text-muted">
																<span class="date">
																	<?php echo date('d/m/Y', strtotime($new['datecreated'])); ?>
																</span>
																<span class="time">
																	<?php echo date('h:i:s', strtotime($new['datecreated'])); ?>
																</span>
															</small>
														</span>
													</p>
													<p class="description">
														<?php echo mb_substr(strip_tags ($new['description']),0, 300); ?>...
													</p>
												</div>
											</div>
										<?php } ?>
									</div>
								<?php else: ?>
									<div class="error-details mt-3 text-center">
					                    Xin lỗi, Không có bài viết nào được tìm thấy!
					                </div>
								<?php endif?>
							</div>
							<div class="tab-pane fade" id="advice" role="tabpanel" aria-labelledby="advice-tab">
								<?php if (count($advices) > 0): ?>
									<div class="section">
										<?php foreach ($advices as $key => $advice) { ?>
											<div class="row mt-3">
												<div class="col-md-4">
													<a href="<?php echo site_url('/') . ADVICES_SLUG . $advice['slug']?>" title="<?php echo $advice['subject']?>">
														<img src="<?php echo $advice['avatar']?>" class="w-100">
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
								<?php else: ?>
									<div class="error-details mt-3 text-center">
					                    Xin lỗi, Không có bài viết nào được tìm thấy!
					                </div>
								<?php endif?>
							</div>
							<div class="tab-pane fade" id="mreport" role="tabpanel" aria-labelledby="mreport-tab">
								<?php if (count($mreports) > 0): ?>
									<div class="section">
										<?php foreach ($mreports as $key => $mreport) { ?>
											<div class="row mt-3">
												<div class="col-md-4">
													<a href="<?php echo site_url('/') . MREPORTS_SLUG . $mreport['slug']?>" title="<?php echo $mreport['subject']?>">
														<img src="<?php echo $mreport['avatar']?>" class="w-100">
													</a>
												</div>
												<div class="col-md-8">
													<h4>
														<a href="<?php echo site_url('/') . MREPORTS_SLUG . $mreport['slug']?>" title="<?php echo $mreport['subject']?>">
															<?php echo $mreport['subject']?>
														</a>
													</h4>
													<p class="info">
														<span class="float-left">
															<span class="category-icon">
																<i class="fa fa-folder-open"></i>
															</span>
															<a href="<?php echo site_url('/') . MREPORTS_GROUP_SLUG . $mreport['group_slug']?>" title="<?php echo $mreport['group_name']?>">
																<?php echo $mreport['group_name']?>
															</a>
														</span>
														<span class="float-right">
															<small class="text-muted">
																<span class="date">
																	<?php echo date('d/m/Y', strtotime($mreport['datecreated'])); ?>
																</span>
																<span class="time">
																	<?php echo date('h:i:s', strtotime($mreport['datecreated'])); ?>
																</span>
															</small>
														</span>
													</p>
													<p class="description">
														<?php echo mb_substr(strip_tags ($mreport['description']),0, 300); ?>...
													</p>
												</div>
											</div>
										<?php } ?>
									</div>
								<?php else: ?>
									<div class="error-details mt-3 text-center">
					                    Xin lỗi, Không có bài viết nào được tìm thấy!
					                </div>
								<?php endif?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-single');?>
		</div>
	</div>
</section>