<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title><?php if (isset($title)){ echo $title . ' - VSR'; } ?></title>
  <?php if (isset($url)) { ?><link rel="canonical" href="<?=$url?>" /><?php } ?>

  <meta property="og:locale" content="vi_VN" />
  <meta property="og:type" content="<?php if (isset($home)){ echo 'website'; } else {echo 'article';} ?>" />
  <meta property="og:title" content="<?php if (isset($title)){ echo $title; } ?>" />
  <?php if (isset($description)) { ?><meta property="og:description" content="<?=$description?>" /><?php } ?>

  <?php if (isset($url)) { ?><meta property="og:url" content="<?=$url?>" /><?php } ?>

  <?php if (isset($avatar)) { ?><meta property="og:image" content="<?=$avatar?>" /><?php } ?>

  <meta property="og:site_name" content="VSR" />
  <meta name="twitter:card" content="summary_large_image" />
  <?php if (isset($url)) { ?><meta name="twitter:description" content="<?=$description?>" /><?php } ?>

  <meta name="twitter:title" content="<?php if (isset($title)){ echo $title; } ?>" />
  <?php if (isset($avatar)) { ?><meta name="twitter:image" content="<?=$avatar?>" /><?php } ?>

  <?php if(get_option('favicon') != ''){ ?>
  <link href="<?php echo base_url('uploads/company/'.get_option('favicon')); ?>" rel="shortcut icon">
  <?php } ?>
  <?php if(!isset($exclude_reset_css)){ ?>
  <?php echo app_stylesheet('assets/css','reset.css'); ?>
  <?php } ?>
  <!-- FAVICON -->
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/jquery-ui.css')?>">
  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i%7CMontserrat:600,800" rel="stylesheet">
  <!-- FONT AWESOME -->
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/fontawesome-all.min.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/font-awesome.min.css')?>">
  <!-- Slider Revolution CSS Files -->
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/css/settings.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/css/layers.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/revolution/css/navigation.css')?>">
  <!-- ARCHIVES CSS -->
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/animate.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/magnific-popup.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/lightcase.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/owl.carousel.min.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/bootstrap.css')?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/themes/' . active_clients_theme() .'/css/styles.css')?>">
  <?php do_action('app_customers_head',array('language'=>$language)); ?>
</head>

