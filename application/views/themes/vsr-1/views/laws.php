<section class="headings">
	<div class="text-heading text-center">
		<div class="container">
			<h1><?=isset($isSearch) ? 'Tìm kiếm ' : ''?> Luật đặc khu <?=isset($isGroup) ? $laws[0]['group_name'] : ''?></h1>
			<h2>
				<a href="<?=site_url()?>">Trang chủ </a> &nbsp;/&nbsp; 
				<a href="<?=site_url() . LAWS_SLUG ?>" title="Luật đặc khu">Luật đặc khu</a> 
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
					$count = count($laws);
					if ($count > 0):
						foreach ($laws as $key => $law):
				?>
					<div class="col-md-6 space2 space3 hover-effect">
						<div class="single-blog-post">
							<div class="blog-list img-box">
								<img src="<?php echo $law['avatar'] ?>" alt="<?php echo $law['subject'] ?>">
								<div class="social">
									<span class="date"><?php echo date('d', strtotime($law['datecreated'])) ?><span><?php echo date('m', strtotime($law['datecreated'])) ?></span></span>
									<a href="<?php echo site_url() . LAWS_SLUG . $law['slug'] ?>/" title="<?php echo $law['subject'] ?>"><i class="fa fa-user-o"></i><span>Admin</span></a>
									<a href="<?php echo site_url() . LAWS_SLUG . $law['slug'] ?>/" title="<?php echo $law['subject'] ?>"><i class="fa fa-eye"></i><span><?php echo total_rows('tblviewstracking',array('rel_type'=>'law','rel_id'=>$law['articleid'])); ?></span></a>
								</div>
								<div class="overlay">
									<div class="box">
										<div class="content">
											<ul>
												<li><a href="<?php echo site_url() . LAWS_SLUG . $law['slug'] ?>/" title="<?php echo $law['subject'] ?>"><i class="fa fa-link"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="blog-info">
								<a href="<?php echo site_url() . LAWS_SLUG . $law['slug'] ?>/" title="<?php echo $law['subject'] ?>"><h3 class="mb-2"><?php echo $law['subject'] ?></h3></a>
								<p><?php echo str_split(strip_tags($law['description']), 180)[0] ?>...</p>
								<a href="<?php echo site_url() . LAWS_SLUG . $law['slug'] ?>/" title="<?php echo $law['subject'] ?>" class="btn btn-secondary">Đọc tiếp...</a>
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
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-laws');?>
		</div>	
	</div>
</section>