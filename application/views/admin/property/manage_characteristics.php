<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                       <div class="_buttons">
                        <?php if(has_permission('property','','create')){ ?>
                        <div class="_buttons">
                            <a href="#" onclick="new_characteristic(); return false;" class="btn btn-info pull-left display-block">
                                <?php echo _l('new_characteristic'); ?>
                            </a>
                            <?php } ?>
                            <a href="<?php echo admin_url('property'); ?>" class="btn btn-info pull-left display-block mleft5">
                                <?php echo _l('als_all_articles'); ?>
                            </a>
                            <div class="clearfix"></div>
                            <hr class="hr-panel-heading" />
                        </div>
                        <?php if(count($characteristics) > 0){ ?>
                        <table class="table dt-table scroll-responsive">
                            <thead>
                                <th><?php echo _l('name'); ?></th>
                                <th><?php echo _l('active'); ?></th>
                                <th><?php echo _l('options'); ?></th>
                            </thead>
                            <tbody>
                                <?php foreach($characteristics as $characteristic){ ?>
                                <tr>
                                    <td><?php echo $characteristic['characteristic_name']; ?> </td>
                                    <td>
                                        <div class="onoffswitch">
                                            <input type="checkbox" id="<?php echo $characteristic['characteristic_id']; ?>" data-id="<?php echo $characteristic['characteristic_id']; ?>" class="onoffswitch-checkbox" <?php if(!has_permission('property','','edit')){ echo 'disabled'; } ?> data-switch-url="<?php echo admin_url(); ?>property/change_characteristic_status" <?php if($characteristic['characteristic_active'] == 1){echo 'checked';} ?>>
                                            <label class="onoffswitch-label" for="<?php echo $characteristic['characteristic_id']; ?>"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <?php if(has_permission('property','','edit')){ ?>
                                        <a href="#" onclick="edit_characteristic(this,<?php echo $characteristic['characteristic_id']; ?>); return false" data-name="<?php echo $characteristic['characteristic_name']; ?>" data-description="<?php echo clear_textarea_breaks($characteristic['characteristic_description']); ?>" data-order="<?php echo $characteristic['characteristic_order']; ?>" data-active="<?php echo $characteristic['characteristic_active']; ?>" data-slug="<?php echo $characteristic['characteristic_slug']; ?>" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a>
                                        <?php } ?>
                                        <?php if(has_permission('property','','delete')){ ?>
                                        <a href="<?php echo admin_url('property/delete_characteristic/'.$characteristic['characteristic_id']); ?>" class="btn btn-danger btn-icon _delete"><i class="fa fa-remove"></i></a>
                                        <?php } ?>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <?php } else { ?>
                        <p class="no-margin"><?php echo _l('property_no_characteristics_found'); ?></p>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('admin/property/characteristic'); ?>
<?php init_tail(); ?>
</body>
</html>
