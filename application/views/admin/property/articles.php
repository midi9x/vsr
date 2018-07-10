<?php init_head();
$has_permission_edit = has_permission('property','','edit');
$has_permission_create = has_permission('property','','create');
?>
<div id="wrapper">
  <div class="content">
    <div class="row">
      <div class="col-md-12">

       <div class="panel_s mtop5">

         <div class="panel-body">
           <div class="_buttons">
             <?php if($has_permission_create){ ?>
               <a href="<?php echo admin_url('property/article'); ?>" class="btn btn-info mright5"><?php echo _l('property_article_new_article'); ?></a>
               <?php } ?>
               <?php if($has_permission_edit || $has_permission_create){ ?>
                 <a href="<?php echo admin_url('property/manage_categories'); ?>" class="btn btn-info mright5"><?php echo _l('als_kb_categories'); ?></a>

                 <a href="<?php echo admin_url('property/manage_types'); ?>" class="btn btn-info mright5"><?php echo _l('als_kb_types'); ?></a>

                 <a href="<?php echo admin_url('property/manage_locations'); ?>" class="btn btn-info mright5"><?php echo _l('als_kb_locations'); ?></a>

                 <a href="<?php echo admin_url('property/manage_characteristics'); ?>" class="btn btn-info mright5"><?php echo _l('als_kb_characteristics'); ?></a>

                 <?php } ?>
                 <a href="#" class="btn btn-default hidden-xs toggle-articles-list" onclick="initPropertyTableArticles(); return false;">
                  <i class="fa fa-th-list"></i>
                </a>
                <div class="btn-group pull-right mleft4 btn-with-tooltip-group _filter_data hide" data-toggle="tooltip" data-title="<?php echo _l('filter_by'); ?>">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-filter" aria-hidden="true"></i>
                  </button>
                  <ul class="dropdown-menu dropdown-menu-left" style="width:300px;">
                   <li class="active">
                    <a href="#" data-cview="all" onclick="dt_custom_view('','.table-articles',''); return false;"><?php echo _l('view_articles_list_all'); ?></a>
                  </li>
                  <?php foreach($categories as $cat){ ?>
                    <li><a href="#" data-cview="cat_<?php echo $cat['category_id']; ?>" onclick="dt_custom_view('cat_<?php echo $cat['category_id']; ?>','.table-articles','cat_<?php echo $cat['category_id']; ?>'); return false;"><?php echo $cat['category_name']; ?></a></li>
                    <?php } ?>
                  </ul>
                </div>
                <div class="_hidden_inputs _filters">
                  <?php foreach($categories as $cat){
                   echo form_hidden('cat_'.$cat['category_id']);
                 } ?>
               </div>
             </div>
             <hr class="hr-panel-heading" />
             <div class="row">
               <div class="tab-content">
                 <div role="tabpanel" class="tab-pane kb-kan-ban kan-ban-tab" id="kan-ban">
                   <div class="container-fluid">
                    <?php
                    if(count($categories) == 0){
                     echo _l('property_no_articles_found');
                   }
                   foreach($categories as $cat){
                     $kanban_colors = '';
                     ?>
                     <ul class="kan-ban-col<?php if(!$has_permission_edit){echo ' sortable-disabled'; } ?>" data-col-category-id="<?php echo $cat['category_id']; ?>">
                       <li class="kan-ban-col-wrapper">
                        <div class="border-right panel_s">
                         <?php
                         $cat_color = 'style="background: #000"';
                         ?>
                         <div class="panel-heading-bg primary-bg" <?php echo $cat_color; ?> data-category-id="<?php echo $cat['category_id']; ?>">
                          <?php if($has_permission_edit){ ?>
                            <i class="fa fa-reorder pointer"></i> <?php } ?>
                            <a href="#" class="color-white" <?php if($has_permission_create || $has_permission_edit){ ?>onclick="edit_kb_group(this,<?php echo $cat['category_id']; ?>); return false;" data-name="<?php echo $cat['category_name']; ?>" data-slug="<?php echo $cat['category_slug']; ?>" data-description="<?php echo clear_textarea_breaks($cat['category_description']); ?>" data-order="<?php echo $cat['category_order']; ?>" data-active="<?php echo $cat['category_active']; ?>" <?php } ?>><?php echo $cat['category_name']; ?></a>
                            <small> - <?php echo total_rows('property','property_category_id='.$cat['category_id']); ?></small>
                            <?php if($has_permission_edit){ ?>
                              <a href="#" onclick="return false;" class="pull-right color-white kanban-color-picker" data-placement="bottom" data-toggle="popover" data-content="<div class='kan-ban-settings cpicker-wrapper'><?php echo $kanban_colors; ?></div>" data-html="true" data-trigger="focus"><i class="fa fa-angle-down"></i>
                              </a>
                              <?php } ?>
                            </div>
                            <?php
                            $this->db->select('*, (SELECT COUNT(*) FROM tblviewstracking WHERE rel_type="property" AND rel_id=property.property_id) as total_views')->from('property')->where('property_category_id',$cat['category_id'])->order_by('property_order','asc');
                            if(!$has_permission_create && !$has_permission_edit) {
                              $this->db->where('property_active', 1);
                            }
                            $articles = $this->db->get()->result_array();
                            ?>
                            <div class="kan-ban-content-wrapper">
                              <div class="kan-ban-content">
                               <ul class="sortable article-category categories<?php if(!$has_permission_edit){echo 'sortable-disabled'; } ?>" data-category-id="<?php echo $cat['category_id']; ?>">
                                <?php foreach($articles as $article) { ?>
                                  <li class="<?php if($article['property_active'] == 0){echo 'line-throught';} ?>" data-article-id="<?php echo $article['property_id']; ?>">
                                   <div class="panel-body">
                                          <a href="<?php echo site_url('property/article/'.$article['property_slug']); ?>" target="_blank">
                                            <?php echo $article['property_name']; ?></a>
                                            <?php if($has_permission_edit){ ?>
                                              <a href="<?php echo admin_url('property/article/'.$article['property_id']); ?>" target="_blank" class="pull-right"><span><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span></a>
                                              <?php } ?>
                                              <div class="clearfix"></div>
                                              <hr />
                                              <p class="pull-left"><small><?php echo _l('article_total_views'); ?>: <?php echo $article['total_views']; ?></small></p>
                                              </div>
                                            </li>
                                            <?php } ?>
                                          </ul>
                                        </div>
                                      </div>
                                    </li>
                                  </ul>
                                  <?php } ?>
                                </div>
                              </div>
                              <div role="tabpanel" class="tab-pane active" id="list_tab">
                                <div class="col-md-12">
                                  <?php render_datatable(
                                    array(
                                      _l('property_dt_article_name'),
                                      _l('property_dt_category_name'),
                                      _l('date_published'),
                                    ),'articles',[],[
                                      'data-last-order-identifier' => 'property-articles',
                                      'data-default-order'         => get_table_last_order('property-articles'),
                                    ]); ?>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php include_once(APPPATH.'views/admin/property/category.php'); ?>
                  <?php init_tail(); ?>
                  <script>

                   $(function(){
                     fix_kanban_height(290,360);
                     initPropertyTableArticles();
                     $(".categories").sortable({
                       connectWith: ".article-category",
                       helper: 'clone',
                       appendTo: '#kan-ban',
                       placeholder: "ui-state-highlight-kan-ban-kb",
                       revert: true,
                       scroll: true,
                       scrollSensitivity: 50,
                       scrollSpeed: 70,
                       start: function(event, ui) {
                        $('body').css('overflow','hidden');
                      },
                      stop: function(event, ui) {
                       $('body').removeAttr('style');
                     },
                     update: function(event, ui) {
                       if (this === ui.item.parent()[0]) {
                         var articles = $(ui.item).parents('.article-category').find('li');
                         i = 1;
                         var order = [];
                         $.each(articles, function() {
                           i++;
                           order.push([$(this).data('article-id'), i]);
                         });
                         setTimeout(function() {
                           $.post(admin_url + 'property/update_kan_ban', {
                             order: order,
                             category_id: $(ui.item.parent()[0]).data('category-id')
                           });
                         }, 100);
                       }
                     }
                   }).disableSelection();

                     $('.categories').sortable({
                       cancel: '.sortable-disabled'
                     });

                     setTimeout(function(){
                       $('.kb-kan-ban').removeClass('hide');
                     },200);

                     $(".container-fluid").sortable({
                       helper: 'clone',
                       item: '.kan-ban-col',
                       cancel: '.sortable-disabled',
                       update: function(event, ui) {
                         var order = [];
                         var status = $('.kan-ban-col');
                         var i = 0;
                         $.each(status, function() {
                           order.push([$(this).data('col-category-id'), i]);
                           i++;
                         });
                         var data = {}
                         data.order = order;
                         $.post(admin_url + 'property/update_categories_order', data);
                       }
                     });
                   $('.toggle-articles-list').on('click', function() {
                     var list_tab = $('#list_tab');
                     if (list_tab.hasClass('active')) {
                       list_tab.css('display', 'none').removeClass('active');
                       $('.kan-ban-tab').css('display', 'block');
                       fix_kanban_height(290,360);
                       mainWrapperHeightFix();
                     } else {
                       list_tab.css('display', 'block').addClass('active');
                       $('.kan-ban-tab').css('display', 'none');
                     }
                   });
                 });
                   function initPropertyTableArticles(){
                     var KB_Articles_ServerParams = {};
                     $.each($('._hidden_inputs._filters input'),function(){
                       KB_Articles_ServerParams[$(this).attr('name')] = '[name="'+$(this).attr('name')+'"]';
                     });
                     $('._filter_data').toggleClass('hide');
                     initDataTable('.table-articles', window.location.href, undefined, undefined, KB_Articles_ServerParams, [2, 'desc']);
                   }
                 </script>
               </body>
               </html>
