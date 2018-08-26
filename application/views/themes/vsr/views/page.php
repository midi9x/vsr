<section id="main-content">
	<div class="container">
		<div class="row content">
			<div class="col-md-12">
				<h3 class="title <?=($page->slug == 'gioi-thieu') ? ' float-left' : ''?>"><?=$page->subject?></h3>
				<?php if ($page->slug == 'gioi-thieu'): ?>
					<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="#trietly">Triết lý kinh doanh</a>
					<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="#hoachdinh">Hoạch định - Sứ mệnh</a>
					<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="#giatri">Giá trị cốt lõi</a>
					<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="#linhvuc">Lĩnh vực hoạt động</a>
					<a class="d-block d-md-inline ml-md-5 clear-sm-about" href="#nangluc">Năng lực hoạt động</a>
				<?php endif;?>
				<?php if ($page->slug == 'lien-he'): ?>
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="350" id="gmap_canvas" src="https://maps.google.com/maps?q=T%C3%B2a%20nh%C3%A0%20An%20Ph%C3%BA%2C%20S%E1%BB%91%2024%20Ho%C3%A0ng%20Qu%E1%BB%91c%20Vi%E1%BB%87t%2C%20Ngh%C4%A9a%20%C4%90%C3%B4%2C%20C%E1%BA%A7u%20Gi%E1%BA%A5y%2C%20H%C3%A0%20N%E1%BB%99i&t=&z=16&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:350px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:350px;width:100%;}</style></div>
				<?php endif;?>
			</div>
			<div class="page-content">
				<?=$page->description?>
			</div>
		</div>
	</div>
</section>