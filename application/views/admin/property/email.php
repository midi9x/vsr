<div class="modal fade" id="property_categories_modal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('property/category'),array('id'=>'category_form')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">
                    <span class="edit-title"><?php echo _l('edit_property_category'); ?></span>
                    <span class="add-title"><?php echo _l('new_category'); ?></span>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="additional"></div>
                        <?php echo render_input('category_name','name'); ?>
                        <div id="property_slug" class="hide">
                            <?php echo render_input('category_slug', 'slug'); ?>
                        </div>
                        <?php echo render_textarea('category_description','description'); ?>
                        <?php echo render_input('category_order','order',total_rows('property_categories') + 1,'number'); ?>
                        <div class="kb-group-disable-option">
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

    // Validating the knowledge group form
    _validate_form($('#category_form'), {
        category_name: 'required'
    }, manage_kb_groups);

    // On hidden modal reset the values
    $('#property_categories_modal').on("hidden.bs.modal", function(event) {
        $('#property_slug').addClass('hide');
        $('#property_slug input').rules('remove', 'required');
        $('#additional').html('');
        $('#property_categories_modal input').not('[type="hidden"]').val('');
        $('#property_categories_modal textarea').val('');
        $('.add-title').removeClass('hide');
        $('.edit-title').removeClass('hide');
        $('#property_categories_modal input[name="category_order"]').val($('table tbody tr').length + 1);
    });
});
// Form handler function for knowledgebase group
function manage_kb_groups(form) {
    var data = $(form).serialize();
    var url = form.action;
    $.post(url, data).done(function(response) {
        window.location.reload();
    });
    return false;
}

// New knowledgebase group, opens modal
function new_kb_group() {
    $('#property_categories_modal').modal('show');
    $('.edit-title').addClass('hide');
}

// Edit KB group, 2 places groups view or articles view directly click on kanban
function edit_kb_group(invoker, id) {
    $('#additional').append(hidden_input('id', id));
    $('#property_slug').removeClass('hide');
    $('#property_slug input').rules('add', {required:true});
    $('#property_slug input').val($(invoker).data('slug'));
    $('#property_categories_modal input[name="category_name"]').val($(invoker).data('name'));
    $('#property_categories_modal textarea[name="category_description"]').val($(invoker).data('description'));
    $('#property_categories_modal input[name="category_order"]').val($(invoker).data('order'));
    $('input[name="disabled"]').prop('checked', ($(invoker).data('active') == 0 ? true : false));
    $('#property_categories_modal').modal('show');
    $('.add-title').addClass('hide');
}

</script>
