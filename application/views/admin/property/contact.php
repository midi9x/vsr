<div class="modal fade" id="property_contacts_modal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('property/contact'),array('id'=>'contact_form')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">
                    <span><?php echo _l('edit_property_contact'); ?></span>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="additional"></div>
                        <?php echo render_input('contact_name','contact_name'); ?>
                        <?php echo render_input('contact_phone','contact_phone'); ?>
                        <?php echo render_input('contact_email','contact_email'); ?>
                        <?php echo render_input('contact_address','contact_address'); ?>
                        <?php echo render_textarea('contact_message','contact_message'); ?>
                        <?php echo render_select('contact_status',[['id'=> '1', 'name' => 'Đang xử lý'], ['id' => '2', 'name' => 'Đã xử lý']],array('id','name'),'contact_status'); ?>
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
    window.addEventListener('load',function(){

    _validate_form($('#contact_form'), {
        contact_name: 'required',
        contact_phone: 'required',
        contact_email: 'required',
        contact_address: 'required',
        contact_message: 'required',
        contact_status: 'required',
    }, manage_contacts);

    $('#property_contacts_modal').on("hidden.bs.modal", function(event) {
        $('#additional').html('');
        $('#property_contacts_modal input').not('[type="hidden"]').val('');
        $('#property_contacts_modal textarea').val('');
        $('#property_contacts_modal select[name="contact_status"]').selectpicker('val', '');
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
    $('#property_contacts_modal input[name="contact_name"]').val($(invoker).data('name'));
    $('#property_contacts_modal textarea[name="contact_message"]').val($(invoker).data('message'));
    $('#property_contacts_modal input[name="contact_phone"]').val($(invoker).data('phone'));
    $('#property_contacts_modal input[name="contact_email"]').val($(invoker).data('email'));
    $('#property_contacts_modal input[name="contact_address"]').val($(invoker).data('address'));
    $('#property_contacts_modal select[name="contact_status"]').selectpicker('val', $(invoker).data('status'));
    $('#property_contacts_modal').modal('show');
}

</script>
