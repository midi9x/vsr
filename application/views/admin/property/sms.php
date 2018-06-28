<div class="modal fade" id="send-sms"  role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('property/category'),array('id'=>'send-sms-form')); ?>
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">
                        <span class="edit-title"><?php echo _l('send_sms'); ?></span>
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <?php echo render_input('category_name','name'); ?>
                            <?php 
                            $selected = array();
                            echo render_select('groups_in[]',$client_groups,array('id','name'),'customer_groups',$selected,array('multiple'=>true,'data-actions-box'=>true),array(),'','',false);
                            ?>
                            <?php echo render_textarea('category_description','description'); ?>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                    <button type="button" class="btn btn-info"><?php echo _l('send'); ?></button>
                </div>
            </div>
        <?php echo form_close(); ?>
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    window.addEventListener('load',function(){
        // Validating the knowledge group form
        _validate_form($('#send-mail-form'), {
            category_name: 'required'
        }, manage_kb_groups);
    });
    // Form handler function for knowledgebase group
    function manage_kb_groups(form) {
        var data = $(form).serialize();
        var url = form.action;
        $.post(url, data).done(function(response) {
            // action
        });
        return false;
    }
</script>
