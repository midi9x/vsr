<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
  <title><?php if (isset($title)){ echo $title; } ?> - <?php echo get_option('companyname'); ?></title>
<?php if (isset($description)) { ?>
  <meta name="description" content="<?=$description?>" />
<?php } ?>
<?php if (isset($url)): ?>
  <link rel="canonical" href="<?=$url?>" />
<?php else: ?>
  <link rel="canonical" href="<?=(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";?>" />
<?php endif; ?>
  <meta property="og:locale" content="vi_VN" />
  <meta property="og:type" content="<?php if (isset($home)){ echo 'website'; } else {echo 'article';} ?>" />
  <meta property="og:title" content="<?php if (isset($title)){ echo $title; } ?> - <?php echo get_option('companyname'); ?>" />
<?php if (isset($description)) { ?>
  <meta property="og:description" content="<?=$description?>" />
<?php } ?>
<?php if (isset($url)):?>
  <meta property="og:url" content="<?=$url?>" />
<?php else: ?>
  <meta property="og:url" content="<?=(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";?>" />
<?php endif; ?>
<?php if (isset($avatar)) { ?>
  <meta property="og:image" content="<?=$avatar?>" />
<?php } ?>
  <meta property="og:site_name" content="<?php echo get_option('companyname'); ?>" />
  <meta name="twitter:card" content="summary_large_image" />
<?php if (isset($url)) { ?>
  <meta name="twitter:description" content="<?=$description?>" />
<?php } ?>
  <meta name="twitter:title" content="<?php if (isset($title)){ echo $title; } ?> - <?php echo get_option('companyname'); ?>" />
<?php if (isset($avatar)) { ?>
  <meta name="twitter:image" content="<?=$avatar?>" />
<?php } ?>
<?php if(get_option('favicon') != ''){ ?>
  <link href="<?php echo base_url('uploads/company/'.get_option('favicon')); ?>" rel="shortcut icon">
<?php } ?>
  <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700&amp;subset=vietnamese" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/bootstrap.min.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/all.min.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/select2.min.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/style.css')?>">
  <?php render_custom_styles(array('general','tabs','buttons','customers','modals')); ?>
  <!-- DO NOT REMOVE -->
  <?php do_action('app_customers_head',array('language'=>$language)); ?>
