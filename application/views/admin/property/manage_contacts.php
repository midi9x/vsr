<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                       <div class="_buttons">
                            <a href="<?php echo admin_url('property'); ?>" class="btn btn-info pull-left display-block mleft5">
                                <?php echo _l('als_all_articles'); ?>
                            </a>
                            <div class="clearfix"></div>
                            <hr class="hr-panel-heading" />
                        </div>
                        <?php if(count($contacts) > 0){ ?>
                        <table class="table dt-table scroll-responsive">
                            <thead>
                                <th><?php echo _l('property_string'); ?></th>
                                <th><?php echo _l('contact_name'); ?></th>
                                <th><?php echo _l('contact_phone'); ?></th>
                                <th><?php echo _l('contact_email'); ?></th>
                                <th><?php echo _l('contact_status'); ?></th>
                                <th><?php echo _l('options'); ?></th>
                            </thead>
                            <tbody>
                                <?php foreach($contacts as $contact){ ?>
                                <tr>
                                    <td>
                                        <a href="<?php echo admin_url('property/article/'.$contact['property_id']); ?>" target="_blank">
                                            <?php echo $contact['property_name']; ?>
                                        </a>
                                    </td>
                                    <td><?php echo $contact['contact_name']; ?> </td>
                                    <td><?php echo $contact['contact_phone']; ?> </td>
                                    <td><?php echo $contact['contact_email']; ?> </td>
                                    <td><?php 
                                        if ($contact['contact_status'] == 1) {
                                            echo 'Đang xử lý';
                                        } else {
                                            echo 'Đã xử lý';
                                        }
                                    ?> </td>
                                    <td>
                                        <?php if(has_permission('property','','edit')){ ?>
                                        <a href="#" onclick="edit_contact(this,<?php echo $contact['contact_id']; ?>); return false" data-name="<?php echo $contact['contact_name']; ?>" data-phone="<?php echo $contact['contact_phone']; ?>" data-email="<?php echo $contact['contact_email']; ?>" data-address="<?php echo $contact['contact_address']; ?>" data-message="<?php echo $contact['contact_message']; ?>" data-status="<?php echo $contact['contact_status']; ?>" class="btn btn-default btn-icon"><i class="fa fa-pencil-square-o"></i></a>
                                        <?php } ?>
                                        <?php if(has_permission('property','','delete')){ ?>
                                        <a href="<?php echo admin_url('property/delete_contact/'.$contact['contact_id']); ?>" class="btn btn-danger btn-icon _delete"><i class="fa fa-remove"></i></a>
                                        <?php } ?>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <?php } else { ?>
                        <p class="no-margin"><?php echo _l('property_no_contacts_found'); ?></p>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('admin/property/contact'); ?>
<?php init_tail(); ?>
</body>
</html>
