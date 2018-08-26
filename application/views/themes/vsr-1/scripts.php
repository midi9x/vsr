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
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/range-slider.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/lightcase.js');?>"></script>
    <script src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/js/light.js');?>"></script>
<?php endif; ?>


<script type="text/javascript">
    $(function() {
        $("form").submit(function() {
            $(this).find(":input").filter(function(){ return !this.value; }).attr("disabled", "disabled");
            return true; 
        });
        $("form").find(":input").prop("disabled", false);
    });

    $('.add-wishlist').on('click', function(e) {
        e.preventDefault();
        var id = $(this).data('id');
        $.post('<?=site_url()?>property/add_wishlist/' + id, function( data ) {
            if (data == 0) {
                alert_float('danger', 'Vui lòng đăng nhập hoặc đăng ký!');
            } else if (data == 1) {
                alert_float('warning', 'Dự án đã tồn tại trong danh sách yêu thích của bạn!');
            } else if (data == 2) {
                alert_float('success', 'Đã thêm vào danh sách yêu thích của bạn!');
            } else {
                alert_float('danger', 'Có lỗi xả ra!');
            }
        });
    });

    $('#sort-property').on('change', function() {
        if ($(this).val()) {
            insertParam('sort', $(this).val());
        }
    });

    $('#view-list').on('click', function(e) {
        e.preventDefault();
        $(this).addClass('active-view-btn').removeClass('lde');
        $('#view-grid').removeClass('active-view-btn').addClass('lde');
        $('#project-list').show();
        $('#project-grid').hide();
    });

    $('#view-grid').on('click', function(e) {
        e.preventDefault();
        $('#view-list').removeClass('active-view-btn').addClass('lde');
        $(this).addClass('active-view-btn').removeClass('lde');
        $('#project-list').hide();
        $('#project-grid').show();
    });

    function insertParam(key,value)
    {
        key = encodeURIComponent(key); value = encodeURIComponent(value);

        var s = document.location.search;
        var kvp = key+"="+value;

        var r = new RegExp("(&|\\?)"+key+"=[^\&]*");

        s = s.replace(r,"$1"+kvp);

        if(!RegExp.$1) {s += (s.length>0 ? '&' : '?') + kvp;};

        //again, do what you will here
        document.location.search = s;
    }

    function alert_float(type, message) {
        var aId, el;
        aId = $('body').find('float-alert').length;
        aId++;
        aId = 'alert_float_' + aId;
        el = $('<div id="' + aId + '" class="float-alert animated fadeInRight alert alert-' + type + '"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><span class="fa fa-bell-o" data-notify="icon"></span><span class="alert-title">' + message + '</span></div>');
        $('body').append(el);

        setTimeout(function() {
            $('#' + aId).hide('fast', function() { $('#' + aId).remove(); });
        }, 4000);
    }

</script>





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
