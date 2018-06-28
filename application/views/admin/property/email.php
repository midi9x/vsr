<div class="modal fade" id="send-email" role="dialog">
    <div class="modal-dialog">
        <?php echo form_open(admin_url('property/get_customer'),array('id'=>'send-email-form')); ?>
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">
                        <span class="edit-title"><?php echo _l('send_email'); ?></span>
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <?php 
                            $selected = array();
                            echo render_select('groups[]',$client_groups,array('id','name'),'customer_groups',$selected,array('multiple'=>true,'data-actions-box'=>true),array(),'','',false);
                            ?>
                            <?php echo render_input('subject', 'template_subject', 'Bài viết mới cập nhật tại {companyname}'); ?>
                            <?php echo render_input('from', 'template_fromname', '{companyname}'); ?>
                            <?php echo render_textarea('message','email_template_email_message', 'Xin chào, <br /><br />B&agrave;i viết mới được cập nhật tại {companyname}. <br /><br />Chi tiết:<br /><br /><span style="font-size: 12pt;">Thank and best regards,<br /></span><br /><span style="font-size: 12pt;">{email_signature}</span>', null, null, null, 'tinymce'); ?>
                        </div>
                    </div>
                    <div id="">
                        <div id="send-progressbar" style="height:28px;width:100%;border:1px solid rgb(197, 197, 197);border-radius:4px;padding:1px;background:#fff;"><span style="position:absolute;margin:4px 0 0 8px;"></span></div>
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
        _validate_form($('#send-email-form'), {
            "groups[]": 'required',
            subject: 'required',
            from: 'required',
            message: 'required'
        }, send_email);
    });
    // Form handler function for knowledgebase group
    var linesCount;
    function send_email(form) {
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
                $("#send-progressbar").progressbar();
                $("#send-progressbar").css({'background': 'rgb(255, 255, 255)','border-radius': '4px'});
                $("#send-progressbar > div").css({'background': 'rgb(41, 133, 189)','height': '28px','border-radius': '4px'});

                function inProgress() {
                    $("#send-progressbar").progressbar({
                        value: countUp_number,
                        max: linesCount
                    });
                    $("#send-progressbar > span").html('Đang xử lý ... ' + " " + countUp_number + "/" + linesCount + ' khách hàng.').css({'position':'absolute','color':'rgb(225, 243, 255)','font-weight':'600','text-align':'center','text-shadow':'2px 1px 5px #000','margin':'3px 0 0 2%'});
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
                $.each(response.customers, function(indexInArray, domain_val) {
                    setTimeout(function(){
                        $.ajax({
                            type: 'POST',
                            url: admin_url + 'property/send_email',
                            data: {},
                            success: function(data) {
                                countUp();        
                            }
                        });
                    }, indexInArray * 300);
                });

            }

        });
        return false;
    }
    $('#send-progressbar').on('progressbarcomplete', function() {
        setTimeout(function(){
            $('#send-progressbar > span').html('Đã gửi email cho ' + ' ' + linesCount + ' ' + 'khách hàng.').css({'position':'absolute','color':'rgb(225, 243, 255)','font-weight':'600','text-align':'center','text-shadow':'2px 1px 5px #000','margin':'3px 0 0 2%'});
        }, 500);
    });

</script>
