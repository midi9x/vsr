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
                            <a href="#" onclick="new_location(); return false;" class="btn btn-info pull-left display-block">
                                <?php echo _l('new_location'); ?>
                            </a>
                            <?php } ?>
                            <a href="<?php echo admin_url('property'); ?>" class="btn btn-info pull-left display-block mleft5">
                                <?php echo _l('als_all_articles'); ?>
                            </a>
                            <div class="clearfix"></div>
                            <hr class="hr-panel-heading" />
                        </div>
                        <?php if(count($locations) > 0){ ?>
                        <table class="table dt-table scroll-responsive">
                            <thead>
                                <th><?php echo _l('name'); ?></th>
                                <th><?php echo _l('active'); ?></th>
                                <th><?php echo _l('options'); ?></th>
                            </thead>
                            <tbody>
                                <?php foreach($locations as $location){ ?>
                                <tr>
                                    <td><?php echo $location['location_name']; ?> <span class="badge mleft5"><?php echo total_rows('property','property_location_id='.$location['location_id']); ?></span></td>
                                    <td>
                                        <div class="onoffswitch">
                                            <input type="checkbox" id="<?php echo $location['location_id']; ?>" data-id="<?php echo $location['location_id']; ?>" class="onoffswitch-checkbox" <?php if(!has_permission('property','','edit')){ echo 'disabled'; } ?> data-switch-url="<?php echo admin_url(); ?>property/change_location_status" <?php if($location['location_active'] == 1){echo 'checked';} ?>>
                                            <label class="onoffswitch-label" for="<?php echo $location['location_id']; ?>"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <?php if(has_permission('property','','edit')){ ?>
                                        <a href="#" onclick="edit_location(this,<?php echo $location['location_id']; ?>); return false" data-name="<?php echo $location['location_name']; ?>" data-description="<?php echo clear_textarea_breaks($location['location_description']); ?>" data-order="<?php echo $location['location_order']; ?>" data-active="<?php echo $location['location_active']; ?>" data-slug="<?php echo $location['location_slug']; ?>" data-seo-title="<?php echo $location['location_seo_title']; ?>" data-seo-description="<?php echo $location['location_seo_description']; ?>" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a>
                                        <?php } ?>
                                        <?php if(has_permission('property','','delete')){ ?>
                                        <a href="<?php echo admin_url('property/delete_location/'.$location['location_id']); ?>" class="btn btn-danger btn-icon _delete"><i class="fa fa-remove"></i></a>
                                        <?php } ?>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <?php } else { ?>
                        <p class="no-margin"><?php echo _l('property_no_locations_found'); ?></p>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('admin/property/location'); ?>
<?php init_tail(); ?>
</body>
</html>
