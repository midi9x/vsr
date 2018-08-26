<section class="headings">
	<div class="text-heading text-center">
		<div class="container">
			<h1><?=isset($isSearch) ? 'Tìm kiếm ' : ''?> Tin tức <?=isset($isGroup) ? $news[0]['group_name'] : ''?></h1>
			<h2>
				<a href="<?=site_url()?>">Trang chủ </a> &nbsp;/&nbsp; 
				<a href="<?=site_url() . NEWS_SLUG ?>" title="Tin tức">Tin tức</a> 
			</h2>
		</div>
	</div>
</section>
<!-- END SECTION HEADINGS -->

<!-- START SECTION BLOG -->
<section class="blog">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-12 blog-pots">
				<div class="row">
				<?php
					$count = count($news);
					if ($count > 0):
						foreach ($news as $key => $new):
				?>
					<div class="col-md-6 space2 space3 hover-effect">
						<div class="single-blog-post">
							<div class="blog-list img-box">
								<img src="<?php echo $new['avatar'] ?>" alt="<?php echo $new['subject'] ?>">
								<div class="social">
									<span class="date"><?php echo date('d', strtotime($new['datecreated'])) ?><span><?php echo date('m', strtotime($new['datecreated'])) ?></span></span>
									<a href="<?php echo site_url() . NEWS_SLUG . $new['slug'] ?>/" title="<?php echo $new['subject'] ?>"><i class="fa fa-user-o"></i><span>Admin</span></a>
									<a href="<?php echo site_url() . NEWS_SLUG . $new['slug'] ?>/" title="<?php echo $new['subject'] ?>"><i class="fa fa-eye"></i><span><?php echo total_rows('tblviewstracking',array('rel_type'=>'new','rel_id'=>$new['articleid'])); ?></span></a>
								</div>
								<div class="overlay">
									<div class="box">
										<div class="content">
											<ul>
												<li><a href="<?php echo site_url() . NEWS_SLUG . $new['slug'] ?>/" title="<?php echo $new['subject'] ?>"><i class="fa fa-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="blog-info">
								<a href="<?php echo site_url() . NEWS_SLUG . $new['slug'] ?>/" title="<?php echo $new['subject'] ?>"><h3 class="mb-2"><?php echo $new['subject'] ?></h3></a>
								<p><?php echo str_split(strip_tags($new['description']), 180)[0] ?>...</p>
								<a href="<?php echo site_url() . NEWS_SLUG . $new['slug'] ?>/" title="<?php echo $new['subject'] ?>" class="btn btn-secondary">Đọc tiếp...</a>
							</div>
						</div>
					</div>
				<?php
						endforeach;
					else:
				?>
					<div class="col-md-12 space2 space3">
						Không có bài viết nào
					</div>
				<?php
					endif;
						
				?>
				</div>
				<div class="pagination">
				<?php 
					if ($count > 0):
						echo $links;
					endif;
				?>
				</div>
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-news');?>
		</div>	
	</div>
</section>