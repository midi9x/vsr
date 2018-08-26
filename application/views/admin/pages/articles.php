<?php init_head();
$has_permission_edit = has_permission('pages','','edit');
$has_permission_create = has_permission('pages','','create');
?>
<div id="wrapper">
  <div class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="panel_s mtop5">
          <div class="panel-body">
            <div class="_buttons">
              <?php if($has_permission_create){ ?>
                <a href="<?php echo admin_url('pages/article'); ?>" class="btn btn-info mright5"><?php echo _l('kb_article_new_article'); ?></a>
              <?php } ?>
            </div>
            <hr class="hr-panel-heading" />
            <div class="row">
              <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="list_tab">
                  <div class="col-md-12">
                    <?php render_datatable(
                      array(
                        _l('kb_dt_article_name'),
                        _l('date_published'),
                      ),'articles',[],[
                        'data-last-order-identifier' => 'kb-articles',
                        'data-default-order'         => get_table_last_order('kb-articles'),
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
    <?php init_tail(); ?>
    <script>
      $(function(){
        initKnowledgeBaseTableArticles();
      });
      function initKnowledgeBaseTableArticles(){
        initDataTable('.table-articles', window.location.href, undefined, undefined, undefined, [1, 'desc']);
      }
    </script>
  </body>
  </html>
