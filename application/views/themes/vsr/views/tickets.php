<section id="main-content">
  <div class="container">
    <div class="row content">
      <div class="col-md-12">
        <h3 class="title text-none"><?php echo _l('clients_tickets_heading'); ?></h3>
      </div>
      <div class="col-md-9" id="primary">
        <a href="<?php echo site_url('clients/open_ticket'); ?>" class="btn btn-info float-right">Gửi hỗ trợ mới</a>
        <div class="row">
          <?php foreach($ticket_statuses as $status){ ?>
            <div class="col-md-<?=($status['ticketstatusid'] == 2) ? '3' : '2';?> border-right">
              <h3 class="bold">
                <?php
                $where_tickets = array('userid'=>get_client_user_id(),'status'=>$status['ticketstatusid']);
                if (!is_primary_contact() && get_option('only_show_contact_tickets') == 1) {
                  $where_tickets['tbltickets.contactid'] = get_contact_user_id();
                }
                ?>
                <a href="<?php echo site_url('clients/tickets/'.$status['ticketstatusid']); ?>">
                  <?php echo total_rows('tbltickets',$where_tickets); ?>
                </a>
              </h3>
              <span style="color:<?php echo $status['statuscolor']; ?>"><?php echo ticket_status_translate($status['ticketstatusid']); ?></span>
            </div>
          <?php } ?>
        </div>
        <?php get_template_part('tickets_table'); ?>
      </div>
      <?php $this->view('themes/' . active_clients_theme() . '/sidebar-single');?>
    </div>
  </div>
</section>