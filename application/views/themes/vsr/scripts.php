<?php if(isset($contracts_by_type_chart)){ ?>
<script>
    var contracts_by_type = '<?php echo $contracts_by_type_chart; ?>';
</script>
<?php } ?>
<?php if (isset($home)): ?>
<!-- ARCHIVES JS -->
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery-ui.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/tether.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/moment.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/transition.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/bootstrap.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/fitvids.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.waypoints.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.counterup.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/imagesloaded.pkgd.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/isotope.pkgd.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/smooth-scroll.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/lightcase.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/owl.carousel.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.magnific-popup.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/ajaxchimp.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/newsletter.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.form.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.validate.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/forms-2.js');?>"></script>

<!-- Slider Revolution scripts -->
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/jquery.themepunch.tools.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/jquery.themepunch.revolution.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.actions.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.carousel.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.kenburn.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.layeranimation.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.migration.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.navigation.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.parallax.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.slideanims.min.js');?>"></script>
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/js/extensions/revolution.extension.video.min.js');?>"></script>
<script>
    var tpj = jQuery;
    var revapi34;
    if (tpj("#rev_slider_home").revolution === undefined) {
        revslider_showDoubleJqueryError("#rev_slider_home");
    } else {
        revapi34 = tpj("#rev_slider_home").show().revolution({
            sliderType: "standard",
            jsFileLocation: "assets/themes/vsr/js/revolution-slider/js/",
            sliderLayout: "fullwidth",
            dottedOverlay: "none",
            delay: 9000,
            navigation: {
                keyboardNavigation: "on",
                keyboard_direction: "horizontal",
                mouseScrollNavigation: "off",
                onHoverStop: "on",
                touch: {
                    touchenabled: "on",
                    swipe_threshold: 75,
                    swipe_min_touches: 1,
                    swipe_direction: "horizontal",
                    drag_block_vertical: false
                },
                arrows: {
                    style: "zeus",
                    enable: true,
                    hide_onmobile: true,
                    hide_under: 600,
                    hide_onleave: true,
                    hide_delay: 200,
                    hide_delay_mobile: 1200,
                    tmp: '<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
                    left: {
                        h_align: "left",
                        v_align: "center",
                        h_offset: 30,
                        v_offset: 0
                    },
                    right: {
                        h_align: "right",
                        v_align: "center",
                        h_offset: 30,
                        v_offset: 0
                    }
                },
                bullets: {
                    enable: true,
                    hide_onmobile: true,
                    hide_under: 600,
                    style: "metis",
                    hide_onleave: true,
                    hide_delay: 200,
                    hide_delay_mobile: 1200,
                    direction: "horizontal",
                    h_align: "center",
                    v_align: "bottom",
                    h_offset: 0,
                    v_offset: 30,
                    space: 5,
                    tmp: '<span class="tp-bullet-img-wrap"><span class="tp-bullet-image"></span></span>'
                }
            },
            viewPort: {
                enable: true,
                outof: "pause",
                visible_area: "80%"
            },
            responsiveLevels: [1240, 1024, 778, 480],
            gridwidth: [1240, 1024, 778, 480],
            gridheight: [600, 550, 500, 450],
            lazyType: "none",
            parallax: {
                type: "scroll",
                origo: "enterpoint",
                speed: 400,
                levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 50],
            },
            shadow: 0,
            spinner: "off",
            stopLoop: "off",
            stopAfterLoops: -1,
            stopAtSlide: -1,
            shuffle: "off",
            autoHeight: "off",
            hideThumbsOnMobile: "off",
            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            debugMode: false,
            fallbacks: {
                simplifyAll: "off",
                nextSlideOnWindowFocus: "off",
                disableFocusListener: false,
            }
        });
    }

</script>
<!-- MAIN JS -->
<script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/script.js');?>"></script>
<?php else: ?>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery-ui.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/tether.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/moment.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/transition.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/bootstrap.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/fitvids.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.waypoints.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.counterup.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/imagesloaded.pkgd.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/isotope.pkgd.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/smooth-scroll.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/lightcase.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/owl.carousel.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.magnific-popup.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/ajaxchimp.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/newsletter.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.form.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/jquery.validate.min.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/forms-2.js');?>"></script>
    <!-- MAIN JS -->
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/inner.js');?>"></script>
<?php endif; ?>
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