<body<?php if (!isset($home)) echo ' class="inner-pages"'; ?>>
  <!-- START SECTION HEADINGS -->
  <div class="header">
    <div class="header-top">
      <div class="container">
        <div class="top-info hidden-sm-down">
          <div class="call-header">
            <p><i class="fa fa-phone" aria-hidden="true"></i> (84) 0999 999 999</p>
          </div>
          <div class="address-header">
            <p><i class="fa fa-map-marker" aria-hidden="true"></i> Ha Noi, Viet Nam</p>
          </div>
          <div class="mail-header">
            <p><i class="fa fa-envelope" aria-hidden="true"></i> info@vsr.vn</p>
          </div>
        </div>
        <div class="top-social hidden-sm-down">
          <div class="social-icons-header">
            <div class="social-icons">
              <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
              <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
              <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
            </div>
          </div>
          <?php if (!is_client_logged_in()):?>
          <div class="login-wrap">
            <ul class="d-flex">
              <li><a href="<?=site_url()?>.clients/login"><i class="fa fa-user"></i> Đăng nhập</a></li>
              <li><a href="<?=site_url()?>.clients/register"><i class="fa fa-sign-in"></i> Đăng ký</a></li>
            </ul>
          </div>
          <?php else: ?>
          <div class="dropdown">
            <button class="btn-dropdown dropdown-toggle" type="button" id="dropdownlang" data-toggle="dropdown" aria-haspopup="true">
              <i class="fa fa-user-o"></i> Quản lý tài khoản
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownlang">
              <li><a href="<?=site_url()?>clients/profile"><i class="fa fa-user"></i> <?=_l('clients_nav_profile');?></a></li>
              <li><a href="<?php echo site_url('clients/company'); ?>"><i class="fa fa-building"></i> <?php echo _l('client_company_info'); ?></a></li>
              <li><a href="<?=site_url()?>clients/logout"><i class="fa fa-sign-out"></i> <?=_l('clients_nav_logout');?></a></li>
            </ul>
          </div>
        <?php endif;?>
        </div>
      </div>
    </div>
    <div class="header-bottom heading sticky-header" id="heading">
      <div class="container">
        <a href="/" class="logo">
          <img src="<?php echo base_url('assets/themes/' . active_clients_theme() .'/images/logo.svg')?>" alt="realhome">
        </a>
        <button type="button" class="search-button" data-toggle="collapse" data-target="#bloq-search" aria-expanded="false">
          <i class="fa fa-search" aria-hidden="true"></i>
        </button>
        <div class="get-quote hidden-lg-down">
          <a href="/#tim-nha-dat">
            <p>Tìm nhà đất</p>
          </a>
        </div>
        <button type="button" class="button-menu hidden-lg-up" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
          <i class="fa fa-bars" aria-hidden="true"></i>
        </button>

        <form action="#" id="bloq-search" class="collapse">
          <div class="bloq-search">
            <input type="text" placeholder="Nhập từ khóa cần tìm ...">
            <input type="submit" value="Tìm kiếm">
          </div>
        </form>

        <nav id="main-menu" class="collapse">
          <ul>
            <li>
              <a class="active" href="/">Trang chủ</a>
            </li>

            <li>
              <a href="/gioi-thieu">Giới thiệu</a>
            </li>
            
            <!-- STAR COLLAPSE MOBILE MENU -->
            <li class="hidden-lg-up">
              <div class="po">
                <a data-toggle="collapse" href="#phu-quoc" aria-expanded="false">Phú Quốc</a>
              </div>
              <div class="collapse" id="phu-quoc">
                <div class="card card-block">
                  <a class="dropdown-item" href="/danh-muc-luat-dac-khu/phu-quoc">Luật đặc khu</a>
                  <a class="dropdown-item" href="/vi-tri/phu-quoc">Dự án</a>
                  <a class="dropdown-item" href="/danh-muc-tin-tuc/phu-quoc">Tin tức</a>
                </div>
              </div>
            </li>
            <!-- END COLLAPSE MOBILE MENU -->
            <li class="dropdown hidden-md-down">
              <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Phú Quốc</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="/danh-muc-luat-dac-khu/phu-quoc">Luật đặc khu</a>
                <a class="dropdown-item" href="/vi-tri/phu-quoc">Dự án</a>
                <a class="dropdown-item" href="/danh-muc-tin-tuc/phu-quoc">Tin tức</a>
              </div>
            </li>
            
            <!-- STAR COLLAPSE MOBILE MENU -->
            <li class="hidden-lg-up">
              <div class="po">
                <a data-toggle="collapse" href="#van-don" aria-expanded="false">Vân Đồn</a>
              </div>
              <div class="collapse" id="van-don">
                <div class="card card-block">
                  <a class="dropdown-item" href="/danh-muc-luat-dac-khu/van-don">Luật đặc khu</a>
                  <a class="dropdown-item" href="/vi-tri/van-don">Dự án</a>
                  <a class="dropdown-item" href="/danh-muc-tin-tuc/van-don">Tin tức</a>
                </div>
              </div>
            </li>
            <!-- END COLLAPSE MOBILE MENU -->
            <li class="dropdown hidden-md-down">
              <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Vân đồn</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="/danh-muc-luat-dac-khu/van-don">Luật đặc khu</a>
                <a class="dropdown-item" href="/vi-tri/van-don">Dự án</a>
                <a class="dropdown-item" href="/danh-muc-tin-tuc/van-don">Tin tức</a>
              </div>
            </li>

            <li class="hidden-lg-up">
              <div class="po">
                <a data-toggle="collapse" href="#bac-van-phong" aria-expanded="false">Bắc Vân Phong</a>
              </div>
              <div class="collapse" id="bac-van-phong">
                <div class="card card-block">
                  <a class="dropdown-item" href="/danh-muc-luat-dac-khu/bac-van-phong">Luật đặc khu</a>
                  <a class="dropdown-item" href="/vi-tri/bac-van-phong">Dự án</a>
                  <a class="dropdown-item" href="/danh-muc-tin-tuc/bac-van-phong">Tin tức</a>
                </div>
              </div>
            </li>
            <!-- END COLLAPSE MOBILE MENU -->
            <li class="dropdown hidden-md-down">
              <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Bắc Vân Phong</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="/danh-muc-luat-dac-khu/bac-van-phong">Luật đặc khu</a>
                <a class="dropdown-item" href="/vi-tri/bac-van-phong">Dự án</a>
                <a class="dropdown-item" href="/danh-muc-tin-tuc/bac-van-phong">Tin tức</a>
              </div>
            </li>

            <li><a href="/lien-he">Liên hệ</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
