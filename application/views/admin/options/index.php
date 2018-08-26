<?php init_head(); ?>
<style type="text/css">
    #myRepeatingFields input {
        height: 40px;
        line-height: 40px;
    }
    .entry {
        margin-bottom: 10px;
    }
</style>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s">
                    <div class="panel-body">
                        <div style="display: none;">
                            <?php echo render_textarea('hidden','hidden','',array(),array(),'','tinymce'); ?>
                        </div>
                        <?php echo form_open(admin_url('/') . 'options/update_option'); ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">Trang chủ</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Tiêu đề</label>
                                        <input type="text" class="form-control" required name="home_title" value="<?=get_option('home_title')?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Mô tả</label>
                                        <textarea class="form-control" name="home_description" rows="5" required><?=get_option('home_description')?></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">Đầu trang</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Liên hệ tư vấn</label>
                                        <input type="text" class="form-control" required name="header_contact" value="<?=get_option('header_contact')?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Thời gian làm việc</label>
                                        <input type="text" class="form-control" required name="header_time" value="<?=get_option('header_time')?>">
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">Cuối trang</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Facebook</label>
                                        <input type="text" class="form-control" required name="footer_facebook" value="<?=get_option('footer_facebook')?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Youtube</label>
                                        <input type="text" class="form-control" required name="footer_youtube" value="<?=get_option('footer_youtube')?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Google+</label>
                                        <input type="text" class="form-control" required name="footer_google" value="<?=get_option('footer_google')?>">
                                    </div>
                                    <div class="form-group">
                                        <label>Đối tác</label>
                                        <div id="myRepeatingFields">
                                            <?php
                                                $doitac = get_option('footer_doitac');
                                                $doitac = json_decode($doitac);
                                                $count = count($doitac);
                                                if ($count > 0):
                                                foreach ($doitac as $key => $data):
                                            ?>
                                                <div class="entry input-group col-xs-6">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="btn btn-lg btn-primary btn-view">
                                                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                        </button>
                                                    </span>
                                                    <input class="form-control" name="footer_doitac[]" type="text" readonly="readonly" required value="<?=$data?>" onclick="selectImage(this)">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="btn btn-lg <?=($key < $count - 1) ? 'btn-danger btn-remove' : 'btn-success btn-add' ?>">
                                                            <span class="glyphicon <?=($key < $count - 1) ? 'glyphicon-minus' : 'glyphicon-plus' ?>" aria-hidden="true"></span>
                                                        </button>
                                                    </span>
                                                </div>
                                                <?php endforeach;?>
                                            <?php else:?>
                                                <div class="entry input-group col-xs-6">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="btn btn-lg btn-primary btn-view">
                                                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                        </button>
                                                    </span>
                                                    <input class="form-control" name="footer_doitac[]" type="text" readonly="readonly" required value="" onclick="selectImage(this)">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="btn btn-success btn-lg btn-add">
                                                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                                        </button>
                                                    </span>
                                                </div>
                                            <?php endif;?>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="btn-bottom-toolbar text-right">
                             <button type="submit" class="btn btn-info">Lưu lại cài đặt</button>
                           </div>
                           <?php echo form_close(); ?>
                        <?php init_tail(); ?>
                        <script type="text/javascript">
                            $(function(){
                                $(document).on('click', '.btn-view', function() {
                                  var url = $(this).parents('.input-group').find('input').val();
                                  if (url) {
                                    window.open(url);
                                  }
                                });
                                $(document).on('click', '.btn-add', function(e)
                                {
                                    e.preventDefault();
                                    var controlForm = $('#myRepeatingFields:first'),
                                    currentEntry = $(this).parents('.entry:first'),
                                    newEntry = $(currentEntry.clone()).appendTo(controlForm);
                                    newEntry.find('input').val('');
                                    controlForm.find('.entry:not(:last) .btn-add')
                                    .removeClass('btn-add').addClass('btn-remove')
                                    .removeClass('btn-success').addClass('btn-danger')
                                    .html('<span class="glyphicon glyphicon-minus"></span>');
                                }).on('click', '.btn-remove', function(e)
                                {
                                    e.preventDefault();
                                    $(this).parents('.entry:first').remove();
                                    return false;
                                });
                            });
                            function selectImage(ele) {
                                tinymce.activeEditor.windowManager.open({
                                  file: admin_url + 'misc/tinymce_file_browser',
                                  title: appLang.media_files,
                                  width: 900,
                                  height: 450,
                                  resizable: 'yes'
                                }, {
                                  setUrl: function(url) {
                                    ele.value = url;
                                  }
                                });
                              }
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>