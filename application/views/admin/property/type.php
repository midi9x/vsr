<div class="modal fade" id="property_types_modal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('property/type'),array('id'=>'type_form')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">
                    <span class="edit-title"><?php echo _l('edit_property_type'); ?></span>
                    <span class="add-title"><?php echo _l('new_type'); ?></span>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="additional"></div>
                        <?php echo render_input('type_name','name'); ?>
                        <div id="property_slug" class="hide">
                            <?php echo render_input('type_slug', 'slug'); ?>
                        </div>
                        <?php echo render_select('type_category_id', $categories, ['category_id', 'category_name'], 'category'); ?>
                        <?php echo render_textarea('type_description','description'); ?>
                        <?php echo render_input('type_order','order',total_rows('property_types') + 1,'number'); ?>
                        <div class="disable-option">
                            <div class="checkbox checkbox-primary">
                                <input type="checkbox" name="disabled" id="disabled">
                                <label for="disabled"><?php echo _l('disabled'); ?></label>
                            </div>
                        </div>
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

    _validate_form($('#type_form'), {
        type_name: 'required',
        type_category_id: 'required'
    }, manage_types);

    $('#property_types_modal').on("hidden.bs.modal", function(event) {
        $('#property_slug').addClass('hide');
        $('#property_slug input').rules('remove', 'required');
        $('#additional').html('');
        $('#property_types_modal input').not('[type="hidden"]').val('');
        $('#property_types_modal textarea').val('');
        $('#property_types_modal select[name="type_category_id"]').selectpicker('val', '');
        $('.add-title').removeClass('hide');
        $('.edit-title').removeClass('hide');
        $('#property_types_modal input[name="type_order"]').val($('table tbody tr').length + 1);
    });
});
function manage_types(form) {
    var data = $(form).serialize();
    var url = form.action;
    $.post(url, data).done(function(response) {
        window.location.reload();
    });
    return false;
}

function new_type() {
    $('#property_types_modal').modal('show');
    $('.edit-title').addClass('hide');
}

function edit_type(invoker, id) {
    $('#additional').append(hidden_input('id', id));
    $('#property_slug').removeClass('hide');
    $('#property_slug input').rules('add', {required:true});
    $('#property_slug input').val($(invoker).data('slug'));
    $('#property_types_modal input[name="type_name"]').val($(invoker).data('name'));
    $('#property_types_modal textarea[name="type_description"]').val($(invoker).data('description'));
    $('#property_types_modal input[name="type_order"]').val($(invoker).data('order'));
    $('#property_types_modal select[name="type_category_id"]').selectpicker('val', $(invoker).data('category'));
    $('input[name="disabled"]').prop('checked', ($(invoker).data('active') == 0 ? true : false));
    $('#property_types_modal').modal('show');
    $('.add-title').addClass('hide');
}

</script>