</head>
<body>
  <div class="header">
    <div class="header-top d-none d-md-block">
      <div class="container">
        <div class="row">
          <div class="col-md-2 vcenter logo">
            <a href="<?php echo site_url('/');?>">
              <img src="<?php echo base_url('uploads/company/' . get_option('company_logo')); ?>" alt="<?php echo get_option('companyname'); ?>">
            </a>
          </div>
          <div class="col-md-4 vcenter">
            <form id="form-search" class="form-inline" action="<?=site_url('/') . SEARCH_SLUG?>" method="GET">
              <input type="text" name="q" placeholder="Tìm kiếm thông tin, sản phẩm..." value="<?=isset($_GET['q']) ? $_GET['q'] : ''?>" required>
              <button class="btn btn-primary btn-search"><i class="fa fa-search"></i></button>
            </form>
          </div>
          <div class="col-md-6 vcenter">
            <div class="row">
              <div class="col-md-4 vcenter">
                <div class="left-icon"><i class="fa fa-phone-volume"></i></div>
                <div class="right-text">
                  Liên hệ tư vấn<br>
                  <?=get_option('header_contact')?>
                </div>
              </div>
              <div class="col-md-4 vcenter">
                <div class="left-icon"><i class="fa fa-clock"></i></div>
                <div class="right-text">
                  Thời gian làm việc<br>
                  <?=get_option('header_time')?>
                </div>
              </div>
              <div class="col-md-4 vcenter">
                <div class="left-icon"><i class="far fa-user"></i></div>
                <?php if (!is_client_logged_in()):?>
                  <div class="right-text">
                    <a href="<?=site_url()?>clients/login" title="Đăng nhập">Đăng nhập</a><br>
                    <a href="<?=site_url()?>clients/register" title="Đăng ký">Đăng ký</a>
                  </div>
                <?php else: ?>
                  <div class="right-text" style="vertical-align: middle; margin-top: -12px;">
                    <div class="dropdown show">
                      <a class="dropdown-toggle" href="#" id="menuAccc" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Tài khoản
                      </a>
                      <div class="dropdown-menu" aria-labelledby="menuAccc">
                        <a class="dropdown-item" href="<?=site_url()?>clients/profile"><i class="fa fa-user"></i> <?=_l('clients_nav_profile');?> cá nhân</a>
                        <a class="dropdown-item" href="<?php echo site_url('clients/tickets'); ?>"><i class="fa fa-life-ring"></i> Gửi hỗ trợ</a>
                        <a class="dropdown-item" href="<?=site_url()?>clients/logout"><i class="fa fa-power-off"></i> <?=_l('clients_nav_logout');?></a>
                      </div>
                    </div>
                  </div>
                <?php endif;?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-bottom">
      <div class="container">
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
          <button class="navbar-toggler navbar-toggler-left" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
          </button>

          <a class="navbar-brand d-block d-md-none mx-auto mobile-logo" href="<?php echo site_url('/');?>"><img src="<?php echo base_url('assets/themes/' . active_clients_theme());?>/images/mobile-logo.png"></a>

          <div class="collapse d-md-none pb-2 w-100" id="search">
            <form role="search" action="<?=site_url('/') . SEARCH_SLUG?>" method="GET">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Tìm kiếm thông tin, sản phẩm..." value="<?=isset($_GET['q']) ? $_GET['q'] : ''?>" required>
                <span class="input-group-btn">
                  <button class="btn btn-info btn-search-mobile" type="submit">
                    <i class="fa fa-search"></i>
                  </button>
                </span>
              </form>
            </div>
          </div>

          <div class="collapse navbar-collapse" id="main-menu">
            <ul class="navbar-nav mr-auto">

              <?php
                $menu = get_option('web_menu_active');
                $menu = json_decode($menu);
                if(count($menu->web_menu_active) > 0):
                foreach ($menu->web_menu_active as $key => $item) {
                  $active = '';
                  if (isset($active_menu) && $active_menu == $item->url) {
                    $active = ' active';
                  } else if(!isset($active_menu) && $item->id == 'home') {
                    $active = ' active';
                  }
              ?>
                <li class="nav-item<?=$active?>">
                  <a class="nav-link" href="<?php echo site_url('/') . $item->url;?>">
                    <?=($item->id == 'home') ? '<i class="fa fa-home"></i> ' : ''?><?=$item->name?></a>
                </li>
              <?php
                }
              ?>
              <?php endif; ?>
              <?php if (!is_client_logged_in()):?>
                <li class="nav-item d-block d-md-none">
                  <a class="nav-link" href="<?=site_url()?>clients/login">Đăng nhập</a>
                </li>
                <li class="nav-item d-block d-md-none">
                  <a class="nav-link" href="<?=site_url()?>clients/register">Đăng ký</a>
                </li>
              <?php else: ?>
                <li class="nav-item dropdown d-block d-md-none">
                  <a class="nav-link dropdown-toggle" href="#" id="menuAccMobile" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Tài khoản
                  </a>
                  <div class="dropdown-menu dropdown-menu-mobile" aria-labelledby="menuAccMobile">
                    <a class="dropdown-item" href="<?=site_url()?>clients/profile"><i class="fa fa-user"></i> <?=_l('clients_nav_profile');?> cá nhân</a>
                    <a class="dropdown-item" href="<?php echo site_url('clients/tickets'); ?>"><i class="fa fa-life-ring"></i> Gửi hỗ trợ</a>
                    <a class="dropdown-item" href="<?=site_url()?>clients/logout"><i class="fa fa-power-off"></i> <?=_l('clients_nav_logout');?></a>
                  </div>
                </li>
              <?php endif;?>
            </ul>
          </div>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#search" aria-controls="search" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa fa-search"></i>
          </button>
        </nav>
      </div>
    </div>
  </div>
