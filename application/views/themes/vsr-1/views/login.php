<section class="headings">
	<div class="text-heading text-center">
		<div class="container">
			<h1>Đăng nhập</h1>
			<h2><a href="<?=site_url()?>">Trang chủ </a> &nbsp;/&nbsp; Đăng nhập</h2>
		</div>
	</div>
</section>
<div class="py-4" id="login">
	<div class="login">
		<?php echo form_open($this->uri->uri_string(),array('class'=>'login-form')); ?>
		<div class="panel_s">
			<div class="panel-body">
				<div class="form-group">
					<label for="email"><?php echo _l('clients_login_email'); ?></label>
					<input type="text" autofocus="true" class="form-control" name="email" id="email">
					<?php echo form_error('email'); ?>
				</div>
				<div class="form-group">
					<label for="password"><?php echo _l('clients_login_password'); ?></label>
					<input type="password" class="form-control" name="password" id="password">
					<?php echo form_error('password'); ?>
				</div>
				<?php if(get_option('use_recaptcha_customers_area') == 1 && get_option('recaptcha_secret_key') != '' && get_option('recaptcha_site_key') != ''){ ?>
					<div class="g-recaptcha" data-sitekey="<?php echo get_option('recaptcha_site_key'); ?>"></div>
					<?php echo form_error('g-recaptcha-response'); ?>
				<?php } ?>
				<div class="checkbox">
					<input type="checkbox" name="remember" id="remember">
					<label for="remember">
						<?php echo _l('clients_login_remember'); ?>
					</label>
				</div>
				<div class="form-group">
					<button type="submit" class="btn pointer btn-primary btn-block"><?php echo _l('clients_login_login_string'); ?></button>
					<?php if(get_option('allow_registration') == 1) { ?>
						<a href="<?php echo site_url('clients/register'); ?>" class="btn btn-success btn-block"><?php echo _l('clients_register_string'); ?>
						</a>
					<?php } ?>
				</div>
				<a href="<?php echo site_url('clients/forgot_password'); ?>"><?php echo _l('customer_forgot_password'); ?></a>
			<?php echo form_close(); ?>
			</div>
		</div>
	</div>
</div>
