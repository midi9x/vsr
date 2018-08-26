<section class="headings">
	<div class="text-heading text-center">
		<div class="container">
			<h1><?=$new->subject?></h1>
			<h2>
				<a href="<?=site_url()?>" title="Trang chủ">Trang chủ </a> &nbsp;/&nbsp; 
				<a href="<?=site_url() . NEWS_SLUG ?>" title="Tin tức">Tin tức</a> &nbsp;/&nbsp; 
				<a href="<?=site_url() . NEWS_GROUP_SLUG . $new->group_slug ?>" title="<?=$new->group_name?>"><?=$new->group_name?></a>
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
					<div class="col-md-12 mb-5">
						<div class="single-blog-post">
							<div class="blog-list img-box">
								<img src="<?php echo $new->avatar?>" alt="<?php echo $new->subject ?>">
								<div class="social">
									<span class="date"><?php echo date('d', strtotime($new->datecreated)) ?><span><?php echo date('m', strtotime($new->datecreated)) ?></span></span>
									<a href="<?php echo site_url() . NEWS_SLUG . $new->slug ?>/" title="<?php echo $new->subject ?>"><i class="fa fa-user-o"></i><span>Admin</span></a>
									<a href="<?php echo site_url() . NEWS_SLUG . $new->slug ?>/" title="<?php echo $new->subject ?>"><i class="fa fa-eye"></i><span><?php echo total_rows('tblviewstracking',array('rel_type'=>'new','rel_id'=>$new->articleid)); ?></span></a>
								</div>
							</div>
							<div class="blog-info">
								<a href="<?=$url?>"><h3 class="mb-2"><?php echo $new->subject ?></h3></a>
								<?php echo $new->description ?>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-news');?>
		</div>
	</div>
</section>