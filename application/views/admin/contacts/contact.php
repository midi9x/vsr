<div class="modal fade" id="contact_modal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('contacts/contact'),array('id'=>'contact_form')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">
                    <span><?php echo _l('edit_contact'); ?></span>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="additional"></div>
                        <?php echo render_input('contact_name', 'contact_name'); ?>
                        <?php echo render_input('contact_email', 'contact_email'); ?>
                        <?php echo render_input('contact_phone', 'contact_phone'); ?>

                        <?php echo render_textarea('contact_property','contact_property'); ?>
                        <?php echo render_textarea('contact_content','contact_content'); ?>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                <button type="submit" class="btn btn-info"><?php echo _l('submit'); ?></button>
            </div>
        </div>
        <!-- /.modal-content -->
        <?php echo form_close(); ?>
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
const CONTACT_TYPE_EMAIL = 1;
const CONTACT_TYPE_INFO = 2;
const CONTACT_TYPE_PROPERTY = 3;
const CONTACT_TYPE_CONTACT = 4;

window.addEventListener('load',function(){
    _validate_form($('#contact_form'), {
        // contact_name: 'required'
    }, manage_contacts);

    // On hidden modal reset the values
    $('#contact_modal').on("hidden.bs.modal", function(event) {
        $('#additional').html('');
        $('#contact_modal input').not('[type="hidden"]').val('');
        $('#contact_modal textarea').val('');
    });
});

function manage_contacts(form) {
    var data = $(form).serialize();
    var url = form.action;
    $.post(url, data).done(function(response) {
       window.location.reload();
    });
    return false;
}


function edit_contact(invoker, id) {
    $('#additional').append(hidden_input('id', id));
    var type = $(invoker).data('type');
    $('#contact_modal input').parent('.form-group').hide();
    $('#contact_modal textarea').parent('.form-group').hide();
    if (type == CONTACT_TYPE_EMAIL) {
        $('#contact_modal input[name="contact_email"]').val($(invoker).data('email')).parent('.form-group').show();

    } else if (type == CONTACT_TYPE_INFO) {
        $('#contact_modal input[name="contact_name"]').val($(invoker).data('name')).parent('.form-group').show();;
        $('#contact_modal input[name="contact_phone"]').val($(invoker).data('phone')).parent('.form-group').show();;
    } else if (type == CONTACT_TYPE_PROPERTY) {
        $('#contact_modal input[name="contact_name"]').val($(invoker).data('name')).parent('.form-group').show();;
        $('#contact_modal input[name="contact_email"]').val($(invoker).data('email')).parent('.form-group').show();;
        $('#contact_modal input[name="contact_phone"]').val($(invoker).data('phone')).parent('.form-group').show();;
        $('#contact_modal textarea[name="contact_property"]').val($(invoker).data('property')).parent('.form-group').show();;
    } else {
        $('#contact_modal input[name="contact_name"]').val($(invoker).data('name')).parent('.form-group').show();;
        $('#contact_modal input[name="contact_email"]').val($(invoker).data('email')).parent('.form-group').show();;
        $('#contact_modal input[name="contact_phone"]').val($(invoker).data('phone')).parent('.form-group').show();;
        $('#contact_modal textarea[name="contact_content"]').val($(invoker).data('content')).parent('.form-group').show();;
    }
    $('#contact_modal').modal('show');
}

</script>
