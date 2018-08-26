<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery-3.3.1.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/all.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/select2.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/popper.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/bootstrap.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/app.js');?>"></script>
<?php if (isset($social)):?>
<script src="https://sp.zalo.me/plugins/sdk.js"></script>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.1&appId=1131330883545257&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<?php endif;?>
<?php
// DONT REMOVE THIS LINE
do_action('customers_after_js_scripts_load');
?>
<?php
$alertclass = "";
if($this->session->flashdata('message-success')){
    $alertclass = "success";
} else if ($this->session->flashdata('message-warning')){
    $alertclass = "warning";
} else if ($this->session->flashdata('message-info')){
    $alertclass = "info";
} else if ($this->session->flashdata('message-danger')){
    $alertclass = "danger";
}
if($alertclass != ''){
$alert_message = '';
    $alert = $this->session->flashdata('message-'.$alertclass);
    if(is_array($alert)){
        foreach($alert as $alert_data){
            $alert_message.= '<span>'.$alert_data . '</span><br />';
        }
    } else {
        $alert_message .= $alert;
    }
?>
<script>
    $(function(){
        alert_float('<?php echo $alertclass; ?>','<?php echo $alert_message; ?>');
    });
</script>
<?php } ?>