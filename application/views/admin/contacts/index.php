<?php init_head(); ?>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <?php if(count($contacts) > 0){ ?>
                        <table class="table dt-table scroll-responsive">
                            <thead>
                                <?php if ($type == CONTACT_TYPE_EMAIL): ?>
                                    <th width="60%"><?php echo _l('contact_email'); ?></th>
                                <?php elseif($type == CONTACT_TYPE_INFO): ?>
                                    <th width="40%"><?php echo _l('contact_name'); ?></th>
                                    <th width="40%"><?php echo _l('contact_phone'); ?></th>
                                <?php else: ?>
                                    <th width="20%"><?php echo _l('contact_name'); ?></th>
                                    <th width="20%"><?php echo _l('contact_email'); ?></th>
                                    <th width="20%"><?php echo _l('contact_phone'); ?></th>
                                <?php endif; ?>
                                <th width="20%"><?php echo _l('options'); ?></th>
                            </thead>
                            <tbody>
                                <?php foreach($contacts as $contact){ ?>
                                <tr>

                                    <?php if ($type == CONTACT_TYPE_EMAIL): ?>
                                        <td><?php echo $contact['contact_email']; ?></td>
                                    <?php elseif($type == CONTACT_TYPE_INFO): ?>
                                        <td><?php echo $contact['contact_name']; ?></td>
                                        <td><?php echo $contact['contact_phone']; ?></td>
                                    <?php else: ?>
                                        <td><?php echo $contact['contact_name']; ?></td>
                                        <td><?php echo $contact['contact_email']; ?></td>
                                        <td><?php echo $contact['contact_phone']; ?></td>
                                    <?php endif; ?>
                                    <td>
                                        <?php if(has_permission('contacts','','edit')){ ?>
                                        <a href="#"
                                            onclick="edit_contact(this,<?php echo $contact['id']; ?>); return false"
                                            data-name="<?php echo $contact['contact_name']; ?>"
                                            data-phone="<?php echo $contact['contact_phone']; ?>"
                                            data-email="<?php echo $contact['contact_email']; ?>"
                                            data-property="<?php echo $contact['contact_property']; ?>"
                                            data-type="<?php echo $contact['type']; ?>"
                                            data-content="<?php echo $contact['contact_content']; ?>"
                                            class="btn btn-default btn-icon">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                        <?php } ?>
                                        <?php if(has_permission('contacts','','delete')){ ?>
                                        <a href="<?php echo admin_url('contacts/delete_contact/'.$contact['id']); ?>" class="btn btn-danger btn-icon _delete"><i class="fa fa-remove"></i></a>
                                        <?php } ?>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <?php } else { ?>
                        <p class="no-margin"><?php echo _l('no_contacts_found'); ?></p>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('admin/contacts/contact'); ?>
<?php init_tail(); ?>
</body>
</html>
