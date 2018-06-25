<?php init_head(); ?>
<style type="text/css">
  .entry:not(:first-of-type)
  {
      margin-top: 10px;
  }
  .glyphicon
  {
      font-size: 12px;
  }
  button.btn.btn-success.btn-lg.btn-add, button.btn.btn-lg.btn-remove.btn-danger, button.btn.btn-lg.btn-primary {
    height: 36px;
  }
  iframe#property_content_ifr {
    min-height: 300px!important;
  }
</style>
<div id="wrapper">
 <div class="content">
  <?php echo form_open($this->uri->uri_string(),array('id'=>'article-form')); ?>
  <div class="row">
   <div class="col-md-12">
    <div class="panel_s">
     <div class="panel-body">
      <h4 class="no-margin">
       <?php echo $title; ?>
       <?php if(isset($article)){ ?>
       <br />
       <small>
        <a href="<?php echo site_url('bat-dong-san/'.$article->property_slug); ?>" target="_blank"><?php echo site_url('bat-dong-san/'.$article->property_slug); ?></a>
      </small>
      <?php } ?>
    </h4>
    <?php if(isset($article)){ ?>
    <p>
    <small>
       <?php echo _l('article_total_views'); ?>: <?php echo total_rows('tblviewstracking',array('rel_type'=>'property','rel_id'=>$article->property_id)); ?>
     </small>
     <?php if(has_permission('property','','create')){ ?>
     <a href="<?php echo admin_url('property/article'); ?>" class="btn btn-success pull-right"><?php echo _l('property_article_new_article'); ?></a>
     <?php } ?>
     <?php if(has_permission('property','','delete')){ ?>
     <a href="<?php echo admin_url('property/delete_article/'.$article->property_id); ?>" class="btn btn-danger _delete pull-right mright5"><?php echo _l('delete'); ?></a>
     <?php } ?>
     <div class="clearfix"></div>
   </p>
   <?php } ?>
   <hr class="hr-panel-heading" />

  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-8">
   <?php $value = (isset($article) ? $article->property_name : ''); ?>
   <?php $attrs = (isset($article) ? array() : array('autofocus'=>true)); ?>
   <?php echo render_input('property_name','property_article_add_edit_name',$value,'text',$attrs); ?>
   <?php if(isset($article)){
     echo render_input('property_slug','slug',$article->property_slug,'text');
   } ?>
    <div class="row">
      <div class="col-md-6">
        <?php $value = (isset($article) ? $article->property_category_id : ''); ?>
        <?php if(has_permission('property','','create')){
          echo render_select_with_input_group('property_category_id',get_property_cat(),array('category_id','category_name'),'property_article_add_edit_category',$value,'<a target="blank" href="' . admin_url('property/manage_categories') .'"><i class="fa fa-plus"></i></a>');
         } else {
          echo render_select('property_category_id',$get_property_cat,array('category_id','category_name'),'property_article_add_edit_category',$value);
        }
        ?>
      </div>
      <div class="col-md-6">
        <?php 
          $get_property_type = get_property_type();
          foreach ($get_property_type as $key => $value) {
            $get_property_type[$key]['option_attributes']['cat'] = $value['type_category_id'];
          }
        ?>
        <?php $value = (isset($article) ? $article->property_type_id : ''); ?>
        <?php 
          if(has_permission('property','','create')){
            echo render_select_with_input_group('property_type_id',$get_property_type,array('type_id','type_name'),'property_article_add_edit_type',$value,'<a target="blank" href="' . admin_url('property/manage_types') .'"><i class="fa fa-plus"></i></a>');
          } else {
            echo render_select('property_type_id',$get_property_type,array('type_id','type_name'),'property_article_add_edit_type',$value);
        }
        ?>
      </div>
    </div>

   <hr>
   <div class="checkbox checkbox-primary">
     <input type="checkbox" id="disabled" name="disabled" <?php if(isset($article) && $article->property_active == 0){echo 'checked';} ?>>
     <label for="disabled"><?php echo _l('disabled'); ?></label>
   </div>
   <?php $contents = ''; if(isset($article)){$contents = $article->property_content;} ?>
   <?php echo render_textarea('property_content','',$contents,array(),array(),'','tinymce'); ?>

    </div>
    <div class="col-md-4">
      <?php $value = (isset($article) ? $article->property_location_id : ''); ?>
       <?php if(has_permission('property','','create')){
         echo render_select_with_input_group('property_location_id',get_property_location(),array('location_id','location_name'),'property_article_add_edit_location',$value,'<a target="blank" href="' . admin_url('property/manage_locations') .'"><i class="fa fa-plus"></i></a>');
       } else {
        echo render_select('property_location_id',get_property_location(),array('location_id','location_name'),'property_article_add_edit_location',$value);
      }
      ?>

      <?php 
      $characteristic = get_property_characteristic();
        if(isset($article)){ 
          $get_property_characteristic_meta = get_property_characteristic_meta($article->property_id);
          $arrSelectedcharacteristic = [];
          foreach ($get_property_characteristic_meta as $key => $value) {
              $arrSelectedcharacteristic[] = $value['characteristic_id'];
          }
        }
        $newCharacteristic = [];
        foreach ($characteristic as $key => $value) {
          $newCharacteristic[$key] = (object)[];
          $newCharacteristic[$key]->value = $value['characteristic_id'];
          $newCharacteristic[$key]->label = $value['characteristic_name'];
          if(isset($article)){ 
            if (in_array($value['characteristic_id'], $arrSelectedcharacteristic)) {
              $newCharacteristic[$key]->selected = true;
            }
          }
        }
        $field = (object)[];
        $field->type = 'checkbox-group';
        $field->values = $newCharacteristic;
        $field->label = _l('als_kb_characteristics');
        $field->name = 'characteristic_id';
        $field->selected = '';
        $field->className = 'form-col';
        $field->inline = true;
        echo render_form_builder_field($field);
      ?>
      <?php $value = (isset($article) ? $article->property_avatar : ''); ?>

      <div class="form-group">
        <label for="property_bedroom" class="control-label">
          <small class="req text-danger">* </small> <?=_l('property_article_add_edit_avatar');?>
        </label>
        <div class="input-group">
            <span class="input-group-btn">
              <button type="button" class="btn btn-lg btn-primary btn-view">
                  <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
              </button>
            </span>
            <input class="form-control" name="property_avatar" type="text" readonly="readonly" value="<?=$value?>" onclick="selectImage(this)">
        </div>
      </div>

      <?php 
        echo '<div class="form-group" app-field-wrapper="property_image"><label class="control-label">' . _l('property_image') . '</label>
                <div id="myRepeatingFields">';
        if(isset($article)){ 
          $propertyImages = get_property_image($article->property_id);
          $count = count($propertyImages);
          if ($count > 0) {
            $index = 0;
            foreach ($propertyImages as $key => $propertyImage) {
              $index = $index + 1;
              $class = $index == $count ? 'btn-add btn-success' : 'btn-remove btn-danger';
              $icon = $index == $count ? 'plus' : 'minus';
              echo '<div class="entry input-group col-xs-12">
                  <span class="input-group-btn">
                    <button type="button" class="btn btn-lg btn-primary btn-view">
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                    </button>
                  </span>
                  <input class="form-control" name="property_image[]" type="text" readonly="readonly" value="' . $propertyImage['image_name']. '" onclick="selectImage(this)">
                      <span class="input-group-btn">
                          <button type="button" class="btn btn-lg ' . $class .'">
                              <span class="glyphicon glyphicon-' . $icon . '" aria-hidden="true"></span>
                          </button>
                      </span>
              </div>';
            }
          } else {
            echo '<div class="entry input-group col-xs-12">
                  <span class="input-group-btn">
                    <button type="button" class="btn btn-lg btn-primary btn-view">
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                    </button>
                  </span>
                  <input class="form-control" name="property_image[]" type="text" readonly="readonly" value="" onclick="selectImage(this)">
                      <span class="input-group-btn">
                          <button type="button" class="btn btn-success btn-lg btn-add">
                              <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                          </button>
                      </span>
              </div>';
          }
        } else {
          echo '<div class="entry input-group col-xs-12">
                  <span class="input-group-btn">
                    <button type="button" class="btn btn-lg btn-primary btn-view">
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                    </button>
                  </span>
                  <input class="form-control" name="property_image[]" type="text" readonly="readonly" value="" onclick="selectImage(this)">
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-success btn-lg btn-add">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                        </button>
                    </span>
            </div>';
        }
        echo '</div></div>';
      ?>
      <?php $value = (isset($article) ? $article->property_bedroom : ''); ?>
      <?php echo render_input('property_bedroom','property_bedroom',$value,'text'); ?>

      <?php $value = (isset($article) ? $article->property_bathroom : ''); ?>
      <?php echo render_input('property_bathroom','property_bathroom',$value,'text'); ?>

      <?php $value = (isset($article) ? $article->property_acreage : ''); ?>
      <?php echo render_input('property_acreage','property_acreage',$value,'text'); ?>

      <?php $value = (isset($article) ? $article->property_facade : ''); ?>
      <?php echo render_input('property_facade','property_facade',$value,'text'); ?>


      <?php $value = (isset($article) ? $article->property_status : 1);?>
      <?php echo render_status_option($value, _l('property_article_add_edit_status'), null, _l('property_article_add_edit_status_working'), _l('property_article_add_edit_status_completed')); ?>
    </div>
  </div>
