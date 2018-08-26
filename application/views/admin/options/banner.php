<?php init_head(); ?>
<style type="text/css">
    .entry.input-group.col-xs-12 input {
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
                        <div class="panel panel-default">
                            <div class="panel-heading">Banner sidebar 1 (home + single)</div>
                            <div class="panel-body">
                                <?php echo form_open(admin_url('/') . 'options/edit_banner'); ?>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>URL</label>
                                            <input type="url" class="form-control" required name="url_banner_1" value="<?=get_option('url_banner_1')?>">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Image</label>
                                            <div class="entry input-group col-xs-12">
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-lg btn-primary btn-view">
                                                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                    </button>
                                                </span>
                                                <input type="text" class="form-control" required name="image_banner_1" readonly="readonly" onclick="selectImage(this)" value="<?=get_option('image_banner_1')?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <div class="form-radio">
                                                <label class="radio-inline"><input type="radio" <?=(get_option('active_banner_1') == 1) ? ' checked' : ''?> name="active_banner_1" value="1">Kích hoạt</label>
                                                <label class="radio-inline"><input type="radio" <?=(get_option('active_banner_1') == 0) ? ' checked' : ''?> name="active_banner_1" value="0">Vô hiệu hóa</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <button type="submit" class="btn btn-primary">Lưu lại</button>
                                        </div>
                                    </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">Banner sidebar 2 (only home)</div>
                            <div class="panel-body">
                                <?php echo form_open(admin_url('/') . 'options/edit_banner'); ?>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>URL</label>
                                            <input type="url" class="form-control" required name="url_banner_2" value="<?=get_option('url_banner_2')?>">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Image</label>
                                            <div class="entry input-group col-xs-12">
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-lg btn-primary btn-view">
                                                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                    </button>
                                                </span>
                                                <input type="text" class="form-control" required name="image_banner_2" readonly="readonly" onclick="selectImage(this)" value="<?=get_option('image_banner_2')?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <div class="form-radio">
                                                <label class="radio-inline"><input type="radio" <?=(get_option('active_banner_2') == 1) ? ' checked' : ''?> name="active_banner_2" value="1">Kích hoạt</label>
                                                <label class="radio-inline"><input type="radio" <?=(get_option('active_banner_2') == 0) ? ' checked' : ''?> name="active_banner_2" value="0">Vô hiệu hóa</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <button type="submit" class="btn btn-primary">Lưu lại</button>
                                        </div>
                                    </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">Banner sidebar 3 (only home)</div>
                            <div class="panel-body">
                                <?php echo form_open(admin_url('/') . 'options/edit_banner'); ?>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>URL</label>
                                            <input type="url" class="form-control" required name="url_banner_3" value="<?=get_option('url_banner_3')?>">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Image</label>
                                            <div class="entry input-group col-xs-12">
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-lg btn-primary btn-view">
                                                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                    </button>
                                                </span>
                                                <input type="text" class="form-control" required name="image_banner_3" readonly="readonly" onclick="selectImage(this)" value="<?=get_option('image_banner_3')?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <div class="form-radio">
                                                <label class="radio-inline"><input type="radio" <?=(get_option('active_banner_3') == 1) ? ' checked' : ''?> name="active_banner_3" value="1">Kích hoạt</label>
                                                <label class="radio-inline"><input type="radio" <?=(get_option('active_banner_3') == 0) ? ' checked' : ''?> name="active_banner_3" value="0">Vô hiệu hóa</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <button type="submit" class="btn btn-primary">Lưu lại</button>
                                        </div>
                                    </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>
                        <?php init_tail(); ?>
                        <script type="text/javascript">
                            $(document).on('click', '.btn-view', function() {
                              var url = $(this).parents('.input-group').find('input').val();
                              if (url) {
                                window.open(url);
                              }
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