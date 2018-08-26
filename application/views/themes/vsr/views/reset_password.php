<section id="main-content">
  <div class="container">
    <div class="row content">
      <div class="col-md-4 offset-md-4" id="primary">
        <h3 class="title text-none"><?php echo _l('customer_reset_password_heading'); ?></h3>
            <div class="panel-body">
                <?php echo form_open($this->uri->uri_string()); ?>
                <?php echo validation_errors('<div class="alert alert-danger text-center">', '</div>'); ?>
                <?php if($this->session->flashdata('message-danger')){ ?>
                <div class="alert alert-danger">
                    <?php echo $this->session->flashdata('message-danger'); ?>
                </div>
                <?php } ?>
                <?php echo render_input('password','customer_reset_password','','password'); ?>
                <?php echo render_input('passwordr','customer_reset_password_repeat','','password'); ?>
                <div class="form-group">
                    <button type="submit" class="btn btn-info btn-block"><?php echo _l('customer_reset_action'); ?></button>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
  </div>
</section>