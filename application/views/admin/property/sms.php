<div class="modal fade" id="send-sms" role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('property/get_customer'),array('id'=>'send-sms-form')); ?>
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">
                        <span class="edit-title"><?php echo _l('send_sms'); ?></span>
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <?php 
                            $selected = array();
                            echo render_select('groups[]',$client_groups,array('id','name'),'customer_groups',$selected,array('multiple'=>true,'data-actions-box'=>true),array(),'','',false);
                            ?>
                            <?php 
                                $url = site_url(PROPERTY_SLUG.$article->property_slug);
                                $property_name = $article->property_name;
                            ?>
                            <?php echo render_textarea('message','test_sms_message', "Xin chào {fullname}, \nBài viết `" . $property_name . "` vừa được cập nhật tại {companyname}. \nChi tiết: " . $url, null, null, null, ''); ?>
                        </div>
                    </div>
                    <div>
                        <div id="send-sms-progressbar" style="height:30px;width:100%;border:1px solid rgb(197, 197, 197);border-radius:4px;padding:1px;background:#fff;"><span style="position:absolute;margin:4px 0 0 8px;"></span></div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
                    <button type="submit" class="btn btn-info"><?php echo _l('send'); ?></button>
                </div>
            </div>
        <?php echo form_close(); ?>
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    window.addEventListener('load',function(){
        // Validating the knowledge group form
        _validate_form($('#send-sms-form'), {
            "groups[]": 'required',
            subject: 'required',
            from: 'required',
            message: 'required'
        }, send_sms);
    });
    // Form handler function for knowledgebase group
    var linesCount;
    function send_sms(form) {
        var data = $(form).serialize();
        var url = form.action;
        $.post(url, data).done(function(response) {
            response = JSON.parse(response);
            linesCount = response.customers.length;
            console.log(linesCount);
            if (linesCount) {
                var totalCount = 1;
                var countUpTimer;
                var countUp_number = -1;
                var deferred = $.Deferred();
                var promise = deferred.promise();
                $("#send-sms-progressbar").progressbar();
                $("#send-sms-progressbar").css({'background': 'rgb(255, 255, 255)','border-radius': '4px'});
                $("#send-sms-progressbar > div").css({'background': 'rgb(41, 133, 189)','height': '30px','border-radius': '4px'});

                function inProgress() {
                    $("#send-sms-progressbar").progressbar({
                        value: countUp_number,
                        max: linesCount
                    });
                    $("#send-sms-progressbar > span").html('Đang xử lý ... ' + " " + countUp_number + "/" + linesCount + ' khách hàng.').css({'position':'absolute','color':'rgb(225, 243, 255)','font-weight':'600','text-align':'center','text-shadow':'2px 1px 5px #000','margin':'3px 0 0 2%'});
                }

                function countUp() {
                    if (countUp_number < linesCount) {
                        countUp_number += totalCount;
                        deferred.notify();
                    } else {
                        deferred.resolve();
                    }
                }
                
                promise.progress(inProgress);
                countUp();
                $.each(response.customers, function(indexInArray, valueCustomer) {
                    setTimeout(function(){
                        $.ajax({
                            type: 'POST',
                            url: admin_url + 'property/send_sms',
                            data: $('#send-sms-form').serialize() + "&customer_id=" + valueCustomer.customer_id,
                            success: function(data) {
                                countUp();
                            },
                            error: function() {
                                alert('Có lỗi xảy ra');
                                window.location.reload();
                                break;
                            }
                        });
                    }, indexInArray * 300);
                });
            }

        });
        return false;
    }
    $('#send-sms-progressbar').on('progressbarcomplete', function() {
        setTimeout(function(){
            $('#send-sms-progressbar > span').html('Đã gửi sms cho ' + ' ' + linesCount + ' ' + 'khách hàng.').css({'position':'absolute','color':'rgb(225, 243, 255)','font-weight':'600','text-align':'center','text-shadow':'2px 1px 5px #000','margin':'3px 0 0 2%'});
        }, 500);
    });

</script>
