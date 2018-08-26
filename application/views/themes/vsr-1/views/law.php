<section class="headings">
	<div class="text-heading text-center">
		<div class="container">
			<h1><?=$law->subject?></h1>
			<h2>
				<a href="<?=site_url()?>" title="Trang chủ">Trang chủ </a> &nbsp;/&nbsp; 
				<a href="<?=site_url() . LAWS_SLUG ?>" title="Luật đặc khu">Luật đặc khu</a> &nbsp;/&nbsp; 
				<a href="<?=site_url() . LAWS_GROUP_SLUG . $law->group_slug ?>" title="<?=$law->group_name?>"><?=$law->group_name?></a>
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
								<img src="<?php echo $law->avatar?>" alt="<?php echo $law->subject ?>">
								<div class="social">
									<span class="date"><?php echo date('d', strtotime($law->datecreated)) ?><span><?php echo date('m', strtotime($law->datecreated)) ?></span></span>
									<a href="<?php echo site_url() . LAWS_SLUG . $law->slug ?>/" title="<?php echo $law->subject ?>"><i class="fa fa-user-o"></i><span>Admin</span></a>
									<a href="<?php echo site_url() . LAWS_SLUG . $law->slug ?>/" title="<?php echo $law->subject ?>"><i class="fa fa-eye"></i><span><?php echo total_rows('tblviewstracking',array('rel_type'=>'law','rel_id'=>$law->articleid)); ?></span></a>
								</div>
							</div>
							<div class="blog-info">
								<a href="<?=$url?>"><h3 class="mb-2"><?php echo $law->subject ?></h3></a>
								<?php echo $law->description ?>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<?php $this->view('themes/' . active_clients_theme() . '/sidebar-laws');?>
		</div>
	</div>
</section>