</div>
</div>
</div>
<?php if((has_permission('property','','create') && !isset($article)) || has_permission('property','','edit') && isset($article)){ ?>
<div class="btn-bottom-toolbar btn-toolbar-container-out text-right">
  <button type="submit" class="btn btn-info pull-right"><?php echo _l('submit'); ?></button>
</div>
<?php } ?>
</div>
<?php echo form_close(); ?>
</div>
<?php $this->load->view('admin/property/category'); ?>
<?php init_tail(); ?>
<script>

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
  $(function(){
    $(document).on('click', '.btn-view', function() {
      var url = $(this).parents('.input-group').find('input').val();
      if (url) {
        window.open(url);
      }
    });

    _validate_form($('#article-form'),{
      property_name:'required',
      property_category_id:'required',
      property_type_id:'required',
      property_location_id:'required',
      property_avatar:'required',
      property_price:'required',
      property_status:'required',
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


    $('#property_category_id').on('change', function() {
      var cat = $(this).val();
      $('#property_type_id').find('option').hide();
      $('#property_type_id').selectpicker('val', '');
      if (cat) {
        $('#property_type_id').find('option[cat='+ cat +']').show();
      }
      $('#property_type_id').find('option[value=""]').show();
      $('#property_type_id').selectpicker('refresh');
    });

  });
</script>
</body>
</html>
