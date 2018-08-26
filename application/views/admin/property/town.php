<div class="modal fade" id="property_towns_modal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('property/town'),array('id'=>'town_form')); ?>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">
                    <span class="edit-title"><?php echo _l('edit_property_town'); ?></span>
                    <span class="add-title"><?php echo _l('new_town'); ?></span>
                </h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="additional"></div>
                        <?php echo render_input('town_name','name'); ?>
                        <div id="property_slug" class="hide">
                            <?php echo render_input('town_slug', 'slug'); ?>
                        </div>
                        <?php echo render_select('town_location_id', $locations, ['location_id', 'location_name'], 'location'); ?>
                        <?php echo render_textarea('town_description','description'); ?>
                        <?php echo render_input('town_order','order',total_rows('property_towns') + 1,'number'); ?>
                        <?php echo render_input('town_seo_title', 'seo_title'); ?>
                        <?php echo render_textarea('town_seo_description', 'seo_description'); ?>
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

    _validate_form($('#town_form'), {
        town_name: 'required',
        town_location_id: 'required',
        town_seo_title: 'required',
        town_seo_description: 'required'
    }, manage_towns);

    $('#property_towns_modal').on("hidden.bs.modal", function(event) {
        $('#property_slug').addClass('hide');
        $('#property_slug input').rules('remove', 'required');
        $('#additional').html('');
        $('#property_towns_modal input').not('[town="hidden"]').val('');
        $('#property_towns_modal textarea').val('');
        $('#property_towns_modal select[name="town_location_id"]').selectpicker('val', '');
        $('.add-title').removeClass('hide');
        $('.edit-title').removeClass('hide');
        $('#property_towns_modal input[name="town_order"]').val($('table tbody tr').length + 1);
    });
});
function manage_towns(form) {
    var data = $(form).serialize();
    var url = form.action;
    $.post(url, data).done(function(response) {
        window.location.reload();
    });
    return false;
}

function new_town() {
    $('#property_towns_modal').modal('show');
    $('.edit-title').addClass('hide');
}

function edit_town(invoker, id) {
    $('#additional').append(hidden_input('id', id));
    $('#property_slug').removeClass('hide');
    $('#property_slug input').rules('add', {required:true});
    $('#property_slug input').val($(invoker).data('slug'));
    $('#property_towns_modal input[name="town_name"]').val($(invoker).data('name'));
    $('#property_towns_modal textarea[name="town_description"]').val($(invoker).data('description'));
    $('#property_towns_modal input[name="town_order"]').val($(invoker).data('order'));
    $('#property_towns_modal select[name="town_location_id"]').selectpicker('val', $(invoker).data('location'));
    $('#property_towns_modal input[name="town_seo_title"]').val($(invoker).data('seo-title'));
    $('#property_towns_modal textarea[name="town_seo_description"]').val($(invoker).data('seo-description'));
    $('input[name="disabled"]').prop('checked', ($(invoker).data('active') == 0 ? true : false));
    $('#property_towns_modal').modal('show');
    $('.add-title').addClass('hide');
}

</script>
