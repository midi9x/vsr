<?php init_head(); ?>
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
        <a href="<?php echo site_url(LAWS_SLUG.$article->slug); ?>" target="_blank"><?php echo site_url(LAWS_SLUG.$article->slug); ?></a>
      </small>
      <?php } ?>
    </h4>
    <?php if(isset($article)){ ?>
    <p>
    <small>
       <?php echo _l('article_total_views'); ?>: <?php echo total_rows('tblviewstracking',array('rel_type'=>'laws_article','rel_id'=>$article->articleid)); ?>
     </small>
     <?php if(has_permission('laws','','create')){ ?>
     <a href="<?php echo admin_url('laws/article'); ?>" class="btn btn-success pull-right"><?php echo _l('kb_article_new_article'); ?></a>
     <?php } ?>
     <?php if(has_permission('laws','','delete')){ ?>
     <a href="<?php echo admin_url('laws/delete_article/'.$article->articleid); ?>" class="btn btn-danger _delete pull-right mright5"><?php echo _l('delete'); ?></a>
     <?php } ?>
     <div class="clearfix"></div>
   </p>
   <?php } ?>
   <hr class="hr-panel-heading" />

   <div class="clearfix"></div>
   <?php $value = (isset($article) ? $article->subject : ''); ?>
   <?php $attrs = (isset($article) ? array() : array('autofocus'=>true)); ?>
   <?php echo render_input('subject','kb_article_add_edit_subject',$value,'text',$attrs); ?>
   <?php if(isset($article)){
     echo render_input('slug','kb_article_slug',$article->slug,'text');
   } ?>

   <?php $value = (isset($article) ? $article->avatar : ''); ?>
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
          <input class="form-control" name="avatar" type="text" readonly="readonly" value="<?=$value?>" onclick="selectImage(this)">
      </div>
    </div>

   <?php $value = (isset($article) ? $article->articlegroup : ''); ?>
   <?php if(has_permission('laws','','create')){
     echo render_select_with_input_group('articlegroup',get_laws_groups(),array('groupid','name'),'kb_article_add_edit_group',$value,'<a href="#" onclick="new_laws_group();return false;"><i class="fa fa-plus"></i></a>');
   } else {
    echo render_select('articlegroup',get_laws_groups(),array('groupid','name'),'kb_article_add_edit_group',$value);
  }
  ?>
 <div class="checkbox checkbox-primary">
   <input type="checkbox" id="disabled" name="disabled" <?php if(isset($article) && $article->active_article == 0){echo 'checked';} ?>>
   <label for="disabled"><?php echo _l('kb_article_disabled'); ?></label>
 </div>
 <p class="bold"><?php echo _l('kb_article_description'); ?></p>
 <?php $contents = ''; if(isset($article)){$contents = $article->description;} ?>
 <?php echo render_textarea('description','',$contents,array(),array(),'','tinymce'); ?>

  <?php $value = (isset($article) ? $article->seo_title : ''); ?>
  <?php echo render_input('seo_title','seo_title',$value); ?>

  <?php $value = (isset($article) ? $article->seo_description : ''); ?>
  <?php echo render_input('seo_description','seo_description',$value); ?>

</div>
</div>
</div>
<?php if((has_permission('laws','','create') && !isset($article)) || has_permission('laws','','edit') && isset($article)){ ?>
<div class="btn-bottom-toolbar btn-toolbar-container-out text-right">
  <button type="submit" class="btn btn-info pull-right"><?php echo _l('submit'); ?></button>
</div>
<?php } ?>
</div>
<?php echo form_close(); ?>
</div>
<?php $this->load->view('admin/laws/group'); ?>
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
    _validate_form($('#article-form'),{
      subject:'required',
      articlegroup:'required',
      seo_title:'required',
      seo_description:'required',
      avatar:'required',
    });
  });
</script>
</body>
</html>
