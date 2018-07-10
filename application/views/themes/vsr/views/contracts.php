<div class="panel_s">
    <div class="panel-body">
        <h4 class="no-margin"><?php echo _l('clients_contracts'); ?></h4>
    </div>
</div>
<div class="panel_s">
    <div class="panel-body">
        <div class="col-md-12">
            <p><?php echo _l('contract_summary_by_type'); ?></p>
            <div class="relative" style="max-height:300px;">
                <canvas class="chart" height="300" id="contracts-by-type-chart"></canvas>
            </div>
        </div>
        <div class="clearfix"></div>
        <table class="table dt-table table-contracts" data-order-col="4" data-order-type="asc">
            <thead>
                <tr>
                    <th><?php echo _l('clients_contracts_dt_subject'); ?></th>
                    <th><?php echo _l('clients_contracts_type'); ?></th>
                    <th><?php echo _l('signature'); ?></th>
                    <th><?php echo _l('clients_contracts_dt_start_date'); ?></th>
                    <th><?php echo _l('clients_contracts_dt_end_date'); ?></th>
                    <?php
                    $custom_fields = get_custom_fields('contracts',array('show_on_client_portal'=>1));
                    foreach($custom_fields as $field){ ?>
                    <th><?php echo $field['name']; ?></th>
                    <?php } ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach($contracts as $contract){
                    $expiry_class = '';
                    if (!empty($contract['dateend'])) {
                        $_date_end = date('Y-m-d', strtotime($contract['dateend']));
                        if ($_date_end < date('Y-m-d')) {
                            $expiry_class = 'alert-danger';
                        }
                    }
                    ?>
                    <tr class="<?php echo $expiry_class; ?>">
                        <td>
                            <?php
                            echo '<a href="'.site_url('contract/'.$contract['id'].'/'.$contract['hash']).'">'.$contract['subject'].'</a>';
                            ?>
                        </td>
                        <td><?php echo $contract['type_name']; ?></td>
                        <td>
                            <?php
                            if(!empty($contract['signature'])) {
                               echo '<span class="text-success">' . _l('is_signed') . '</span>';
                           } else {
                               echo '<span class="text-muted">' . _l('is_not_signed') . '</span>';
                           }
                           ?>
                       </td>
                       <td data-order="<?php echo $contract['datestart']; ?>"><?php echo _d($contract['datestart']); ?></td>
                       <td data-order="<?php echo $contract['dateend']; ?>"><?php echo _d($contract['dateend']); ?></td>
                       <?php foreach($custom_fields as $field){ ?>
                       <td><?php echo get_custom_field_value($contract['id'],$field['id'],'contracts'); ?></td>
                       <?php } ?>
                   </tr>
                   <?php } ?>
               </tbody>
           </table>
       </div>
   </div>
